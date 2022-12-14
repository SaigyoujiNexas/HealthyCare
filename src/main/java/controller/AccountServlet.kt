package controller

import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.HttpServlet
import jakarta.servlet.http.HttpServletRequest
import jakarta.servlet.http.HttpServletResponse
import service.AccountService
import util.BaseResponse
import util.MoshiUtil.toJson
import util.RequestStatus

@WebServlet(name = "/AccountServlet", urlPatterns = ["/AccountServlet"])
class AccountServlet: HttpServlet() {
    override fun doPost(req: HttpServletRequest, resp: HttpServletResponse) {
        println("Register module get request")
        val type = req.getParameter("action")
        resp.setHeader("Access-Control-Allow-Origin", "*")
        resp.contentType = "text/html;charset=utf-8"
        when(type.trim()) {
            "login" -> {
                login(req, resp)
            }

            "register" -> {
                register(req, resp)
            }

            else -> {

            }
        }
    }
    private fun register(req: HttpServletRequest, resp: HttpServletResponse){
        println("Register")
        req.apply {
            val name = getParameter("name")
            println("register name is $name")
            val response = getParameter("type").let { registerType ->
                val (tel, email) = when (registerType) {
                    "tel" -> Pair(getParameter("tel"), null)
                    "email" -> Pair(null, getParameter("email"))
                    else -> Pair(null, null)
                }
                val password = getParameter("password")

                AccountService().register(name = name, tel = tel, email = email, password = password).let {
                    when (it) {
                        is RequestStatus.Success<*> -> BaseResponse(
                            code = 200,
                            data = it.message,
                            message = "register success"
                        )
                        is RequestStatus.Failed<*>-> BaseResponse(code = 500, data = it.message, message = "注册失败")
                    }.toJson()
                }
            }
            println(response)
            resp.writer.apply {
                write(response)
                close()
            }
        }
    }

    private fun login(req: HttpServletRequest, resp: HttpServletResponse){
        println("Login")
        val account = req.getParameter("account")
        val password  = req.getParameter("password")
        resp.contentType = "text/html;charset=utf-8"

        val res = AccountService().login(account, password).let {
            when (it) {
                is RequestStatus.Success<*> -> {
                    BaseResponse(code = 200, data =it.message, message = "login success")
                }

                is RequestStatus.Failed<*> -> {
                    BaseResponse(code = 500, data = it.message, message = "login failed")
                }
            }
        }
        val ans = res.toJson()
        resp.writer.apply {
            write(ans)
            close()
        }
    }
}
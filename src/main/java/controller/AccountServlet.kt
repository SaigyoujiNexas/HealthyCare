package controller

import com.sun.jna.platform.win32.Advapi32Util.Account
import jakarta.servlet.annotation.WebServlet
import jakarta.servlet.http.HttpServlet
import jakarta.servlet.http.HttpServletRequest
import jakarta.servlet.http.HttpServletResponse
import service.AccountService
import util.BaseResponse
import util.MoshiUtil.toJson
import util.RequestStatus
import java.util.Hashtable
import java.util.concurrent.locks.ReentrantLock
@WebServlet(name = "/AccountServlet", urlPatterns = ["/AccountServlet"])
class AccountServlet: HttpServlet() {
    override fun doPost(req: HttpServletRequest, resp: HttpServletResponse) {
        val type = req.getParameter("type")
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
        req.apply {
            val name = getParameter("name")
            val response = getParameter("register_type").let { registerType ->
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
                        is RequestStatus.Failed<*>-> BaseResponse(code = 500, data = it.message, message = "register failed")
                    }.toJson()
                }
            }
            resp.writer.apply {
                write(response)
                close()
            }
        }
    }
    private fun login(req: HttpServletRequest, resp: HttpServletResponse){
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
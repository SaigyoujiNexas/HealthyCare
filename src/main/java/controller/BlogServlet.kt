package controller

import entity.Blog
import jakarta.servlet.http.HttpServlet
import jakarta.servlet.http.HttpServletRequest
import jakarta.servlet.http.HttpServletResponse
import service.BlogService
import util.BaseResponse
import util.MoshiUtil.toJson
import util.RequestStatus
import java.text.SimpleDateFormat
import java.util.*
import javax.xml.parsers.DocumentBuilderFactory

class BlogServlet: HttpServlet() {


    override fun doGet(req: HttpServletRequest, resp: HttpServletResponse) {
        super.doGet(req, resp)
    }


    override fun doPost(req: HttpServletRequest, resp: HttpServletResponse) {
        val type = req.getParameter("type")
        resp.setHeader("Access-Control-Allow-Origin", "*")
        resp.contentType  = "text/html;charset=utf-8"
        when(type.trim()){
            "search" -> search(req, resp)
            "add" -> add(req, resp)
            else -> {}
        }
    }
    private fun search(req: HttpServletRequest, resp: HttpServletResponse){
        val key = req.getParameter("key")
        resp.writer.apply {
            var res = BlogService().search(key).let {
                when(it){
                    is RequestStatus.Failed<*> -> BaseResponse(code = 500, message = "添加失败", data = it.message)
                    is RequestStatus.Success<*> -> BaseResponse(code = 200, message = "添加成功", data = it.message)
                }
            }.toJson()
            write(res)
            close()
        }
    }

    private fun add(req: HttpServletRequest, resp: HttpServletResponse){
        val (blog, token) = req.run {
            Pair(Blog(
                doctor_id = getParameter("doctor_id").toInt(),
                content = getParameter("content"),
                title = getParameter("title"),
                title_image = getParameter("title_image"),
                post_time = SimpleDateFormat("yyyy-MM-dd").format(Date(System.currentTimeMillis())),
                type = when(getParameter("blog_type")){
                    "text" -> 0;"video" -> 1;"audio" -> 2;else -> -1
                }), getHeader("token")
            )
        }
        val res = BlogService().run {
            add(blog, token).let {
                when(it){
                    is RequestStatus.Success<*> -> BaseResponse(code = 200, message = "添加成功", data = it.message)
                    is RequestStatus.Failed<*> -> BaseResponse(code = 500, message = "添加失败", data = it.message)
                }
            }
        }.toJson()
        resp.writer.apply {
            write(res)
            close()
        }
    }
}
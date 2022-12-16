package controller;

import com.google.gson.Gson;
import com.squareup.moshi.Types;
import entity.Department;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.DepartmentService;
import util.BaseResponse;
import util.MoshiUtil;
import util.RequestStatus;
import util.Response;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "DepartmentServlet", urlPatterns = {"/DepartmentServlet"})
public class DepartmentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setHeader("Access-Control-Allow-Origin", "*");
        resp.setContentType("text/html;charset=utf-8");
        switch (req.getParameter("action")){
            case "getAll" -> getAll(req, resp);
            default -> {}
        }
    }
    private void getAll(HttpServletRequest req, HttpServletResponse resp){
        var service = new DepartmentService();
        var res = service.getAllDepartments();
        var ret = Response.INSTANCE.createResponse(res);
        var json = new Gson().toJson(ret);
        System.out.println(json);
        try(var out = resp.getWriter()){
            out.write(json);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}

package controller;

import com.google.gson.Gson;
import entity.ShopCard;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ShopCardService;
import util.BaseResponse;
import util.MoshiUtil;
import util.RequestStatus;
import util.Response;

import java.io.IOException;

@WebServlet(name = "ShopCardServlet", urlPatterns = {"/ShopCardServlet"})
public class ShopCardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)throws ServletException, IOException{
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
        var type = req.getParameter("action");
        resp.setHeader("Access-Control-Allow-Origin", "*");
        resp.setContentType("text/html;charset=utf-8");
        switch (type){
            case "search" -> search(req, resp);
            case "add" -> add(req, resp);
            default -> {}
        }
    }
    private void add(HttpServletRequest req, HttpServletResponse resp){
        var itemId = Integer.parseInt(req.getParameter("item_id"));
        var num = Integer.parseInt(req.getParameter("num"));
        var token = req.getHeader("token");
        var shopCardService = new ShopCardService();
        var shopCard = new ShopCard(-1, itemId, "", num, "", "", "", "", 1);
        var status = shopCardService.addShopCard(shopCard, token);
        var res = Response.INSTANCE.createResponse(status);
        assert (res != null);
        var adapter = MoshiUtil.INSTANCE.getMoshiInstance().adapter(BaseResponse.class);
        var json = adapter.toJson(res);
        try(var out = resp.getWriter()){
            out.write(json);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    private void search(HttpServletRequest req, HttpServletResponse resp){
        var token = req.getHeader("token");
        var service = new ShopCardService();
        var status = service.getShopCard(token);
        var res = Response.INSTANCE.createResponse(status);
        assert(res != null);
        var json = new Gson().toJson(res);
        System.out.println(json);
        try(var out = resp.getWriter()){
            out.write(json);
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}

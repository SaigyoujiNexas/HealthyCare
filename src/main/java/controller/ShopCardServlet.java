package controller;

import entity.ShopCard;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.ShopCardService;
import service.impl.MerchandiseServiceImpl;
import util.BaseResponse;
import util.MoshiUtil;
import util.RequestStatus;

import java.io.IOException;

@WebServlet(name = "ShopCardServlet", urlPatterns = {"/ShopCardServlet"})
public class ShopCardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
        var res = switch (status){
            case RequestStatus.Success<?> suc ->new BaseResponse<>(200, suc, "车工");
            case RequestStatus.Failed<?> fai-> new BaseResponse<>(500, fai, "");
            default -> null;
        };
        assert (res != null);
        var adapter = MoshiUtil.INSTANCE.getMoshiInstance().adapter(BaseResponse.class);
        var json = adapter.toJson(res);
    }
    private void search(HttpServletRequest req, HttpServletResponse resp){

    }
}

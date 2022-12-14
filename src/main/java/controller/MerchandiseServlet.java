package controller;


import entity.Merchandise;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.MerchandiseService;
import service.impl.MerchandiseServiceImpl;
import java.io.IOException;
import java.util.List;

public class MerchandiseServlet extends BaseServlet {

    private MerchandiseService merchandiseService = new MerchandiseServiceImpl();

    protected void getMerchandise(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String select = req.getParameter("search-field");
        Merchandise merchandises = merchandiseService.queryMerchandiseByName(select);
        req.setAttribute("merchandises", merchandises) ;
        req.setAttribute("option", 1) ;
        req.getRequestDispatcher("/shop.jsp").forward(req,resp);
    }
    protected void list(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1 通过BookService查询全部图书
        List<Merchandise> merchandises = merchandiseService.queryMerchandises();
        //2 把全部图书保存到Request域中
        req.setAttribute("merchandises", merchandises);
        req.setAttribute("option", 0) ;
        //3、请求转发到/pages/manager/book_manager.jsp页面
        req.getRequestDispatcher("/shop.jsp").forward(req,resp);
    }




}

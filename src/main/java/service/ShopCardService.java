package service;

import dao.ShopCardDao;
import entity.Customer;
import entity.ShopCard;
import util.RequestStatus;
import util.TokenMapKt;

import java.util.List;

public class ShopCardService {
    public RequestStatus getShopCard(String token){
        try{
            var dao = new ShopCardDao();
            var customer = getneratTokenCustomer(token);
            var ret = dao.search(customer);
            return new RequestStatus.Success<>(ret);
        }catch (Throwable e){
            return new RequestStatus.Failed<>(e.getLocalizedMessage());
        }
    }

    private Customer getneratTokenCustomer(String token){
        var customerId = Integer.parseInt(TokenMapKt.getTokenMap().getOrDefault(token, "-1"));
        return  new Customer(customerId, "", -1, null, null, null, null, 1, 1000, null);

    }
    public RequestStatus addShopCard(ShopCard shopCard, String token){
        try{
            var dao = new ShopCardDao();
            var customer = getneratTokenCustomer(token);
            var ret = dao.add(customer, shopCard);
            if(ret == -1) return new RequestStatus.Failed<>("添加失败");
            return new RequestStatus.Success<>("添加成功");
        }catch (Throwable e){
            return new RequestStatus.Failed<>(e.getLocalizedMessage());
        }
    }
}

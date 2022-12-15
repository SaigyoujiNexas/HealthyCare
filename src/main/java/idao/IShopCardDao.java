package idao;

import entity.Customer;
import entity.ShopCard;

import java.util.LinkedList;
import java.util.List;

public interface IShopCardDao {
    public List<ShopCard> search(Customer customer) throws Exception;
    public int add(Customer customer, ShopCard shopCard) throws Exception;
    public int remove(Customer customer, List<ShopCard> shopCards) throws Exception;
    public int update(Customer customer, ShopCard shopCard)throws Exception;

}

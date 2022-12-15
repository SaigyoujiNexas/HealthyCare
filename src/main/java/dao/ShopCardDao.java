package dao;

import entity.Customer;
import entity.ShopCard;
import idao.IShopCardDao;
import util.DBUtil;

import java.util.LinkedList;
import java.util.List;

public class ShopCardDao implements IShopCardDao {
    @Override
    public List<ShopCard> search(Customer customer) throws Exception
    {
        var sql = "select * from shopcard_view where cus_id = " + customer.getCustomer_id();
        var list = new LinkedList<ShopCard>();
        var db = new DBUtil();
        db.openConnection();
        var res = db.execQuery(sql);
        while(res.next()){
            var shopCard = new ShopCard(
                  res.getInt("id"),
                  res.getInt("merchandise_id"),
                  res.getString("merchandise_name"),
                  res.getInt("num"),
                  String.valueOf(res.getDouble("price")),
                  res.getString("photo"),
                  res.getString("effect"),
                  res.getString("description"),
                  res.getInt("status")
            );
            list.add(shopCard);
        }
        return list;
    }

    @Override
    public int add(Customer customer, ShopCard shopCard) {
        return 0;
    }

    @Override
    public int remove(Customer customer, List<ShopCard> shopCards) {
        return 0;
    }

    @Override
    public int update(Customer customer, ShopCard shopCard) {
        return 0;
    }
}

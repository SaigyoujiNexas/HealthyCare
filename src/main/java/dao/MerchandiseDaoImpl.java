package dao;

import entity.Merchandise;
import idao.MerchandiseDao;

import java.util.List;

public class MerchandiseDaoImpl extends BaseDao implements MerchandiseDao {
    @Override
    public int addMerchandise(Merchandise merchandise) {
        String sql = "insert into merchandise(`item_name`,`item_price`,`effect`,`description`,`status`) values(?,?,?,?,?)";

        return update(sql,merchandise.getItem_name(),merchandise.getItem_price(),merchandise.getEffect(),merchandise.getDescription(),merchandise.getStatus());
    }

    @Override
    public int deleteMerchandiseById(Integer id) {
        String sql = "delete from merchandise where item_id = ?";
        return update(sql, id);
    }

    @Override
    public int updateMerchandise(Merchandise merchandise) {
        String sql = "update merchandise set `item_name`=?,`item_price`=?,`effect`=?,`description`=?,`status`=? where item_id = ?";
        return update(sql,merchandise.getItem_name(),merchandise.getItem_price(),merchandise.getEffect(),merchandise.getDescription(),merchandise.getStatus(),merchandise.getItem_id());
    }

    @Override
    public Merchandise queryMerchandiseById(Integer id) {
        String sql = "select `item_id` , `item_name` , `item_price` , `effect` , `description` , `status` from merchandise where item_id = ?";
        return queryForOne(Merchandise.class,sql,id);
    }

    @Override
    public List<Merchandise> queryMerchandises() {
        String sql = "select `item_id` , `item_name` , `item_price` , `effect` , `description` , `status` from merchandise";
        return queryForList(Merchandise.class,sql);
    }

    @Override
    public Merchandise queryMerchandiseByName(String name) {
        String sql = "select `item_id` , `item_name` , `item_price` , `effect` , `description` , `status` from merchandise where item_name = ?";
        return queryForOne(Merchandise.class,sql,name);
    }


}

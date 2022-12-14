package test;

import dao.MerchandiseDaoImpl;
import entity.Merchandise;
import org.junit.Test;

import java.math.BigDecimal;
import java.util.List;


public class MerchandiseDaoImplTest extends MerchandiseDaoImpl {

    @Test
    public void testAddMerchandise() {
        MerchandiseDaoImpl merchandiseDao = new MerchandiseDaoImpl();
        Merchandise merchandise = new Merchandise(3,"1",new BigDecimal(9999),"12","111",1);
        int i = merchandiseDao.addMerchandise(merchandise);
        System.out.println(i);
    }

    @Test
    public void testDeleteMerchandiseById() {
        MerchandiseDaoImpl merchandiseDao = new MerchandiseDaoImpl();
        int i = merchandiseDao.deleteMerchandiseById(3);
        System.out.println(i);
    }

    @Test
    public void testUpdateMerchandise() {
        MerchandiseDaoImpl merchandiseDao = new MerchandiseDaoImpl();
        Merchandise merchandise = new Merchandise(2,"1",new BigDecimal(9999),"12","111",1);
        int i = merchandiseDao.updateMerchandise(merchandise);
        System.out.println(i);
    }

    @Test
    public void testQueryMerchandiseById() {
        MerchandiseDaoImpl merchandiseDao = new MerchandiseDaoImpl();
        Merchandise merchandise = merchandiseDao.queryMerchandiseById(1);
        System.out.println(merchandise);
    }

    @Test
    public void testQueryMerchandises() {
        MerchandiseDaoImpl merchandiseDao = new MerchandiseDaoImpl();
        List<Merchandise> merchandises = merchandiseDao.queryMerchandises();
        System.out.println(merchandises);
    }

    @Test
    public void testQueryMerchandiseByName() {
        MerchandiseDaoImpl merchandiseDao = new MerchandiseDaoImpl();
        Merchandise merchandise = merchandiseDao.queryMerchandiseByName("ddv");
        System.out.println(merchandise);
    }
}
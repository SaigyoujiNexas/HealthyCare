import dao.MerchandiseDaoImpl;
import entity.Merchandise;
import org.junit.Test;
import service.impl.MerchandiseServiceImpl;

import java.math.BigDecimal;
import java.util.List;

public class MerchandiseServiceImplTest extends MerchandiseDaoImpl {

    @Test
    public void testAddMerchandise() {
        MerchandiseServiceImpl merchandiseService = new MerchandiseServiceImpl();
        Merchandise merchandise = new Merchandise(3,"1",new BigDecimal(9999),"12","111",1);
        merchandiseService.addMerchandise(merchandise);
    }

    @Test
    public void deleteMerchandise() {
        MerchandiseServiceImpl merchandiseService = new MerchandiseServiceImpl();
        merchandiseService.deleteMerchandise(4);
    }

    @Test
    public void testUpdateMerchandise() {
        MerchandiseServiceImpl merchandiseService = new MerchandiseServiceImpl();
        Merchandise merchandise = new Merchandise(1,"1",new BigDecimal(9999),"12","111",1);
        merchandiseService.updateMerchandise(merchandise);
    }

    @Test
    public void queryMerchandise() {
        MerchandiseServiceImpl merchandiseService = new MerchandiseServiceImpl();
        Merchandise merchandise = merchandiseService.queryMerchandise(1);
        System.out.println(merchandise);
    }

    @Test
    public void testQueryMerchandises() {
        MerchandiseServiceImpl merchandiseService = new MerchandiseServiceImpl();
        List<Merchandise> merchandises = merchandiseService.queryMerchandises();
        System.out.println(merchandises);
    }

    @Test
    public void testQueryMerchandiseByName() {
        MerchandiseServiceImpl merchandiseService = new MerchandiseServiceImpl();
        Merchandise ddv = merchandiseService.queryMerchandiseByName("ddv");
        System.out.println(ddv);
    }
}
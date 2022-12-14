package service.impl;




import dao.MerchandiseDaoImpl;
import entity.Merchandise;
import idao.MerchandiseDao;
import service.MerchandiseService;

import java.util.List;

public class MerchandiseServiceImpl implements MerchandiseService {
    private MerchandiseDao merchandiseDao = new MerchandiseDaoImpl();
    @Override
    public void addMerchandise(Merchandise merchandise) {
        merchandiseDao.addMerchandise(merchandise);
    }

    @Override
    public void deleteMerchandise(Integer id) {
        merchandiseDao.deleteMerchandiseById(id);
    }

    @Override
    public void updateMerchandise(Merchandise merchandise) {
        merchandiseDao.updateMerchandise(merchandise);
    }

    @Override
    public Merchandise queryMerchandise(Integer id) {
        Merchandise merchandise = merchandiseDao.queryMerchandiseById(id);
        return merchandise;
    }

    @Override
    public List<Merchandise> queryMerchandises() {
        List<Merchandise> merchandises = merchandiseDao.queryMerchandises();
        return merchandises;
    }

    @Override
    public Merchandise queryMerchandiseByName(String name) {
        Merchandise merchandise = merchandiseDao.queryMerchandiseByName(name);
        return merchandise;
    }
}

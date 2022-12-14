package service;


import entity.Merchandise;


import java.util.List;

public interface MerchandiseService {
    public void addMerchandise(Merchandise merchandise);

    public void deleteMerchandise(Integer id);

    public void updateMerchandise(Merchandise merchandise);

    public Merchandise queryMerchandise(Integer id);

    public List<Merchandise> queryMerchandises();

    public Merchandise queryMerchandiseByName(String name);
}

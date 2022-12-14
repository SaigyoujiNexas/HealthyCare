package idao;

import entity.Merchandise;
import java.util.List;

public interface MerchandiseDao {
    public int addMerchandise(Merchandise merchandise);

    public int deleteMerchandiseById(Integer id);

    public int updateMerchandise(Merchandise merchandise);

    public Merchandise queryMerchandiseById(Integer id);

    public List<Merchandise> queryMerchandises();

    public Merchandise queryMerchandiseByName(String name);

//    Integer queryForPageTotalCount();
//
//    List<Book> queryForPageItems(int begin, int pageSize);
//
//    Integer queryForPageTotalCountByPrice(int min, int max);
//
//    List<Book> queryForPageItemsByPrice(int begin, int pageSize, int min, int max);
}

package dao

class DaoFactory {
    val shopCardDao: ShopCardDao by lazy{
        ShopCardDao()
    }

}
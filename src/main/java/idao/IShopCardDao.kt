package idao

import entity.ShopCard

interface IShopCardDao {
    fun insert(item: ShopCard): Int
    fun delete(item: ShopCard): Int
    fun delete(id: Int): Int
    fun update(item: ShopCard): Int
    fun select(name: String): List<ShopCard>
}
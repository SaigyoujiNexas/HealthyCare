package dao

import entity.Customer
import entity.ShopCard
import idao.IShopCardDao
import util.DBUtil
import java.util.*

class ShopCardDao : IShopCardDao {
    @Throws(Exception::class)
    override fun search(customer: Customer): List<ShopCard> {
        val sql = "select * from shopcard_view where cus_id = " + customer.customer_id
        val list = LinkedList<ShopCard>()
        val db = DBUtil()
        db.openConnection()
        val res = db.execQuery(sql)
        while (res.next()) {
            val shopCard = ShopCard(
                id = res.getInt("id"),
                merchandise_id = res.getInt("merchandise_id"),
                merchandise_name = res.getString("merchandise_name"),
                num = res.getInt("num"), res.getDouble("item_price").toString(),
                photo = "",
                effect = res.getString("effect"),
                description = res.getString("description"),
                status = res.getInt("status")
            )
            list.add(shopCard)
        }
        res.close()
        return list
    }

    override fun add(customer: Customer, shopCard: ShopCard): Int {
        return 0
    }

    override fun remove(customer: Customer, shopCards: List<ShopCard>): Int {
        return 0
    }

    override fun update(customer: Customer, shopCard: ShopCard): Int {
        return 0
    }
}
package dao

import entity.Customer
import idao.ICustomerDao
import util.DBUtil

class CustomerDao: ICustomerDao {
    override fun select(account: String, password: String): Customer?{
        try{
            val sql = "SELECT * FROM customer WHERE (cus_name = '$account' OR telnum = '$account' OR email = '$account') AND pwd = '$password'"
            val db = DBUtil()
            db.openConnection()
            val result = db.execQuery(sql)
            if(result.first()){
                return result.run{
                    Customer(
                        customer_id = getInt("cus_id"),
                        customer_name = getString("cus_name"),
                        gender = getInt("gender"),
                        email =  getString("email")
                    ).also{close()}
                }
            }else{
                db.close()
                return null
            }
        }catch (e: Throwable){
            e.printStackTrace()
            return null
        }
    }

    override fun select(customer_name: String): List<Customer> {
    return emptyList()
    }

    override fun insert(customer: Customer): Int{
        val sql = customer.run {
            "INSERT INTO customer (cus_name, telnum, email, pwd) " +
                    "values('$customer_name', ${tel?.let { "'$it'" }?:"null"}, ${email?.let { "'$it'" }?:"null"}, '$password')"
        }
        DBUtil().apply {
            openConnection()
            return getInsertObjectIDs(sql).let{
                    if (it.first()) {close(); it.getInt(1)}
                    else {close(); -1}
                }
        }
    }

    override fun delete(customerId: Int): Int {
    return 0;
    }

    override fun update(customer: Customer): Int {
    return 0;
    }
}

package dao;

import entity.Department;
import idao.IDepartmentDao;
import util.DBUtil;

import java.util.LinkedList;
import java.util.List;

public class DepartmentDao implements IDepartmentDao  {
    @Override
    public int add(Department department) throws Exception{
        var sql = "insert into department (department_name, department_description, department_image)" +
                "values ('" + department.name() + "', '" + department.description() + "','" + department.image() +"')";
        var db = new DBUtil();
        db.openConnection();
        var rst = db.getInsertObjectIDs(sql);
        if(rst.first()){
            db.close();
            return rst.getInt(1);
        }
        db.close();
        return -1;
    }

    @Override
    public int delete(Department department)throws Exception {
        return 0;
    }

    @Override
    public List<Department> select(String key)throws Exception {
        var sql = switch (key.trim()){
            case "" -> "select * from department";
            default -> "select * from department where department_name like '" + key + "'";
        };
        var db = new DBUtil();
        db.openConnection();
        var rst = db.execQuery(sql);
        var ret = new LinkedList<Department>();
        while(rst.next()){
            var department = new Department(
                    rst.getInt("department_id"),
                    rst.getString("department_name"),
                    rst.getString("department_description"),
                    rst.getString("department_image")
            );
            ret.add(department);
        }
        db.close();
        return ret;
    }

    @Override
    public int update(Department department)throws Exception {
        return 0;
    }
}

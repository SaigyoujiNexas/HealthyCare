package idao;

import entity.Department;

import java.util.List;

public interface IDepartmentDao {
    public int add(Department department) throws Exception;
    public int delete(Department department)throws Exception;
    public List<Department> select(String key)throws Exception;
    public int update(Department department) throws Exception;
}

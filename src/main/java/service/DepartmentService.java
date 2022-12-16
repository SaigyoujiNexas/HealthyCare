package service;

import dao.DepartmentDao;
import entity.Department;
import util.RequestStatus;

import java.util.List;

public class DepartmentService {
    public RequestStatus getAllDepartments(){
        try{
            var dao = new DepartmentDao();
            var ret = dao.select("");
            return new RequestStatus.Success<>(ret);
        }catch (Exception e){
            e.printStackTrace();
            return new RequestStatus.Failed<>(e.getLocalizedMessage());
        }
    }
}

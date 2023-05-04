package ems_spring_mvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import org.springframework.stereotype.Component;

import ems_spring_mvc.dto.Employee;

@Component
public class EmployeeDao {


	EntityManagerFactory factory=Persistence.createEntityManagerFactory("sigma");
	EntityManager manager=factory.createEntityManager();
	EntityTransaction transaction=manager.getTransaction();
	
	public void saveEmployee(Employee employee) {
		transaction.begin();
		manager.persist(employee);
		transaction.commit();
	}
	public Employee getEmployee(int id) {
		return manager.find(Employee.class, id);
	}

	public List<Employee> getAllEmployees() {
	Query query=manager.createQuery("select e from Employee e");
	List<Employee> employees=query.getResultList();
	return employees;
	}
	public void updateEmployee(Employee employee) {
		transaction.begin();
		manager.merge(employee);
		transaction.commit();
	}
	public void deleteEmployee(int id) {
		transaction.begin();
		manager.remove(manager.find(Employee.class, id));
		transaction.commit();
	}
}

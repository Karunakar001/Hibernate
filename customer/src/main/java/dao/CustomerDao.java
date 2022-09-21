package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.Customer;

public class CustomerDao {

	static EntityManagerFactory emf=Persistence.createEntityManagerFactory("servlet");
	static EntityManager em;
	static EntityTransaction et;
	
	public Customer saveCustomer(Customer customer)
	{
		em=emf.createEntityManager();
		et=em.getTransaction();
		et.begin();
		em.persist(customer);
		et.commit();
		return customer;
		
	}
	
	public List<Customer> listAllObject()
	{
		em=emf.createEntityManager();
		String query="Select c from Customer c";
		Query q=em.createQuery(query);
		List<Customer> list=q.getResultList();
		return list;
		
	}
	
	public void deleteCustomer(int id)
	{
		em=emf.createEntityManager();
		et=em.getTransaction();
		Customer c=em.find(Customer.class, id);
		
		if(c!=null)
		{
			et.begin();
			em.remove(c);
			et.commit();
		}
		else
		{
			System.out.println("Id doesn't exist");
		}
	}
}

package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;



import dto.Customer;

public class Customerdao {

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
		@SuppressWarnings("unchecked")
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
	public Customer updateStudentName(int id,String name) {
		em = emf.createEntityManager();
		et = em.getTransaction();
		Customer c = em.find(Customer.class, id);
		//Student s2 = em.find(Student.class, s.getStudId());
		if(c!=null)
		{
			c.setName(name);
			et.begin();
			em.merge(c);
			et.commit();
		}
		return c;
		
	}
	public Customer updateStudentEmail(int id,String email) {
		em = emf.createEntityManager();
		et = em.getTransaction();
		Customer c = em.find(Customer.class, id);
		//Student s2 = em.find(Student.class, s.getStudId());
		if(c!=null)
		{
			c.setEmail(email);
			et.begin();
			em.merge(c);
			et.commit();
		}
		return c;
		
	}
	public Customer updateStudentCountry(int id,String country) {
		em = emf.createEntityManager();
		et = em.getTransaction();
		Customer c = em.find(Customer.class, id);
		//Student s2 = em.find(Student.class, s.getStudId());
		if(c!=null)
		{

			c.setNationality(country);
			et.begin();
			em.merge(c);
			et.commit();
		}
		return c;
		
	}
	
}

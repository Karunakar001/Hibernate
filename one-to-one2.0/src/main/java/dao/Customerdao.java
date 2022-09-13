package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import dto.Customer;

public class Customerdao {

	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("customer_hw");
	static EntityManager em = emf.createEntityManager();
	static EntityTransaction et = em.getTransaction();

	public Customer saveCustomer(Customer c) {
		if (c != null) {
			et.begin();
			em.persist(c);
			et.commit();
			System.out.println("---------------------------Data Saved----------------------------------");
		} else {
			System.out.println("please set data to customer");
		}
		return c;
	}

	public void updateCustomer(Customer c, int id) {
		Customer cus = em.find(Customer.class, id);

		if (cus != null) {
			cus.setMail(c.getMail());
			et.begin();
			em.merge(cus);
			et.commit();
			System.out.println("---------------------------Data Saved----------------------------------");
		} else {
			System.out.println("Customer by id :" + id + "doesn't exist");
		}

	}

	public Customer deleteById(int id) {
		Customer c = em.find(Customer.class, id);
		if (c != null) {
			et.begin();
			em.remove(c);
			et.commit();
		} else {
			System.out.println("Id by value: " + id + " doesn't exist");
		}
		return c;
	}
	
	public List<Customer> getAllData()
	{
		String query="select c from Customer c";
		Query q=em.createQuery(query);
		List<Customer> list=q.getResultList();
		return list;
		
	}

}

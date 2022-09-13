package dao;

import java.util.List;
import java.util.Scanner;

import dto.Customer;

public class CustomerApp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Scanner scan=new Scanner(System.in);
		Customer c;
		Customerdao cd=new Customerdao();
		
		while(true)
		{
			System.out.println("Enter the choice\n1.Insertion\n2.Updation\n3.Deletion\n4.Retrieve\n5.Get All\n6.Exit");
			int ch=scan.nextInt();
			switch(ch)
			{
			case 1:
			{
				c=new Customer();
				System.out.println("Enter the values");
				c.setName(scan.next());
				c.setMail(scan.next());
				cd.saveCustomer(c);
				break;
			}
			case 2:
			{
				c=new Customer();
				System.out.println("Enter the id u wnt to update");
				int id=scan.nextInt();
				c.setMail(scan.next());
				cd.updateCustomer(c, id);
				break;
			}
			case 3:
			{
				System.out.println("Enter the id to delete:");
				int id=scan.nextInt();
				cd.deleteById(id);
				break;
			}
			case 4:
			{
				List<Customer> list=cd.getAllData();
				for(Customer cust:list)
				{
					System.out.println(cust.getId()+" "+cust.getMail()+" "+cust.getName()+"\n");
				}
			}break;
			}
		}
		
	}

}

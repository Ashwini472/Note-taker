package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class factoryprovider {
	public static SessionFactory factory;
	
	public static SessionFactory getfactory()
	{
		if(factory==null)
		{
			factory= new Configuration().configure("Hibernate.cfg.xml").buildSessionFactory();
		}
		
		return factory;
		
	}
	public void closefactory()
	{
		if(factory.isOpen())
		{
			factory.close();
		}
	}
	
}

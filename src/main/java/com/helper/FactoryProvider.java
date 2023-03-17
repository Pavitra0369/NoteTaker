package com.helper;

import org.hibernate.SessionFactory;

public class FactoryProvider {
	public static SessionFactory factory;
	
	public static SessionFactory getFactory() {
		
		if (factory==null) {
			factory = com.notetut.HibernateUtil.getSessionFactory();
		}
		return factory;
	}
	public void closeFactory() {
		if (factory.isOpen()) {
			factory.isClosed();
		}
	}
}

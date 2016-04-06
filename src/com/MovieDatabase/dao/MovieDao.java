package com.MovieDatabase.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.MovieDatabase.controller.Movie;

public class MovieDao {
	
	public void addMovie (Movie movie1) {
		
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();

		Transaction tx = session.beginTransaction();
		
		
	      try{
	         session.save(movie1); 
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      
	}
	
	public List<Movie> getMovieList() {
		
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();

		session.beginTransaction();
		
		Criteria criteria = session.createCriteria(Movie.class);
		
		List<Movie> ls = (List<Movie>) criteria.list();
		
		return ls;
	}
}

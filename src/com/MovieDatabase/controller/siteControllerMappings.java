package com.MovieDatabase.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.MovieDatabase.controller.Movie;


@Controller
public class siteControllerMappings {

	@RequestMapping("search")
	public ModelAndView searchByGenre(@RequestParam("genre") String genre) {
		
		ArrayList<Movie> results = new ArrayList<Movie>();
		
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();
		session.beginTransaction();
		
		Criteria criteria = session.createCriteria(Movie.class);
		if(genre.equalsIgnoreCase("all")) {
			Query query = session.createQuery("From Movie");
		}
		else {
		criteria.add(Restrictions.like("genre", genre));
		}
		results = (ArrayList<Movie>) criteria.list();
		
		return new ModelAndView("resultspage", "movieList", results);
	}
	
	
}

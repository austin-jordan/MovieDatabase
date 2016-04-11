<%@page import="com.MovieDatabase.dao.MovieDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.MovieDatabase.controller.Movie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.apache.http.*" %>
<%@ page import="org.apache.http.client.methods.HttpGet" %>
<%@ page import="org.apache.http.impl.client.DefaultHttpClient" %>
<%@ page import="org.apache.http.util.EntityUtils" %>
<%@ page import="org.json.*" %>
<%@ page import="com.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//new Http Client object
	DefaultHttpClient httpclient = new DefaultHttpClient();
	//Hibernate specific implementation for Restaurant Dao that defines methods that we will use in our project.
	MovieDao movieDao = new MovieDao();
	//ArrayList of Restaurants		
	ArrayList<Movie> addMovies = new ArrayList<Movie>();
	
	//looping through the results to get 4 pages of 20 results each		
	for (int c = 0; c <= 80; c += 20) {
		
		HttpGet search = new HttpGet("https://api.themoviedb.org/3/include_all_movies/id/movies"+c);
		search.setHeader(HttpHeaders.CONTENT_TYPE, "application/json");
		search.setHeader("api-key", "d01aaf921cffcbd45e9d7c5d32d82776");
	
		HttpResponse resp = httpclient.execute(search);
	
		String results = EntityUtils.toString(resp.getEntity());
			
		JSONObject jsonResult = new JSONObject(results);
		JSONArray movies = jsonResult.getJSONArray("movies");
	
	for(int i = 0; i < movies.length(); i++) {
		String movieName = movies.getJSONObject(i).getJSONObject("title").getString("title");
		String movieYear = movies.getJSONObject(i).getJSONObject("release_date").getString("year");
		
		addMovies.add(new Movie(movieName, movieYear));
	}
%>
</body>
</html>
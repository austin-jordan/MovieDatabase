<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"
    prefix="fn" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The Movie Database</title>
</head>
<body>
<h2>Welcome to the Movie Database!</h2>
<form action = "search" id = "searchForm" method = "get">
<select name = "genre" required>
	<option selected disabled>Select Genre</option>
	<option value = "action">Action</option>
	<option value = "adventure">Adventure</option>
	<option value = "animated">Animated</option>
	<option value = "comedy">Comedy</option>
	<option value = "documentary">Documentary</option>
	<option value = "drama">Drama</option>
</select>
<!-- <input class = "title" type = "text" name = "title" placeholder = "Title"> -->
<input class = "submit" id = "submit" name = "submit" type = "submit" value = "SEARCH"> 
</form>
</body>
</html>
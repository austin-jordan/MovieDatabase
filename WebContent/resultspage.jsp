<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" 
   prefix="fn" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Results Page</title>
</head>
<body>

<div class = "header-banner">
    <h3>Here are your movies</h3>
      <h4>Which movie would you like to watch today?</h4>
  </div>
  
  <section class = "search-results-container">
    	<div class = "row" id = "view">
    	<div class = "col-md-6" id = "results">
        <ol id = "search-list">
        <c:forEach items= "${movieList}" var="movie">
          <li class = "search-result-li">
          <div class = "row">
              <div class = "col-md-6" id = "movie">
              <h3>${movie.getTitle()} (${movie.getReleaseDate()})</h3>
              </div>
          </div>
          </li>
          </c:forEach>
          </ol>
          </div>
          </div>
  </section>

</body>
</html>
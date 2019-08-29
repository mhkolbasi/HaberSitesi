<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<style type="text/css">



	</style>
	
    	<meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
    <c:import url="/nav"></c:import>
  
<br>
    	<div class="container">
			
			<div class="row">
				<div class="col-sm-7"> 
				
				
				<h2>${data.hbaslik}</h2>
			<img src="${data.hresim}" class="img-fluid mx-auto d-block my-4">
			<p>${data.hdetay}</p>	
			
			
			
				</div>
				      <div class="col-md-5">
        
<a href="https://www.mediamarkt.com.tr/tr/category/_beyaz-e%C5%9Fya-465707.html" target="_blank"><img  class="img-fluid" src="https://picscdn.redblue.de/doi/msh-pixelboxx-512889546/feecms_228_x_x" alt="Reklam Alanı"></a>
 

    </div>

				
			
			
			
        </div></div>
	</body>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</html>

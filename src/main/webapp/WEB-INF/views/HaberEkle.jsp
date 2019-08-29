<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<script>

		function tıkla(){

			confirm("Silmek istediğinizden eminmisiniz.");
	
			}

	</script>
    	<meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
    	<div class="container">
		<div class="row">
			<div class="col-sm-6">
		<h1>Haber Ekle</h1>
		<form action="${ hb !=null ? 'newsEdit' : 'newsInsert' }" method="post">
			<input value="${hb.hbaslik }" name="hbaslik" type="text" class="form-control" placeholder="Haber Baslik" />
			<br/><input value="${hb.hresim }"  name="hresim" type="text" required="required" class="form-control" placeholder="Resim URL" />
			<br/><input value="${hb.hdetay }"  name="hdetay" type="text" class="form-control" placeholder="Haber Detay" />
			<br/><input type="submit" value="Kaydet" class="btn btn-success" />
		</form>
	</div></div>
		  
		  
	<div class="row">
	
		
			<table class="table table-hover">
		  <thead>
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Haber Baslik</th>
		      <th scope="col">Haber Ressim </th>
		      <th scope="col">Haber Detay</th>
		   
		    </tr>
		  </thead>
		  <tbody>
		  
		  <c:if test="${ not empty data }">
		  	<c:forEach items="${ data }" var="item">
			    <tr>
			      <th scope="row">${item.hid }</th>
			      <td>${item.hbaslik }</td>
			     <td> <img src="${item.hresim }" class="img-responsive"> </td>
			      <td>
			 			${item.hdetay }
			      </td>
			      <td>
						<a onclick="tıkla()" href='<s:url value="/delete/${item.hid}"></s:url>' class="btn btn-danger">Sil</a>
					</td>
					  <td>
						<a href='<s:url value="/edit/${item.hid}"></s:url>' class="btn btn-info">Güncelle</a>
					</td>
			    </tr>
			</c:forEach>
		  </c:if>
		  </tbody>
		</table>
		
		
	</div>
        </div>
	</body>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
           <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <nav class="navbar navbar-expand-lg sticky-top navbar-light bg-white border border-secondary border-top-0 border-left-0 border-right-0 ">
    <div class="container">

      <button class="navbar-toggler" type="button"  data-toggle="collapse" data-target="#onediomenuac"><span class="navbar-toggler-icon"></span> </button>
      <a href='<s:url value="/"></s:url>' class="navbar-brand"><img class="logo-hizala" src='<s:url value="/resources/Haber.png"></s:url>'></a>

      <div class="collapse navbar-collapse" id="onediomenuac">

        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a href="#" class="nav-link ustmenu">GÜNDEM</a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ustmenu">GALERİLER</a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ustmenu">VİDEOLAR</a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link ustmenu">TESTLER</a>
          </li>

          <li class="nav-item dropdown">

            <a href="#" class="nav-link dropdown-toggle ustmenu" data-toggle="dropdown">KATEGORİLER</a>


            <div class="dropdown-menu">
              
            
              <a href="#" class="dropdown-item">Ekonomi</a>
              <a href="#" class="dropdown-item">Spor</a>
              <a href="#" class="dropdown-item">Magazin</a>
              <a href="#" class="dropdown-item">Yaşam</a>
              <a href="#" class="dropdown-item">Teknoloji</a>
            </div>

          </li>

          
        </ul>

        <form class="form-inline">

          <input type="text" class="form-control form-control-sm" placeholder="Ara..." name="">
          

        </form>

       

      <a href='<s:url value="/Login"></s:url>' class="nav-link ustmenu">Giriş</a>





      </div>

    </div>
  </nav>
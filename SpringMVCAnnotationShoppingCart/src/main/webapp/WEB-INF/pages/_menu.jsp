<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<%@ page isELIgnored="false" %> 

<link type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.css" rel="stylesheet" />
<script src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.js"></script>
 
 
<div class="menu-container">
  
   <a href="${pageContext.request.contextPath}/">Inicio</a>
   |
   <a href="${pageContext.request.contextPath}/productList">
      Rutas disponibles
   </a>
   |
   <a href="${pageContext.request.contextPath}/shoppingCart">
      Mis reservas
   </a>
   |
   <security:authorize access="hasAnyRole('ROLE_MANAGER','ROLE_EMPLOYEE')">
     <a href="${pageContext.request.contextPath}/orderList">
         Lista de reservas hechas
     </a>
     |
   </security:authorize>
   
   <security:authorize access="hasRole('ROLE_MANAGER')">
         <a href="${pageContext.request.contextPath}/product">
                        Create Product
         </a>
         |
   </security:authorize>
  
</div>
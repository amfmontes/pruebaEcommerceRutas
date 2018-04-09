<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ruta</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles.css">
</head>
<body>
 
   <jsp:include page="_header.jsp" />
   <jsp:include page="_menu.jsp" />
 
   <div class="page-title">Ruta</div>
  
   <c:if test="${not empty errorMessage }">
     <div class="error-message">
         ${errorMessage}
     </div>
   </c:if>
 
   <form:form modelAttribute="productForm" method="POST" enctype="multipart/form-data">
       <table style="text-align:left;">
			<tr>
			<td>Codigo *</td>
			<td style="color:red;">
                  <c:if test="${not empty productForm.code}">
                       <form:hidden path="code"/>
                       ${productForm.code}
                  </c:if>
                  <c:if test="${empty productForm.code}">
                       <form:input path="code" />
                       <form:hidden path="newProduct" />
                  </c:if>
               </td>
				<td><form:errors path="code" class="error-message" /></td>
				</tr>
				<tr>
				<td>Nombre *</td>
				<td><form:input path="name" /></td>
				<td><form:errors path="name" class="error-message" /></td>
				</tr>
				<tr>
				<td>Descripcion *</td>
				<td><form:input path="descripcion" /></td>
				<td><form:errors path="descripcion" class="error-message" /></td>
				</tr>
				<tr>
				<td>Fecha inicio *</td>
				<td><form:input type="date" path="fechaInicio" /></td>
				<td><form:errors path="fechaInicio" class="error-message" /></td>
				</tr>
				<tr>
				<td>Fecha final *</td>
				<td><form:input type="date" path="fechaFinal" /></td>
				<td><form:errors path="fechaFinal" class="error-message" /></td>
				</tr>
				<tr>
				<td>Precio *</td>
				<td><form:input  path="price" /></td>
				<td><form:errors path="price" class="error-message" /></td>
				</tr>
				<tr>
				<td>Imagen</td>
				<td>
               <img src="${pageContext.request.contextPath}/productImage?code=${productForm.code}" width="100"/></td>
				<td>
				</td>
				</tr>
				<tr>
				<td>Adjuntar Imagen</td>
				<td><form:input type="file" path="fileData"/></td>
				<td> </td>
				</tr>
				<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Guardar" /> <input type="reset" value="Borrar" /></td>
				</tr>
				</table>
   </form:form>
 
 
 
 
   <jsp:include page="_footer.jsp" />
 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Curso JSP</title>
</head>

 <p style="color:red;" align="center"><c:out value="${vazio}"/></p>

    <c:if test="${!empty incorretos}">
       <p  style="color:red;" align="center">${param.incorretos}</p><br/>
    </c:if> 

<body>
 <h2>Bem vindo ao Curso de JSP</h2>

 <form action="<%= request.getContextPath() %>/ServletLogin" method="post">
 <input type="hidden" value= "<%= request.getParameter("url") %>" name="url">
 <table>
   <tr>
    <td><label>Login</label></td>
   </tr>
   <tr>
    <td><input name="login" type= "text"></td>
   </tr>
   <tr>
    <td><label>Senha</label></td>
   </tr>
   <tr>
    <td><input name="senha" type= "password"></td>
   </tr>
   <tr>
    <td><input type="submit" value= "Enviar"></td>
   </tr>
 </table>
 
 </form>
 
</body>
</html>
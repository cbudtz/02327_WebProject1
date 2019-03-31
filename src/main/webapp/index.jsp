<%@ page import="data.IUserDAO" %>
<%@ page import="data.UserDAOImpl" %>
<%@ page import="data.IUserDTO" %>
<%@ page import="business.UserController" %>
<%@ page import="business.IUserController" %>
<%@ page import="java.util.NoSuchElementException" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Brugerprogrammet</title>
</head>
<body>
<h1>
    Det store brugerprogram!
</h1>
<!-- Indlejret javakode -->
<%
    String idString = request.getParameter("id"); //tag en parameter fra adresselinjen
    IUserController userController = new UserController();
    if (idString!=null) {
        int i = Integer.parseInt(idString); //Omsæt til Integer
        IUserDTO test = userController.getUser(i); //
        out.println("Fandt bruger: " + i + " <br>");
        out.println("<table border>");
        out.println("<tr><th>Brugernavn</th></tr>");
        out.println("<tr><td> " + test.getUserName() + "</td></tr>");
        out.println("</table>");
    }
%>
<h2>
   Find brugere!
</h2>
<form action="index.jsp" METHOD="get">
    <label >
        <input name="id" id="id" type="number">
    </label>
    <input type="submit">
</form>
</body>
</html>
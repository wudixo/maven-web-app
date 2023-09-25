<!DOCTYPE html>
<%@ page import="java.util.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="beans.User" %>

<html>
	<head>
		<title>Best Deal</title>
		<link rel="stylesheet" type="text/css" href="css/styles.css">
	</head>
	<body>
		<header>
			<table width="100%">
                <tr>
                    <td width="75%">
                        <h1><a href="index.jsp">Best Deal</a></h1>
                    </td>
                    <td width="25%">
                        <a href="cart.jsp"><img src="img/cart.jpg" alt="cart" width="80" height="80"/></a>
                    </td>
                </tr>
            </table>
		</header>
		<section>
			<table width="100%">
				<tr height="40px">
					<td width="40%">
						<ul>
							<li><a href="index.jsp" class="stylish">Home</a></li>
							<li><a href="#" class="stylish">Weekly Deals</a></li>
							<li><a href="#" class="stylish">Contact</a></li>
							<li><a href="#" class="stylish">About us</a></li>
						</ul>
					</td>
					<td width="30%">
						<input type="text" name="search">
						<a href="#" class="stylish">Search it</a>
					</td>
					<td width="30%">
						<%
							String name = "User";
							User u;
							if(request.getParameter("username") != null){
								name = request.getParameter("username");
								u = new User(name);
								session.setAttribute("user", u);
							}

							if(session.getAttribute("user") != null) {
								u = (User)session.getAttribute("user");
						%>
						<a href="info.jsp" class="normal">Hi, <%= u.getUserID() %></a>
						<%
							}else {
						%>

						<a href="signin.jsp" class="normal">Sign In</a>
						<span> or </span>
						<a href="signin.jsp" class="normal">Create an Account</a>
						<%
							}
						%>
					</td>
				</tr>
			</table>
		</section>
		<nav>
			<ul>
				<form action="catalog.jsp">
				<li><input type="submit" name="product" value="Phones"></li>
				<li><input type="submit" name="product" value="Tablets"></li>
				<li><input type="submit" name="product" value="Laptop"></li>
				<li><input type="submit" name="product" value="TV"></li>
				</form>
			</ul>
		</nav>

		<aside>
			<h1 align="center">Deals</h1>
		</aside>
	</body>
<html>

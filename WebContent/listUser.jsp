<%@include file="include/header.jsp"%>
<%@ page import="java.util.List"%>
<%@ page import="org.studyeasy.entity.User"%>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<strong>Listing users</strong>
			<hr />
			<table border="1">
				<thead>
					<th>User ID</th>
					<th>Username</th>
					<th>Email</th>
					<th>Operation</th>
				</thead>
				<%!String deleteURL;%>
				<%
					List<User> listUsers = (List) request.getAttribute("listUsers");
					String updateURL;
					for (int i = 0; i < listUsers.size(); i++) {
						out.print("<tr>");
						out.print("<td>" + listUsers.get(i).getUsers_id() + "</td>");
						out.print("<td>" + listUsers.get(i).getUsername() + "</td>");
						out.print("<td>" + listUsers.get(i).getEmail() + "</td>");
						updateURL = request.getContextPath() + "/operation?page=updateUser" + "&usersId="
								+ listUsers.get(i).getUsers_id() + "&username=" + listUsers.get(i).getUsername() + "&email="
								+ listUsers.get(i).getEmail();
						deleteURL = request.getContextPath() + "/operation?page=deleteUser" + "&usersId="
								+ listUsers.get(i).getUsers_id();
						out.print("<td><a href=" + updateURL + ">Update</a>|");
				%>
				<a href="<%=deleteURL%>"
					onclick="if(!confirm('Are you sure to delete the user?')) return false">Delete</a>
				</td>
				</tr>
				<%
					}
				%>
			</table>
		</div>
	</div>
</div>

<%@include file="include/footer.jsp"%>






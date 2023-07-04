<%@include file="include/header.jsp" %>
<%@ page import="org.studyeasy.entity.Files" %>
<%@ page import="java.util.List" %>
<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
		Image uploaded successfully!
		List of files :
		<%
		
		List<Files> files = (List<Files>)request.getAttribute("files");
		for(Files file: files ){
			out.print("<br/><img src="+"D:\\EclipseProjects\\images\\"+file.getFileName()+">");
		}
		%>
		</div>
	</div>
</div>
<%@include file="include/footer.jsp" %>
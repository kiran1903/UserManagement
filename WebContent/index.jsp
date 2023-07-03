<%@include file="include/header.jsp" %>

<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<h3>Home</h3>
			<p>We are a team of dedicated people who perform intense research, pragmatic planning and come up with easily understandable and quality courses for student around the world. We follow an ongoing process of quality analysis by meticulously considering and improving our work by taking the feedback from the users. We are fantastic content maker and fabulous presenters. we are StudyEasy Organization!
		
		<form action="${pageContext.request.contextPath}/operation" method="post" enctype="multipart/form-data">
Select images <input type="file" name="files" multiple/>
<input type="submit" value="upload"/>
</form>
		</div>
	</div>
</div>
<%@include file="include/footer.jsp" %>
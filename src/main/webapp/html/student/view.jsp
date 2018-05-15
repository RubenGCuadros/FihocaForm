<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>

This is the <b>portletJquery</b>.


<portlet:actionURL var="addStudentURL" name="addStudent">
<%-- <portlet:param name="<%=actionRequest.ACTION_NAME%>" value="addStudent"/> --%>
</portlet:actionURL>



<form action="<%=addStudentURL%>" name="studentForm" method="POST">
	<br>
	<input name="<portlet:namespace/>nombre" id="nombre"/>
	<input name="<portlet:namespace/>apellido" id="apellido"/>
	<input name="<portlet:namespace/>edad" id="edad" />
	<br><br>

	<button type="submit" class="btn btn-primary"
		id="btnSubmit" value="Generate"> Generate	
	</button>
	
</form>
<div id="nombreCompleto"> 
<%=renderRequest.getParameter("nombreCompleto")%> 	
</div>	
	

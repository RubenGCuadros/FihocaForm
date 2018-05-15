<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>

<portlet:defineObjects />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>

This is the <b>portletJquery</b>.


<portlet:actionURL var="addStudentURL" name="addStudent">

</portlet:actionURL>



<form action="<%=addStudentURL%>" >
	<br>
	<input name="nombre" id="nombre"/>
	<input name="apellido" id="apellido"/>
	<input name="edad" id="edad" />
	<br><br>

	<button type="submit" class="btn btn-primary"
		id="btnSubmit" value="Generate"> Generate	
	</button>
<div value="<%=renderRequest.getParameter("nombreCompleto")%>" >
	
</div>	
	
</form>
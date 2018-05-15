<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %> 

<portlet:defineObjects />

<liferay-ui:success key="success" message="Student guardado con éxito!"/>

<liferay-ui:error key="error" message="Rellene los campos vacios!"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>

This is the <b>portletJquery</b>.


<portlet:actionURL var="addStudentURL" name="addStudent">
<%-- <portlet:param name="<%=actionRequest.ACTION_NAME%>" value="addStudent"/> --%>
</portlet:actionURL>

<%
String nombreCompletoJSP = renderRequest.getParameter("nombreCompleto");
if (nombreCompletoJSP == null) {	
	nombreCompletoJSP = "";
}

%>

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
<%=nombreCompletoJSP%> 	
</div>	
	

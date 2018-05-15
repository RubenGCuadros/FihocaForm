package com.fihoca.controller;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import com.liferay.portal.kernel.util.ParamUtil;
import com.liferay.util.bridges.mvc.MVCPortlet;

/**
 * Portlet implementation class Student
 */
public class Student extends MVCPortlet {

	public void addStudent (ActionRequest actionRequest, ActionResponse actionResponse) throws IOException, PortletException {
		
		String nombre = ParamUtil.getString(actionRequest, "nombre");
		String apellido = ParamUtil.getString(actionRequest, "apellido");
		int edad = ParamUtil.getInteger(actionRequest, "edad");
		
		String nombreCompleto = (nombre+apellido+edad);
		
		actionResponse.setRenderParameter("nombreCompleto", nombreCompleto);
		
		
		
		
	}

}

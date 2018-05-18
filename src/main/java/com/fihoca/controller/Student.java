package com.fihoca.controller;

import java.io.IOException;

import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.PortletException;

import org.apache.log4j.Logger;

import com.liferay.portal.kernel.servlet.SessionErrors;
import com.liferay.portal.kernel.servlet.SessionMessages;
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
		
		_log.fatal("test");
		
		if (nombre!="" && apellido!="" && edad!=0) {

				String nombreCompleto = ("El nombre del estudiante es " + nombre +" "+ apellido +" "+"y tiene " + edad +" años");
				
				actionResponse.setRenderParameter("nombreCompleto", nombreCompleto);
				
				SessionMessages.add(actionRequest, "success");
			}else{
			
			SessionErrors.add(actionRequest, "error");

		}		
		
	}
	
	private static Logger _log = Logger.getLogger(Student.class);


}

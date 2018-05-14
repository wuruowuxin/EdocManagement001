package com.lzl.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

/**
 * 设置上下文路径
 */
@WebServlet(urlPatterns = {},loadOnStartup = 2)
public class WebContextInitServlet  extends HttpServlet{

    /**
	 * 
	 */
	private static final long serialVersionUID = -85266375853294986L;


	@Override
    public void init() throws ServletException {
        getServletContext().setAttribute("ctx",getServletContext().getContextPath());
    }
}

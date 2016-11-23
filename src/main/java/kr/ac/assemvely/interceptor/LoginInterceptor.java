package kr.ac.assemvely.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter
{
	private static final String LOGIN = "login";
	
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception 
	{
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO");

		
		if(userVO!=null)
		{
			session.setAttribute(LOGIN, userVO);	
			
		}
		
		
	
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception 
	{
		HttpSession session = request.getSession();
		
		if(session.getAttribute(LOGIN)==null)
		{
			
			response.sendRedirect("/");
		
		}
		
		return true;
		
	}
	
	
}

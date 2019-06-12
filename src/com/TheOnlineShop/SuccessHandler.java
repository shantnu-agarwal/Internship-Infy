package com.TheOnlineShop;

import java.io.IOException;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class SuccessHandler 
implements AuthenticationSuccessHandler{

//  protected Log logger = LogFactory.getLog(this.getClass());

  private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

  @Override
  public void onAuthenticationSuccess(HttpServletRequest request, 
    HttpServletResponse response, Authentication authentication)
    throws IOException {

      handle(request, response, authentication);
      clearAuthenticationAttributes(request);
  }

  protected void handle(HttpServletRequest request, 
    HttpServletResponse response, Authentication authentication)
    throws IOException {

      String targetUrl = determineTargetUrl(authentication);

//      if (response.isCommitted()) {
//          logger.debug(
//            "Response has already been committed. Unable to redirect to "
//            + targetUrl);
//          return;
//      }

      redirectStrategy.sendRedirect(request, response, targetUrl);
  }

  protected String determineTargetUrl(Authentication authentication) {
      
      Collection<? extends GrantedAuthority> authorities
       = authentication.getAuthorities();
      for (GrantedAuthority grantedAuthority : authorities) {
          if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
              	return "http://localhost:8080/Internship-Infy/Welcome?login=true";
          } else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
              	return "http://localhost:8080/Internship-Infy/admindash";
          }	else
        	  throw new IllegalStateException();
      }
	return null;
  }

  protected void clearAuthenticationAttributes(HttpServletRequest request) {
      HttpSession session = request.getSession(false);
      if (session == null) {
          return;
      }
      session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
  }

  public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
      this.redirectStrategy = redirectStrategy;
  }
  protected RedirectStrategy getRedirectStrategy() {
      return redirectStrategy;
  }
}
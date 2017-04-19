package pers.yijin.bms.web.action;

import java.io.ByteArrayInputStream;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import pers.yijin.bms.utils.SecurityCode;
import pers.yijin.bms.utils.SecurityImage;


import com.opensymphony.xwork2.ActionSupport;

public class SecurityCodeImageAction extends ActionSupport implements
		SessionAware {
	/**
	11  * 提供图片验证码
	12  * @version 1.0 2013/03/22
	13  * @author dingyp
	14  */
	private static final long serialVersionUID = -262039150456948274L;

	// Struts2中Map类型的session
	private Map<String, Object> session;

	// 图片流
	private ByteArrayInputStream imageStream;

	
	public String showSecurityCode() throws Exception {

		// 获取默认难度和长度的验证码
		String securityCode = SecurityCode.getSecurityCode();
		imageStream = SecurityImage.getImageAsInputStream(securityCode);
		// 放入session中
		session.put("SESSION_SECURITY_CODE", securityCode);
		return "securityCode";
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;

	}
	public ByteArrayInputStream getImageStream() {
		return imageStream;
	}

	public void setImageStream(ByteArrayInputStream imageStream) {
		this.imageStream = imageStream;
	}

}

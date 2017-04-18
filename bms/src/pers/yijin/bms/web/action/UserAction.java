package pers.yijin.bms.web.action;

import com.opensymphony.xwork2.ActionContext;

import pers.yijin.bms.base.BaseAction;
import pers.yijin.bms.domain.User;

@SuppressWarnings("serial")
public class UserAction extends BaseAction<User> {
	// 接收客户端传来的验证码
	private String securityCode;

	public String getSecurityCode() {
		return securityCode;
	}

	public void setSecurityCode(String securityCode) {
		this.securityCode = securityCode;
	}

	/**
	 * 登录
	 * 
	 * @return
	 */
	public String login() {
		User user = this.getUserService().login(this.getModel());
		// 判断是否查询到了信息
		if (user != null) {
			// 放入session中
			this.putSession("user", user);
			return SUCCESS;
		}
		// 未查到，提示信息
		this.addFieldError("", "用户名或密码不正确！");
		return "login";
	}

	public String home() {
		return "home";
	}

	public String toRegister() {
		return "toRegister";
	}

	public String register() {
		String serverCode = (String) ActionContext.getContext().getSession().get("SESSION_SECURITY_CODE");
		if (!serverCode.equals(securityCode.trim())) {
			this.putSession("codeError", "验证码错误,请重新输入");
			return "input";
		} else if (this.getUserService().equalsEmail(this.getModel().getEmail())) {
			this.putSession("emailAlready","<script>alert('该Email已被注册！');</script>");
			return "input";
		}else{
			this.getUserService().addUser(this.getModel());
			this.putSession("registerSuccess",
					"<script>alert('注册成功,现在可以登录了');</script>");
			return "register";
		}
	}
	
	public String showUserInfo(){
		User u = (User) ActionContext.getContext().getSession().get("user");
		User findUser = this.getUserService().findUserById(u.getId());
		this.push(findUser);
		return "showUserInfo";
	}
	
	public String updateUser(){
		this.getUserService().updateUser(this.getModel());
		return "updateUser";
	}
	
	public String userLoginout(){
		ActionContext.getContext().getSession().remove("user");
		return "login";
	}
	
}

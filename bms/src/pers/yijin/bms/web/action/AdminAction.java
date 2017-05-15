package pers.yijin.bms.web.action;

import java.util.List;

import com.opensymphony.xwork2.ActionContext;

import pers.yijin.bms.base.BaseAction;
import pers.yijin.bms.domain.Admin;
import pers.yijin.bms.domain.User;

@SuppressWarnings("serial")
public class AdminAction extends BaseAction<Admin> {

	/**
	 * 
	 * @return
	 */
	public String adminLogin() {
		Admin admin = this.getAdminService().login(getModel());
		// 判断是否查询到了信息
		if (admin != null) {
			// 放入session中
			this.putSession("admin", admin);
			return SUCCESS;
		}
		// 未查到，提示信息
		this.addFieldError("", "用户名或密码不正确！");
		return "adminLogin";
	}
	
	/**
	 * 
	 * @return
	 */
	public String toHome(){
		return "toHome";
	}
	
	/**
	 * 
	 * @return
	 */
	public String showUserList(){
		List<User> userList = this.getAdminService().findAllUser();
		this.put("userList", userList);
		return "showUserList";
	}
	
	/**
	 * 
	 * @return
	 */
	public String adminLoginOut(){
		ActionContext.getContext().getSession().remove("admin");
		return "adminLogin";
	}
	
}

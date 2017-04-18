package pers.yijin.bms.service;

import java.util.List;

import pers.yijin.bms.domain.Admin;
import pers.yijin.bms.domain.User;

public interface AdminService {
	/**
	 * 添加管理员
	 * @param id
	 * @param username
	 */
	public void addAdmin(Admin admin);
	
	/**
	 * 登录
	 * @param username
	 * @param password
	 */
	public Admin login(Admin admin);

	public List<User> findAllUser();
}

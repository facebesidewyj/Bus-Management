package pers.yijin.bms.dao;

import java.util.List;

import pers.yijin.bms.base.BaseDao;
import pers.yijin.bms.domain.Admin;
import pers.yijin.bms.domain.User;


public interface AdminDao extends BaseDao<Admin>{
	/**
	 * 登录
	 * @param username
	 * @param password
	 * @return
	 */
	public Admin login(String username,String password);

	public List<User> findAllUser();
}

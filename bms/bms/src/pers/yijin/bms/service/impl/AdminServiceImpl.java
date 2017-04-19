package pers.yijin.bms.service.impl;

import java.util.List;

import pers.yijin.bms.dao.AdminDao;
import pers.yijin.bms.domain.Admin;
import pers.yijin.bms.domain.User;
import pers.yijin.bms.service.AdminService;

public class AdminServiceImpl implements AdminService {
	private AdminDao adminDao;

	public void setAdminDao(AdminDao adminDao) {
		this.adminDao = adminDao;
	}

	@Override
	public void addAdmin(Admin admin) {
		adminDao.save(admin);
	}

	@Override
	public Admin login(Admin admin) {
		return adminDao.login(admin.getUsername(), admin.getPassword());
	}

	@Override
	public List<User> findAllUser() {
		return adminDao.findAllUser();
	}

	

}

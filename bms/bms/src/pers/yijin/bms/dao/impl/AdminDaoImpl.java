package pers.yijin.bms.dao.impl;

import java.util.List;

import pers.yijin.bms.base.impl.BaseDaoImpl;
import pers.yijin.bms.dao.AdminDao;
import pers.yijin.bms.domain.Admin;
import pers.yijin.bms.domain.User;

public class AdminDaoImpl extends BaseDaoImpl<Admin> implements AdminDao {

	@SuppressWarnings("unchecked")
	@Override
	public Admin login(String username, String password) {
		String HQL = "from Admin where username = ? and password = ?";
		List<Admin> admin = this.getHibernateTemplate().find(HQL, username,
				password);
		if (admin.size() == 1) {
			return admin.get(0);
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<User> findAllUser() {
		return this.getHibernateTemplate().find("from User");
	}

}

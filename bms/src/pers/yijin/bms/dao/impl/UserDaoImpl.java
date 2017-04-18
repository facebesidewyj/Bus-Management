package pers.yijin.bms.dao.impl;

import java.util.List;

import pers.yijin.bms.base.impl.BaseDaoImpl;
import pers.yijin.bms.dao.UserDao;
import pers.yijin.bms.domain.User;

public class UserDaoImpl extends BaseDaoImpl<User> implements UserDao {

	@SuppressWarnings("unchecked")
	public User login(String username, String password) {
		String HQL = "from User as user where user.username = ? and user.password = ?";
		List<User> user = this.getHibernateTemplate().find(HQL, username,
				password);
		if (user.size() == 1) {
			return user.get(0);
		}
		return null;
	}

	@Override
	public User findByEmail(String email) {
		String HQL = "from User as user where user.email = ? ";
		@SuppressWarnings("unchecked")
		List<User> user = this.getHibernateTemplate().find(HQL, email);
		if (user.size() == 1) {
			return user.get(0);
		}
		return null;
	}

}

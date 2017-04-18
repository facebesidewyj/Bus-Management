package pers.yijin.bms.service.impl;

import pers.yijin.bms.dao.UserDao;
import pers.yijin.bms.domain.User;
import pers.yijin.bms.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDao userDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public User login(User user) {
		return userDao.login(user.getUsername(),user.getPassword());
	}

	@Override
	public void addUser(User model) {
		userDao.save(model);
	}

	@Override
	public boolean equalsEmail(String email) {
		User user = userDao.findByEmail(email);
		if(user != null){
			return true;
		}
		return false;
	}

	@Override
	public void updateUser(User model) {
		userDao.update(model);
	}

	@Override
	public User findUserById(int id) {
		return userDao.findById(id);
	}

}

package pers.yijin.bms.service;

import pers.yijin.bms.domain.User;

public interface UserService {

	User login(User model);

	void addUser(User model);

	boolean equalsEmail(String email);

	void updateUser(User model);

	User findUserById(int id);

}

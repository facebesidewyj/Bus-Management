package pers.yijin.bms.dao;

import pers.yijin.bms.base.BaseDao;
import pers.yijin.bms.domain.User;

public interface UserDao extends BaseDao<User> {

	User login(String username, String password);

	User findByEmail(String email);


}

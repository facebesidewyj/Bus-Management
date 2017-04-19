package pers.yijin.bms.dao;

import java.util.List;

import pers.yijin.bms.base.BaseDao;
import pers.yijin.bms.domain.Message;

public interface MessageDao extends BaseDao<Message> {

	List<Message> findMessageByUsername(String username);

}

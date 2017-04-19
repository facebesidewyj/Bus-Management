package pers.yijin.bms.dao.impl;

import java.util.List;

import pers.yijin.bms.base.impl.BaseDaoImpl;
import pers.yijin.bms.dao.MessageDao;
import pers.yijin.bms.domain.Message;

public class MessageDaoImpl extends BaseDaoImpl<Message> implements MessageDao {

	@Override
	public List<Message> findMessageByUsername(String username) {
		@SuppressWarnings("unchecked")
		List<Message> list = this.getHibernateTemplate().find("from Message where username=?",username);
		if(!list.isEmpty()){
			return list;
		}
		return null;
	}

	
}

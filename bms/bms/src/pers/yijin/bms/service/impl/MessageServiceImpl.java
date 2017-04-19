package pers.yijin.bms.service.impl;

import java.util.List;

import pers.yijin.bms.dao.MessageDao;
import pers.yijin.bms.domain.Message;
import pers.yijin.bms.service.MessageService;

public class MessageServiceImpl implements MessageService {

	private MessageDao messageDao;
	
	public void setMessageDao(MessageDao messageDao) {
		this.messageDao = messageDao;
	}

	@Override
	public List<Message> findAllMessage() {
		List<Message> list = messageDao.findAll();
		if(list != null){
			return list;
		}
		return null;
	}

	@Override
	public void deleteMessageById(Message model) {
		messageDao.delete(model);
	}

	@Override
	public List<Message> findMessageByUsername(String username) {
		return messageDao.findMessageByUsername(username);
	}

	@Override
	public void saveMessage(Message message) {
		messageDao.save(message);
	}

}

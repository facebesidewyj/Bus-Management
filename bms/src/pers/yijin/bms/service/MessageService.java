package pers.yijin.bms.service;

import java.util.List;

import pers.yijin.bms.domain.Message;

public interface MessageService {

	List<Message> findAllMessage();

	void deleteMessageById(Message model);

	List<Message> findMessageByUsername(String username);

	void saveMessage(Message message);


}

package pers.yijin.bms.web.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import pers.yijin.bms.base.BaseAction;
import pers.yijin.bms.domain.Message;
import pers.yijin.bms.domain.User;

import com.opensymphony.xwork2.ActionContext;
@SuppressWarnings("serial")
public class MessageAction extends BaseAction<Message> {
	public String showMessage(){
		List<Message> messageList = this.getMessageService().findAllMessage();
		this.put("messageList", messageList);
		return "showMessage";
	}
	
	public String deleteMessageById(){
		this.getMessageService().deleteMessageById(this.getModel());
		Object object = ActionContext.getContext().getSession().get("user");
		if(object == null){
			return "deleteMessageById";
		}
		return "deleteUserMessageById";
	}
	
	public String showUserMessage(){
		User sessionUser = (User) ActionContext.getContext().getSession().get("user");
		List<Message> list = this.getMessageService().findMessageByUsername(sessionUser.getUsername());
		this.put("messageList", list);
		return "showUserMessage";
	}
	
	public String addMessage(){
			SimpleDateFormat sdf = new SimpleDateFormat();
			sdf.applyPattern("yyyy-MM-dd HH:mm:ss "); 
			Date d = new Date();
			Message message = this.getModel();
			message.setMsgTime(sdf.format(d));
			if(message.getTheme()!=null && !("".equals(message.getTheme())&&message.getMessage()!=null&&!("".equals(message.getMessage())))){
				this.getMessageService().saveMessage(message);
				ActionContext.getContext().getSession().put("MessageSuccess", "<script>alert('留言成功');</script>");
				return "addMessage";
			}
			return null;
	}
}

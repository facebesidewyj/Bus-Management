package pers.yijin.bms.domain;

/**
 * 留言数据模型
 * 
 * @author Administrator
 * 
 */
public class Message {

	private int id;
	private User user;
	private String theme;
	private String message;
	private String msgTime;

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getMsgTime() {
		return msgTime;
	}

	public void setMsgTime(String msgTime) {
		this.msgTime = msgTime;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", user=" + user + ", theme=" + theme
				+ ", message=" + message + ", msgTime=" + msgTime + "]";
	}

}

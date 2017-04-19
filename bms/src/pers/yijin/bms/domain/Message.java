package pers.yijin.bms.domain;

/**
 * 留言数据模型
 * 
 * @author Administrator
 * 
 */
public class Message {

	private int id;
	private String username;
	private String theme;
	private String message;
	private String msgTime;

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", username=" + username + ", theme="
				+ theme + ", message=" + message + ", msgTime=" + msgTime + "]";
	}

}

package pers.yijin.bms.domain;

import java.util.Set;

/**
 * 用户数据模型
 * 
 * @author Administrator
 * 
 */
public class User {
	private int id;
	private String username;
	private String password;
	private String address;
	private int age;
	private String email;
	private Set<Message> messageList;

	public Set<Message> getMessageList() {
		return messageList;
	}

	public void setMessageList(Set<Message> messageList) {
		this.messageList = messageList;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password="
				+ password + ", address=" + address + ", age=" + age
				+ ", email=" + email + ", messageList=" + messageList + "]";
	}

}

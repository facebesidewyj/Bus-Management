package pers.yijin.bms.base;

import java.lang.reflect.ParameterizedType;

import pers.yijin.bms.service.AdminService;
import pers.yijin.bms.service.BusService;
import pers.yijin.bms.service.MessageService;
import pers.yijin.bms.service.StationService;
import pers.yijin.bms.service.UserService;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@SuppressWarnings("serial")
public class BaseAction<T> extends ActionSupport implements ModelDriven<T> {

	private T t;

	@Override
	public T getModel() {
		return t;
	}

	// 实例化
	@SuppressWarnings("unchecked")
	public BaseAction() {
		try {
			// 获得T运行时的class
			ParameterizedType parameterizedType = (ParameterizedType) this
					.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) parameterizedType
					.getActualTypeArguments()[0];
			// 反射创建实例
			t = clazz.newInstance();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 注入service
	private AdminService adminService;
	private UserService userService;
	private MessageService messageService;
	private BusService busService;
	private StationService stationService;

	public AdminService getAdminService() {
		return adminService;
	}

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public MessageService getMessageService() {
		return messageService;
	}

	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

	public BusService getBusService() {
		return busService;
	}

	public void setBusService(BusService busService) {
		this.busService = busService;
	}

	public StationService getStationService() {
		return stationService;
	}

	public void setStationService(StationService stationService) {
		this.stationService = stationService;
	}

	// 分页数据
	private int pageNum = 1;
	private int pageSize = 10;

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNum() {
		return pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	// 简化值栈操作
	public void push(Object o) {
		ActionContext.getContext().getValueStack().push(o);
	}

	public void put(String key, Object value) {
		ActionContext.getContext().put(key, value);
	}

	public void set(String key, Object o) {
		ActionContext.getContext().getValueStack().set(key, o);
	}

	public void putSession(String key, Object value) {
		ActionContext.getContext().getSession().put(key, value);
	}

	public void putApplication(String key, Object value) {
		ActionContext.getContext().getApplication().put(key, value);
	}

}

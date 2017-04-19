package pers.yijin.bms.web.action;

import java.util.List;

import pers.yijin.bms.dao.OperateBusStationDao;
import pers.yijin.bms.domain.BusStation;
import pers.yijin.bms.domain.Station;
import pers.yijin.bms.domain.User;

public class OperateBusStationAction {

	private List<Station> sts;
	private List<BusStation> buses;
	private String beginSt;
	private String endSt;
	private String busTime;
	private List<User> us;
	private OperateBusStationDao operateDAO;

	public String show() {

		sts = operateDAO.listSt();
		buses = operateDAO.listBusSt();
		return "show";
	}

	public List<User> getUs() {
		return us;
	}

	public void setUs(List<User> us) {
		this.us = us;
	}

	public String getBusTime() {
		return busTime;
	}

	public void setBusTime(String busTime) {
		this.busTime = busTime;
	}

	public OperateBusStationDao getOperateDAO() {
		return operateDAO;
	}

	public void setOperateDAO(OperateBusStationDao operateDAO) {
		this.operateDAO = operateDAO;
	}

	public List<Station> getSts() {
		return sts;
	}

	public void setSts(List<Station> sts) {
		this.sts = sts;
	}

	public List<BusStation> getBuses() {
		return buses;
	}

	public void setBuses(List<BusStation> buses) {
		this.buses = buses;
	}

	public String getBeginSt() {
		return beginSt;
	}

	public void setBeginSt(String beginSt) {
		this.beginSt = beginSt;
	}

	public String getEndSt() {
		return endSt;
	}

	public void setEndSt(String endSt) {
		this.endSt = endSt;
	}

}

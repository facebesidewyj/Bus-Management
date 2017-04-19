package pers.yijin.bms.domain;

import java.util.Set;

/**
 * 站台数据模型
 * 
 * @author Administrator
 * 
 */
public class Station {

	private int id;
	private String stationName;
	private Integer stationOrder;


	public Integer getStationOrder() {
		return stationOrder;
	}

	public void setStationOrder(Integer stationOrder) {
		this.stationOrder = stationOrder;
	}

	private Set<Bus> busList;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public Set<Bus> getBusList() {
		return busList;
	}

	public void setBusList(Set<Bus> busList) {
		this.busList = busList;
	}

	@Override
	public String toString() {
		return "Station [id=" + id + ", stationName=" + stationName + "]";
	}

}

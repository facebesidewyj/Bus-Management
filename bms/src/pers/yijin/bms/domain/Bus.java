package pers.yijin.bms.domain;

import java.util.Set;

/**
 * 公交车数据模型
 * 
 * @author Administrator
 * 
 */
public class Bus {

	private int id;
	private String busName;
	private int startStation;
	private int endStation;
	private String bus_time;
	private Set<Station> stationList;

	public Set<Station> getStationList() {
		return stationList;
	}

	public void setStationList(Set<Station> stationList) {
		this.stationList = stationList;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBusName() {
		return busName;
	}

	public void setBusName(String busName) {
		this.busName = busName;
	}

	public int getStartStation() {
		return startStation;
	}

	public void setStartStation(int startStation) {
		this.startStation = startStation;
	}

	public int getEndStation() {
		return endStation;
	}

	public void setEndStation(int endStation) {
		this.endStation = endStation;
	}

	public String getBus_time() {
		return bus_time;
	}

	public void setBus_time(String bus_time) {
		this.bus_time = bus_time;
	}

	@Override
	public String toString() {
		return "Bus [id=" + id + ", busName=" + busName + ", startStation="
				+ startStation + ", endStation=" + endStation + ", bus_time="
				+ bus_time + "]";
	}

}
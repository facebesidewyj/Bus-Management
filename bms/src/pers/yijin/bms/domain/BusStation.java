package pers.yijin.bms.domain;

import java.util.Set;

public class BusStation {
	private Integer id;
	private String busName;
	private Integer stationID;
	private Integer stationOrder;
	private Set<Station> stationSet;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getBusName() {
		return busName;
	}

	public void setBusName(String busName) {
		this.busName = busName;
	}

	public Integer getStationID() {
		return stationID;
	}

	public void setStationID(Integer stationID) {
		this.stationID = stationID;
	}

	public Integer getStationOrder() {
		return stationOrder;
	}

	public void setStationOrder(Integer stationOrder) {
		this.stationOrder = stationOrder;
	}

	public Set<Station> getStationSet() {
		return stationSet;
	}

	public void setStationSet(Set<Station> stationSet) {
		this.stationSet = stationSet;
	}

}

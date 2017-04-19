package pers.yijin.bms.domain;


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

	@Override
	public String toString() {
		return "Station [id=" + id + ", stationName=" + stationName + "]";
	}

}

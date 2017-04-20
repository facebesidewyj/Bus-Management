package pers.yijin.bms.domain;


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
	//票价
	private String price;
	//等级
	private String level;
	
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
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
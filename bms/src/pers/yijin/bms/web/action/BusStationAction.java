package pers.yijin.bms.web.action;

import pers.yijin.bms.base.BaseAction;
import pers.yijin.bms.domain.BusStation;

@SuppressWarnings("serial")
public class BusStationAction extends BaseAction<BusStation> {
	private String stationName;
	
	public String getStationName() {
		return stationName;
	}

	public void setStationName(String stationName) {
		this.stationName = stationName;
	}

	public String addBusStation(){
		this.getBusStationService().addBusStation(this.getModel());
		return "addBusStation";
	}
}

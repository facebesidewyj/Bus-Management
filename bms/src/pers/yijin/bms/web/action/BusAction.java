package pers.yijin.bms.web.action;

import java.util.List;

import pers.yijin.bms.base.BaseAction;
import pers.yijin.bms.domain.Bus;
import pers.yijin.bms.domain.Station;

@SuppressWarnings("serial")
public class BusAction extends BaseAction<Bus> {

	public String addBus() {
		this.getBusService().addBus(this.getModel());
		return "addBus";
	}
	
	private List<Bus> buses;
	
	public List<Bus> getBuses() {
		return buses;
	}
	public void setBuses(List<Bus> buses) {
		this.buses = buses;
	}
	
	private List<Station> sts;
	
	public List<Station> getSts() {
		return sts;
	}
	public void setSts(List<Station> sts) {
		this.sts = sts;
	}
	public String findAllBus(){
		buses = this.getBusService().findAll();
		sts = this.getStationService().findAll();
		return "findAllBus";
	}
}

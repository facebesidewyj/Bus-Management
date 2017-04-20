package pers.yijin.bms.web.action;

import pers.yijin.bms.base.BaseAction;
import pers.yijin.bms.domain.Bus;

@SuppressWarnings("serial")
public class BusAction extends BaseAction<Bus> {

	public String addBus() {
		this.getBusService().addBus(this.getModel());
		return "addBus";
	}
}

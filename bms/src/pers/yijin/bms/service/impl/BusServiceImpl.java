package pers.yijin.bms.service.impl;

import pers.yijin.bms.dao.BusDao;
import pers.yijin.bms.domain.Bus;
import pers.yijin.bms.service.BusService;

public class BusServiceImpl implements BusService {
	private BusDao busDao;

	public void setBusDao(BusDao busDao) {
		this.busDao = busDao;
	}

	@Override
	public void addBus(Bus model) {
		busDao.save(model);
	}

}

package pers.yijin.bms.service.impl;

import pers.yijin.bms.dao.BusStationDao;
import pers.yijin.bms.domain.BusStation;
import pers.yijin.bms.service.BusStationService;

public class BusStationServiceImpl implements BusStationService {
	private BusStationDao busStationDao;

	public void setBusStationDao(BusStationDao busStationDao) {
		this.busStationDao = busStationDao;
	}

	@Override
	public void addBusStation(BusStation model) {
		busStationDao.save(model);
	}

}

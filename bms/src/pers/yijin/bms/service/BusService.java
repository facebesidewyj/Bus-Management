package pers.yijin.bms.service;

import java.util.List;

import pers.yijin.bms.domain.Bus;

public interface BusService {

	void addBus(Bus model);

	List<Bus> findAll();

}

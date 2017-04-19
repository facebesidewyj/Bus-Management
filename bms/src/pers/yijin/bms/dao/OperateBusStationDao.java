package pers.yijin.bms.dao;

import java.util.List;

import pers.yijin.bms.domain.BusStation;
import pers.yijin.bms.domain.Station;


public interface OperateBusStationDao {

	
	List<Station> listSt();
	List<BusStation> listBusSt();

}
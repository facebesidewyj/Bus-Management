package pers.yijin.bms.service;

import java.util.List;

import pers.yijin.bms.domain.Station;
import pers.yijin.bms.page.PageBean;

public interface StationService {

	PageBean<Station> findAllByPageWithNoCondition( int pageNum, int pageSize);

	List<Station> findAll();

	void addStation(Station model);

	void deleteStationById(Station model);

	Station findStationById(Station model);

	void updateStationById(Station model);

}

package pers.yijin.bms.dao.impl;

import java.util.List;

import pers.yijin.bms.base.impl.BaseDaoImpl;
import pers.yijin.bms.dao.StationDao;
import pers.yijin.bms.domain.Station;

public class StationDaoImpl extends BaseDaoImpl<Station> implements StationDao {

	@SuppressWarnings("unchecked")
	@Override
	public Station findStationByName(String stationName) {
		 List<Station> list = this.getHibernateTemplate().find("from Station as station where station.stationName = ?", stationName);
		 if(!list.isEmpty()){
			 return list.get(0);
		 }
		 return null;
	}

}

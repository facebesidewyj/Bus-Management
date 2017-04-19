package pers.yijin.bms.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pers.yijin.bms.dao.OperateBusStationDao;
import pers.yijin.bms.domain.BusStation;
import pers.yijin.bms.domain.Station;

public class OperateBusStationDaoImpl  extends HibernateDaoSupport implements OperateBusStationDao{

	@SuppressWarnings("unchecked")
	public List<Station> listSt(){
		List<Station> list = this.getHibernateTemplate()
		.find("from Station");
		if(!list.isEmpty()){
			return list;
		}
		return null;
	}
	@SuppressWarnings("unchecked")
	public List<BusStation> listBusSt(){
		List<BusStation> list = this.getHibernateTemplate()
		.find("from BusStation");
		if(!list.isEmpty()){
			return list;
		}
		return null;
	}
}

package pers.yijin.test;

import org.junit.Test;

import pers.yijin.bms.dao.impl.StationDaoImpl;
import pers.yijin.bms.domain.Station;

public class DaoTest {
	@Test
	public void test(){
		StationDaoImpl daoImpl = new StationDaoImpl();
		Station station = new Station();
		station.setId(17);
		daoImpl.getHibernateTemplate().delete(station);
	}
}

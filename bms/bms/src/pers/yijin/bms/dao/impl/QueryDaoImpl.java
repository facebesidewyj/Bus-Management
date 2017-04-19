package pers.yijin.bms.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pers.yijin.bms.dao.QueryDao;
import pers.yijin.bms.domain.Bus;
import pers.yijin.bms.domain.BusStation;
import pers.yijin.bms.domain.Station;

public class QueryDaoImpl extends HibernateDaoSupport implements QueryDao {

	/**
	 * 站点之间序号之差
	 */
	public int stDiffSt(String start, String endSt, String busNum) {
		return Math.abs(stOrder(start, busNum) - stOrder(endSt, busNum));
	}

	/**
	 * 给定一直stName 查找stName在指定的bus_st中对应的编号
	 */
	@SuppressWarnings("unchecked")
	public int stOrder(String stName, String busNum) {
		List<BusStation> bs = this
				.getHibernateTemplate()
				.find("select bs from BusStation bs ,StInfo st"
						+ " where bs.stID=st.stID and st.stName=? and bs.busNum=?",
						new Object[] { stName, busNum });
		if (!bs.isEmpty()) {
			return ((BusStation) bs.get(0)).getStationOrder();
		}
		return -1;
	}

	/**
	 * 站点序号
	 */
	@SuppressWarnings("unchecked")
	public int stOrder(int st, String busNum) {
		List<BusStation> list = this.getHibernateTemplate().find(
				"from BusStation bus where bus.stID=? and bus.busNum=?",
				new Object[] { st, busNum });
		if (!list.isEmpty()) {
			return ((BusStation) list.get(0)).getStationOrder();
		}
		return -1;
	}

	/**
	 * 两站点之间的序列号之差
	 */
	public int stDiffSt(int startSt, int endSt, String busNum) {
		int start = stOrder(startSt, busNum);
		int end = stOrder(startSt, busNum);
		return Math.abs(start - end);
	}

	/**
	 * 两站点直达线路busNum
	 */
	@SuppressWarnings("unchecked")
	public List<String> st2Through(String startSt, String endSt) {
		int start = findByName(startSt);
		int end = findByName(endSt);
		List<String> list = this.getHibernateTemplate().find(
				"select a.busNum from BusStation a, BusStation b"
						+ " where a.stID=? and b.stID=? and a.busNum=b.busNum",
				new Object[] { start, end });
		if (!list.isEmpty()) {
			return list;
		}
		return null;

	}

	/**
	 * 根据指点的站台名查询经过该站台的所有BusStation
	 */
	public List<BusStation> findByStName(String stationName) {
		@SuppressWarnings("unchecked")
		List<BusStation> list = this
				.getHibernateTemplate()
				.find("select busStation from BusStation busStation, Station station"
						+ " where busStation.stationID=station.id and station.stationName=?",
						new Object[] { stationName });
		if (!list.isEmpty()) {
			return list;
		}
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	/**
	 * 一条公交线路上的所有站点
	 */
	public List<Station> getBusNumSts(String busName) {
		List<Station> sts = this
				.getHibernateTemplate()
				.find("select station from Station station ,BusStation busStation "
						+ "where station.id=busStation.stationID and busStation.busName=?",
						new Object[] { busName });
		if (!sts.isEmpty())
			return sts;
		return null;
	}

	/**
	 * 所有公交线路信息
	 */
	@SuppressWarnings("unchecked")
	public List<Bus> getBusInfoAll() {
		return this.getHibernateTemplate().find("from Bus");
	}

	/**
	 * 所有公交站台信息
	 */
	@SuppressWarnings("unchecked")
	public List<Station> getStationAll() {
		return this.getHibernateTemplate().find("from Station");
	}

	/**
	 * 指定线路名称（busNum）的公交线路
	 */
	@SuppressWarnings("unchecked")
	public Bus findBusByBusNum(String busName) {
		List<Bus> list = this.getHibernateTemplate().find(
				"from Bus bus where bus.busName=?", new Object[] { busName });
		if (!list.isEmpty())
			return (Bus) list.get(0);
		return null;
	}

	/**
	 * 指定线路busNum查找经过该线路的所有站点的名称stName
	 */
	public List<String> stNames(String busName) {
		List<Station> list = this.getBusNumSts(busName);
		List<String> sts = new ArrayList<String>();
		if (!list.isEmpty()) {
			for (Station s : list) {
				String st = s.getStationName();
				sts.add(st);
			}
		}
		return sts;

	}

	/**
	 * 根据指定的stID查询指定的StInfo
	 */
	@SuppressWarnings("unchecked")
	public Station findByStID(int id) {
		List<Station> list = this.getHibernateTemplate().find(
				"from Station where id=?", new Object[] { id });
		if (!list.isEmpty()) {
			Station st = (Station) list.get(0);
			return st;
		}
		return null;

	}

	/**
	 * 根据指定的stName查询指定的stInfo中站台的编号
	 */
	@SuppressWarnings("unchecked")
	public int findByName(String stationName) {
		Station st = new Station();
		List<Station> list = this.getHibernateTemplate().find(
				"from Station where stationName=?",
				new Object[] { stationName });
		if (!list.isEmpty()) {
			st = (Station) list.get(0);
		}
		return st.getId();
	}

	/**
	 * 没有经过该站点的公交线路
	 */
	@SuppressWarnings("unchecked")
	public List<String> noPassStBuses(String stationName) {
		int id = findByName(stationName);
		List<String> buses = this
				.getHibernateTemplate()
				.find("select bus.busName from BusStation bus where bus.busName not in"
						+ " (select distinct b.busName from BusStation b where b.stationID=?)",
						new Object[] { id });
		if (!buses.isEmpty()) {
			return buses;
		}
		return null;
	}

	/**
	 * 经过s1却不经过s2的公交线路 select busNum from bus_st where stID=1 and busNum in
	 * (select busNum from bus_st where busNum not in (select busNum from bus_st
	 * where stID=65));
	 */
	@SuppressWarnings("unchecked")
	public List<String> pass1NoPass2(String s1, String s2) {
		int start = findByName(s1);
		int end = findByName(s2);
		List<String> buses = this
				.getHibernateTemplate()
				.find("select a.busName from BusStation a"
						+ " where a.stationID=? and a.busName in"
						+ " (select b.busName from BusStation b where b.busName not in"
						+ " (select c.busName from BusStation c where c.stationID=?))",
						new Object[] { start, end });
		if (!buses.isEmpty()) {
			return buses;
		}
		return null;
	}

	/**
	 * 经过站点1的线路和经过站点2的线路的焦点
	 */
	@SuppressWarnings("unchecked")
	public List<Integer> s1NodeS2(String s1, String s2) {
		int start = findByName(s1);
		int end = findByName(s2);
		List<Integer> nodes = this
				.getHibernateTemplate()
				.find("select b.stationID from "
						+ "(select distinct bus.stationID from BusStation bus where bus.busName in"
						+ "(select b.busName from BusStation b where b.stationID=?)"
						+ ") b,"
						+ "(select distinct c.stationID from BusStation c where c.busName in"
						+ "(select a.busName from BusStation a where a.stationID=?)) a where a.stationID=E.stationID",
						new Object[] { start, end });
		if (!nodes.isEmpty()) {
			return nodes;
		}
		return null;
	}

	public List<String> stThroughSt(String beginSt, String endSt) {
		List<String> ls = null;
		List<String> ls2 = null;
		String busName = null;
		List<String> bus = new ArrayList<String>();
		// 经过beginSt站点的线路A和经过endSt站点的线路B的焦点C（站点集合stID）
		List<Integer> list = s1NodeS2(beginSt, endSt);
		// 经过起点和经过焦点的线路集合
		ls = st2Through(beginSt, findByStID(list.get(0)).getStationName());
		// 经过焦点和终点的线路集合
		ls2 = st2Through(findByStID(list.get(0)).getStationName(), endSt);
		for (int i = 0; i < ls.size(); i++) {
			busName = ls.get(i);
			for (int j = 0; j < ls2.size(); j++) {
				if (busName.equals(ls2.get(j))) {
					bus.add(busName);
				}
			}
		}
		if (!bus.isEmpty()) {
			return bus;
		}
		return null;
	}

}

package pers.yijin.bms.dao;

import java.util.List;

import pers.yijin.bms.domain.Bus;
import pers.yijin.bms.domain.BusStation;
import pers.yijin.bms.domain.Station;

public interface QueryDao {
	public List<Station> getBusNumSts(String busNum);
	public List<Bus> getBusInfoAll();
	public List<Station> getStationAll();
	public Bus findBusByBusNum(String busNum);
	public Station findByStID(int stID);
	public List<BusStation> findByStName(String stName);
	//两站点直达路线busNum
	public List<String> st2Through(String startSt,String endSt);
	//两站点之间的序列号之差
	public int stDiffSt(int startSt,int endSt,String busNum);
	//站点的序号
	public int stOrder(int st,String busNum);
	//站点序号之差
	public int stDiffSt(String start,String endSt,String busNum);
	public int stOrder(String stName,String busNum);
	//查询不经过该站点的公交线路
	public List<String> noPassStBuses(String stName);
	//经过s1却不经过s2的线路
	public List<String> pass1NoPass2(String s1,String s2);
	/**
	 * 指定线路busNum查找经过该线路的所有站点的名称stName
	 */
	public List<String> stNames(String busNum);
	public List<Integer> s1NodeS2(String s1,String s2);
	public int findByName(String stName);
}

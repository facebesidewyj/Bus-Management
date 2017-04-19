package pers.yijin.bms.web.action;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

import pers.yijin.bms.dao.QueryDao;
import pers.yijin.bms.dao.impl.QueryDaoImpl;
import pers.yijin.bms.domain.Bus;
import pers.yijin.bms.domain.BusStation;
import pers.yijin.bms.domain.Station;

public class QueryAction {

	// query.jsp页面里面用到的属性
	private List<Bus> buses;
	private List<Station> sts;

	// queryBusNum.jsp页面里面用的属性
	private String busnum;
	private StringBuffer sb = new StringBuffer();;
	private List<Station> busNumSts;// 一条呢公交线路上的所有站点
	private Station startSt;// 一条公交线路上的起点站
	private Station enSt;// 一条公交线路上的终点站
	private Bus bus;

	// queryStInfo.jsp站点信息查询(经过该站点的所有线路)
	private List<BusStation> busSts;
	private String st;// request请求的站点名st
	private List<String> sbs = new ArrayList<String>();
	private QueryDao queryDAO = new QueryDaoImpl();

	// queryStSt.jsp站站信息查询
	private String beginSt;
	private String endSt;
	private List<String> st2;

	private String sortMap(Map<String, Integer> map) {
		int[] list = new int[map.size()];
		String s = "";
		if (!map.isEmpty()) {
			int i = 0;
			Iterator<Integer> it = map.values().iterator();
			while (it.hasNext()) {
				list[i] = it.next();
				i++;
			}
			Arrays.sort(list);

		}
		Iterator<String> str = map.keySet().iterator();
		for (int x = 0; x < map.size(); x++) {
			while (str.hasNext()) {
				String st = str.next();
				if ((map.get(st)) == list[0]) {
					s = st;
					break;
				}
			}
		}
		return s;

	}

	public String queryStSt() {
		Map<String, Integer> map = new HashMap<String, Integer>();
		st2 = queryDAO.st2Through(beginSt, endSt);
		sb.append("站台【" + beginSt + "】到站台【" + endSt + "】的乘车方案列于下:<br/>");
		sb.append("从【" + beginSt + "】站==>乘");
		if (st2 != null) {
			for (String s : st2) {
				int len = queryDAO.stDiffSt(beginSt, endSt, s);
				sb.append("<font color='red'>【" + s + "线】共经过" + len
						+ "站</font>或");
				map.put(s, len);
			}
			sb.deleteCharAt(sb.length() - 1);
			sb.append("<br>==>至【" + endSt + "】站");
			// 最佳路线计算
			String sl = sortMap(map);
			sb.append("<br/><br/>站台【" + beginSt + "】到站台【" + endSt
					+ "】的最佳乘车方案为：<br/>" + "乘坐<font color='red'>" + sl + "线共经过"
					+ map.get(sl) + "站</font>");
		} else {

			Map<Integer, String> ggzd = null;
			boolean flag = false;

			List<String> l1 = queryDAO.pass1NoPass2(beginSt, endSt);
			List<String> l2 = queryDAO.pass1NoPass2(endSt, beginSt);
			for (int i = 0; i < l1.size(); i++) {
				List<String> ss1 = queryDAO.stNames(l1.get(i));
				for (int j = 0; j < l2.size(); j++) {
					ggzd = new TreeMap<Integer, String>();
					List<String> ss2 = queryDAO.stNames(l2.get(j));
					for (int k = 0; k < ss1.size(); k++) {// 集合ss1中的一个元素与集合ss2中的元素的焦点集合
						for (int z = 0; z < ss2.size(); z++) {
							if (ss1.get(k).equals(ss2.get(z))) {
								flag = true;
								int num = queryDAO.stDiffSt(beginSt,
										ss1.get(k), l1.get(i))
										+ queryDAO.stDiffSt(ss1.get(k), endSt,
												l2.get(j));
								ggzd.put(num, ss1.get(k));
							}
						}
					}
					if (flag) {
						Set<Integer> keys = ggzd.keySet();
						Iterator<Integer> iterator = keys.iterator();
						if (iterator.hasNext()) {
							int length = iterator.next();
							sb.append("<font color='red'>【" + l1.get(i)
									+ "】线</font>到" + ggzd.get(length)
									+ "换乘<font color='red'>【" + l2.get(j)
									+ "】</font>至目的站【" + endSt
									+ "】-->共经过<font color='red'>" + length
									+ "</font>站<br>或乘");
						}
						flag = false;
					}
				}
			}
			sb = sb.delete(sb.lastIndexOf("或乘"), sb.length());
		}

		return "queryStSt";
	}

	/**
	 * 站点信息查询
	 * 
	 * @return
	 */
	public String queryStInfo() {
		busSts = queryDAO.findByStName(st);
		for (BusStation s : busSts) {
			StringBuffer sb = new StringBuffer();
			int i = -1;
			if (s != null) {
				List<Station> ls = queryDAO.getBusNumSts(s.getBusName());
				sb.append("------------------------------------<br/>");
				sb.append("经过<font color='red'>" + s.getBusName()
						+ "</font>线路的所有站点列如下：(共计" + ls.size() + "站点)<br/>");
				for (Station sf : ls) {
					i++;
					if (i % 5 == 0) {
						sb.append("<br>");
					}
					if (st.equals(sf.getStationName())) {
						sb.append("<font color='red'>【" + st + "】</font>-->");
					}
					sb.append("【" + sf.getStationName() + "】" + "-->");
				}
				int index = sb.lastIndexOf("-->");
				sb = sb.delete(index, sb.length());
			}
			sbs.add(sb.toString());
		}
		sb.append("<br/><br/>");
		return "queryStInfo";
	}

	/**
	 * query.jsp下拉菜单要执行的Action方法
	 * 
	 * @return
	 */
	public String execute() {

		buses = queryDAO.getBusInfoAll();
		sts = queryDAO.getStationAll();
		return "success";
	}

	/**
	 * 公交线路查询
	 * 
	 * @return
	 */
	public String queryBusNum() {
		busNumSts = queryDAO.getBusNumSts(busnum);
		int i = 0;
		sb.append("【" + busnum + "】路公交车经过的所有站点如下：(共计" + busNumSts.size()
				+ "站点)<br/>");
		for (Station sf : busNumSts) {
			i++;
			if (i % 5 == 0) {
				sb.append("<br>");
			}
			sb.append("【" + sf.getStationName() + "】==>");
		}
		int index = sb.lastIndexOf("==>");
		sb = sb.delete(index, sb.length());
		sb.append("<br/><br/>");
		bus = queryDAO.findBusByBusNum(busnum);
		startSt = queryDAO.findByStID(bus.getStartStation());
		enSt = queryDAO.findByStID(bus.getEndStation());
		return "queryBusNum";
	}

	/**
	 * 取出list中存放的最小的数
	 * 
	 * @return
	 */
	public int getMin(List<Integer> list) {
		return 0;
	}

	public List<String> getSt2() {
		return st2;
	}

	public void setSt2(List<String> st2) {
		this.st2 = st2;
	}

	public String getBeginSt() {
		return beginSt;
	}

	public void setBeginSt(String beginSt) {
		this.beginSt = beginSt;
	}

	public String getEndSt() {
		return endSt;
	}

	public void setEndSt(String endSt) {
		this.endSt = endSt;
	}

	public StringBuffer getSb() {
		return sb;
	}

	public void setSb(StringBuffer sb) {
		this.sb = sb;
	}

	public List<String> getSbs() {
		return sbs;
	}

	public void setSbs(List<String> sbs) {
		this.sbs = sbs;
	}

	public String getSt() {
		return st;
	}

	public void setSt(String st) {
		this.st = st;
	}

	public List<BusStation> getBusSts() {
		return busSts;
	}

	public void setBusSts(List<BusStation> busSts) {
		this.busSts = busSts;
	}

	public Bus getBus() {
		return bus;
	}

	public void setBus(Bus bus) {
		this.bus = bus;
	}

	public String getBusnum() {
		return busnum;
	}

	public void setBusnum(String busnum) {
		this.busnum = busnum;
	}

	public List<Station> getBusNumSts() {
		return busNumSts;
	}

	public void setBusNumSts(List<Station> busNumSts) {
		this.busNumSts = busNumSts;
	}

	public Station getStartSt() {
		return startSt;
	}

	public void setStartSt(Station startSt) {
		this.startSt = startSt;
	}

	public Station getEnSt() {
		return enSt;
	}

	public void setEnSt(Station enSt) {
		this.enSt = enSt;
	}

	public List<Station> getSts() {
		return sts;
	}

	public void setSts(List<Station> sts) {
		this.sts = sts;
	}

	public List<Bus> getBuses() {
		return buses;
	}

	public void setBuses(List<Bus> buses) {
		this.buses = buses;
	}

	public QueryDao getQueryDAO() {
		return queryDAO;
	}

	public void setQueryDAO(QueryDao queryDAO) {
		this.queryDAO = queryDAO;
	}
}

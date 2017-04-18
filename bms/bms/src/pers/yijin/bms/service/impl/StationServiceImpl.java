package pers.yijin.bms.service.impl;

import java.util.List;

import pers.yijin.bms.dao.StationDao;
import pers.yijin.bms.domain.Station;
import pers.yijin.bms.page.PageBean;
import pers.yijin.bms.service.StationService;

public class StationServiceImpl implements StationService {
	private StationDao stationDao;

	public void setStationDao(StationDao stationDao) {
		this.stationDao = stationDao;
	}

	public PageBean<Station> findAllByPageWithNoCondition(int pageNum,
			int pageSize) {
				//获取总记录数
				int totalRecord = this.stationDao.getTotalRecord("",null);
				//创建pageBean对象
				PageBean<Station> pageBean = new PageBean<Station>(pageNum, pageSize, totalRecord);
				//进行分页查询，获得分页数据
				List<Station> data = this.stationDao.findAllByPage("", null, pageBean.getStartIndex(), pageSize);
				pageBean.setData(data);
				return pageBean;
	}

	@Override
	public List<Station> findAll() {
		return stationDao.findAll();
	}

	@Override
	public void addStation(Station model) {
		stationDao.save(model);
	}

	@Override
	public void deleteStationById(Station model) {
		stationDao.delete(model);
	}

	@Override
	public Station findStationById(Station model) {
		return stationDao.findById(model.getId());
	}

	@Override
	public void updateStationById(Station model) {
		stationDao.update(model);
	}

}

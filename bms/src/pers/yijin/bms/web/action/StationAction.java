package pers.yijin.bms.web.action;

import org.apache.struts2.ServletActionContext;

import pers.yijin.bms.base.BaseAction;
import pers.yijin.bms.domain.Station;
import pers.yijin.bms.page.PageBean;
@SuppressWarnings("serial")
public class StationAction extends BaseAction<Station> {
	
	public String showInfo(){
		PageBean<Station> pageBean = this.getStationService().findAllByPageWithNoCondition(this.getPageNum(), this.getPageSize());
		this.push(pageBean);
		return "showInfo";
	}
	
	public String toAddStation(){
		return "toAddStation";
	}
	
	public String addStation(){
		this.getStationService().addStation(this.getModel());
		return "addStation";
	}
	
	public String deleteStationById(){
		this.getStationService().deleteStationById(this.getModel());
		return "deleteStationById";
	}
	
	public String updateStationByIdForUI(){
		Station station = this.getStationService().findStationById(this.getModel());
		this.push(station);
		return "updateStationByIdForUI";
	}
	
	public String updateStation(){
		this.getStationService().updateStationById(this.getModel());
		return "updateStation";
	}
	
	public String findStationByName() throws Exception{
		Station station = this.getStationService().findStationByName(this.getModel().getStationName());
		ServletActionContext.getResponse().setContentType("text/html;charset=UTF-8");
		if(station != null)
		{
			ServletActionContext.getResponse().getWriter().write("站点已被添加过");
		}else{
			ServletActionContext.getResponse().getWriter().print("站点可以使用");
		}
		return "none";
	}
}

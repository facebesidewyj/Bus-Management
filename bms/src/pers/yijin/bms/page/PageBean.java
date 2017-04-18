package pers.yijin.bms.page;

import java.util.List;

/**
 * 用于存放分页数据的类
 */
public class PageBean<T> {

	private int pageNum; // 第几页
	private int pageSize; // 每页显示的个数
	private int totalRecord;// 总记录数

	private int startIndex; // 开始索引
	private int totalPage; // 总分页数

	private List<T> data; // 查询到的分页数据集合

	// 动态显示条
	private int start;
	private int end;

	// 生成一个三个参数的构造方法，使对象被创建时，所有参数就都被赋值
	public PageBean(int pageNum, int pageSize, int totalRecord) {
		super();
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.totalRecord = totalRecord;

		// 计算开始索引
		this.startIndex = (this.pageNum - 1) * this.pageSize;
		// 计算总分页数
		this.totalPage = (this.totalRecord + this.pageSize - 1) / this.pageSize;

		// 动态显示条的初始值
		this.start = 1;
		this.end = 10;

		// 判断总分页数和动态显示的关系，如果总分页数比10小，则动态显示条最大为总分页数
		if (this.totalPage <= 10) {
			this.end = this.totalPage;
		} else {
			// 如果总分页数比10大，则动态显示的start值应为当前页减去4页，end值为当前页加上5页
			this.start = this.pageNum - 4;
			this.end = this.pageNum + 5;
			// 当前页为前4页时，如果当start的值为负数时，则start恒定为1，end为10
			if (this.start < 1) {
				this.start = 1;
				this.end = 10;
			}
			// 当前页为最后5页，则end值肯定比总分页数大，这时需要使end等于总分页数
			if (this.end > this.totalPage) {
				this.end = this.totalPage;
				this.start = this.end - 9;
			}
		}
	}

	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRecord() {
		return totalRecord;
	}

	public void setTotalRecord(int totalRecord) {
		this.totalRecord = totalRecord;
	}

	public int getStartIndex() {
		return startIndex;
	}

	public void setStartIndex(int startIndex) {
		this.startIndex = startIndex;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getData() {
		return data;
	}

	public void setData(List<T> data) {
		this.data = data;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getEnd() {
		return end;
	}

	public void setEnd(int end) {
		this.end = end;
	}

}

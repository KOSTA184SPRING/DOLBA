package com.dolba.util;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.dolba.dto.SitterDTO;

public class PagingUtil {
	
	private Map<Integer, List> map = new HashMap<>();
	private List list;
	private int curPage;
	
	private int startPage; //pagenav���� ����������
	private int endPage; //pagenav���� ��������
	
	private int totalCount; //��ü �Խù� ��
	
	private int totalPage; //��ü ����¡ ��
	
	private static int pageWidth = 5; //pagenav�� ������ ������ ���� 
	
	private static int pageHeight = 5;
	
	public PagingUtil(List list,int curPage) {
		this.list = list;
		if(curPage > 0 ) {
			this.curPage = curPage-1;
		}
		this.totalCount = list.size();
		
		/*
		 * ��ü �Խù��� 
		 */
		for(int i=0;i<(list.size()/pageWidth + 1) ;i++) {
			List plist = new ArrayList<>(); //�� �������� �������� �Խù� ����Ʈ
			for(int j=0;j<pageHeight;j++) {
				if(i*pageHeight+j < totalCount) {
					plist.add(list.get(i*pageHeight+j));
				}
			}
			map.put(i, plist);
		}
		if(totalCount%pageWidth == 0) {
			this.totalPage=map.size()-1;
		}else {
			this.totalPage=map.size();
		}
		if(curPage > this.totalPage) {
			this.curPage=this.totalPage-1;
		}
		this.startPage=(this.curPage/pageWidth)*pageWidth+1;
		this.endPage=this.startPage+pageWidth-1;
	}
	
	public List getCurList(int curPage){
		return map.get(curPage);
	}

	public Map<Integer, List> getMap() {
		return map;
	}

	public void setMap(Map<Integer, List> map) {
		this.map = map;
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public static int getPageWidth() {
		return pageWidth;
	}

	public static void setPageWidth(int pageWidth) {
		PagingUtil.pageWidth = pageWidth;
	}
	
	
}

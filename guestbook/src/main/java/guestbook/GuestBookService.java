package guestbook;

import java.util.ArrayList;

public class GuestBookService {
	private GuestBookDao dao;
	
	public GuestBookService() {
		dao = new GuestBookDao();
	}
	
	/**
	 * 초기 진입시 전체 목록 리스트 불러오기
	 * @return
	 */
	public ArrayList<GuestBookVo> getAll() {
		return dao.getAll();
	}
	
	/**
	 * 글작성
	 * @param vo
	 */
	public void addContent(GuestBookVo vo) {
		dao.addContent(vo);
	}
}

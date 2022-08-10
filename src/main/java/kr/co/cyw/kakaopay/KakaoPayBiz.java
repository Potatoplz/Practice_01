package kr.co.cyw.kakaopay;

import java.util.List;

public interface KakaoPayBiz {
	public List<KakaoPayDto> selectList();
	public int insert(KakaoPayDto dto);
	public int delete(int pay_seq);
	public int adStatusChange(int bd_no);
}
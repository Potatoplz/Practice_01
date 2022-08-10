package kr.co.cyw.kakaopay;

import java.util.List;
import java.util.Map;

public interface KakaoPayDao {

	
	String NAMESPACE = "KakaoPay.";

	public List<KakaoPayDto> selectList();
	public int insert(KakaoPayDto dto);
	public int delete(int pay_seq);
	public int adStatusChange(int bd_no);

}
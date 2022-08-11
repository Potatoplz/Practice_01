package kr.co.cyw.kakaopay2;

import java.util.Date;

import lombok.Data;

//https://jungkeung.tistory.com/149
//https://blog.naver.com/smasu33/222783608228
@Data
public class KakaoPayApprovalVO {
	private static KakaoPayApprovalVO kakaoPayApprovalVO = new KakaoPayApprovalVO();
    private KakaoPayApprovalVO() {
        System.out.println("22Singleton Instance Created..");
    }
    public static KakaoPayApprovalVO getInstance() {
        return kakaoPayApprovalVO;
    }
    //response
    private String aid, tid, cid, sid;
    private String partner_order_id, partner_user_id, payment_method_type;
    private AmountVO amount;
    private CardVO card_info;
    private String item_name, item_code, payload;
    private Integer quantity, tax_free_amount;
//    private Integer quantity, tax_free_amount, vat_amount;
    private Date created_at, approved_at;
    
    
}
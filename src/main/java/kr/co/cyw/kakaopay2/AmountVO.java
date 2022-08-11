package kr.co.cyw.kakaopay2;

import lombok.Data;

@Data
public class AmountVO {
 
    private Integer total, tax_free, vat, point, discount;
}

package com.bitcamp.TFDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class ReviewListDTO {
	private int ReviewNo;
	private String ReviewDate;
	private String ReviewContent;
	private int count;
	private int UserNo;
	private int StoreNo;
}

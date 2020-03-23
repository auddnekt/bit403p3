package com.bitcamp.TFDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewListDTO {
	private int StoreReviewNo;
	private String StoreReviewDate;
	private String StoreReviewContent;
	private int StoreCount;
	private int UserNo;
	private int StoreNo;
}

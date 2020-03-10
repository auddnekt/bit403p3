package com.bitcamp.TFDTO;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class NoticeListDTO {
	private int NoticeNo;
	private String NoticeTitle;
	private String NoticeDate;
	private String NoticeContent;
	private int UserNo;
}

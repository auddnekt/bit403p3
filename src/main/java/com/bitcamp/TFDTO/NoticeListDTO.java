package com.bitcamp.TFDTO;


import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeListDTO {
	private int NoticeNo;
	private String NoticeTitle;
	private String NoticeContent;
	private String InsertTime;
}

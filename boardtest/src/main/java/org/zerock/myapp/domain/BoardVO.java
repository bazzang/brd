package org.zerock.myapp.domain;

import java.sql.Timestamp;

import lombok.Value;

@Value
public class BoardVO {
	private Integer bno;
	private String title;
	private String writer;
	private Timestamp writeDt;
	private Integer view_cnt;
	private String content;
	private String con_pw;
	private Timestamp udt_dt;
}
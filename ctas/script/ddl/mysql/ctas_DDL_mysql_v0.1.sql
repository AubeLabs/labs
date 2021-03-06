/* 평가 */
CREATE TABLE ASSESSMENT
(
	ORGNZT_ID				VARCHAR(20) NOT NULL, /* 조직코드 */
	AI_CD						VARCHAR(15)	NOT NULL, /* 평가지표코드 : 공통코드(CTA001) */
	ASSESS_FILE_ID			CHAR(20) NOT NULL, /* 평가파일ID */
	ASSESS_USR_ID			VARCHAR(20) NULL, /* 평가자 */
	FRST_REGIST_PNTTM		DATETIME NULL,
	FRST_REGISTER_ID		VARCHAR(20) NULL,
	LAST_UPDT_PNTTM		DATETIME NULL,
	LAST_UPDUSR_ID			VARCHAR(20) NULL,
	RATING_SCORE			NUMERIC(3) NULL, /* 평정점수 */
	RATING_USR_ID        VARCHAR(20) NULL, /* 평정자 */
	 PRIMARY KEY (ORGNZT_ID, AI_CD)
)
;

CREATE UNIQUE INDEX ASSESSMENT_PK ON ASSESSMENT
(
	ORGNZT_ID,
	AI_CD
)
;

/* 평가첨부파일 */
CREATE TABLE ASSESS_ATCH_FILE
(
	ORGNZT_ID				VARCHAR(20) NOT NULL, /* 조직코드 */
	AI_CD						VARCHAR(15)	NOT NULL, /* 평가지표코드 : 공통코드(CTA001) */
	SEQ_NO					NUMERIC(18)	NOT NULL, /* 일련번호 */
	ATCH_FILE_ID			CHAR(20) NOT NULL, /* 첨부파일ID */
	FRST_REGIST_PNTTM		DATETIME NULL,
	FRST_REGISTER_ID		VARCHAR(20) NULL,
	 PRIMARY KEY (ORGNZT_ID, AI_CD, SEQ_NO)
)
;

CREATE UNIQUE INDEX ASSESS_ATCH_FILE_PK ON ASSESS_ATCH_FILE
(
	ORGNZT_ID,
	AI_CD,
	SEQ_NO
)
;


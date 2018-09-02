.n64
.if _CART_HACK==1
.open "game/NUD-DSCJ-JPN.n64","game/NUD-DSCJ-KOR.n64", 0x000000
.else
.open "game/NUD-DSCJ-JPN.ndd","game/NUD-DSCJ-KOR.ndd", 0x000000
.endif
.table "sjis_2.tbl"
//A1A1=　=>20=　
.macro seek,n
.if _CART_HACK==1
	.orga n - 0x727D8
.else
	.orga n
.endif
.endmacro

.macro TextStyle1,n, TEXT
	seek n
	.stringn TEXT 
.endmacro

.macro base,n
	.headersize n-orga()
.endmacro

.macro putTextnoSeek, text
  .stringn text
  dh 0x0000
.endmacro

seek 0x15EAB0
.incbin "simcity64_kor.fnt"

;Disk reading/errors
;RAM:8005D9F0
;ROM:D0EB0	
; 1		！”＃＄％＆’（）＊＋、ー。／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［￥］＾＿‘ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ｛｜｝￣\End\
;D0F70


//VWF Hack
; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 000BCEA8, EndOffset: 000BCEC3, 길이: 0000001C */
seek 0xBCEA8+0x727D8
	db 0x3C, 0x02, 0x80, 0x21, 0x15, 0xA0, 0x00, 0x03, 0x84, 0x44, 0x61, 0x90
	db 0xA0, 0x40, 0x61, 0xDB, 0x01, 0x6E, 0x20, 0x21, 0x0C, 0x08, 0x19, 0x0E
	db 0x01, 0xE3, 0x28, 0x21
; };
; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN-원본.n64 (2015-05-22 오후 4:38:58)
   ; StartOffset: 000C3B27, EndOffset: 000C3B27, 길이: 00000001 */

; unsigned char rawData[1] = {
	; 0x3d
; };
; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN-원본.n64 (2015-05-22 오후 4:38:58)
   ; StartOffset: 000C41D7, EndOffset: 000C41D7, 길이: 00000001 */

; unsigned char rawData[1] = {
	; 0x3d
; };

; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 0012ABB0, EndOffset: 0012AC7F, 길이: 000000D0 */

seek 0x12ABB0+0x727D8
	db 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04
	db 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04, 0x04
	db 0x04, 0x04, 0x05, 0x05, 0x00, 0x05, 0x05, 0x05, 0x05, 0x06, 0x04, 0x05
	db 0x04, 0x05, 0x05, 0x05, 0x04, 0x04, 0x04, 0x05, 0x05, 0x04, 0x04, 0x05
	db 0x05, 0x06, 0x05, 0x05, 0x05, 0x04, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05
	db 0x06, 0x05, 0x05, 0x05, 0x05, 0x04, 0x04, 0x05, 0x05, 0x06, 0x06, 0x05
	db 0x05, 0x04, 0x05, 0x05, 0x04, 0x04, 0x05, 0x05, 0x05, 0x05, 0x05, 0x05
	db 0x05, 0x04, 0x05, 0x06, 0x05, 0x05, 0x06, 0x04, 0x05, 0x04, 0x06, 0x05
	db 0x3C, 0x05, 0x80, 0x21, 0x24, 0xA5, 0x61, 0x90, 0x80, 0xB0, 0x00, 0x4B
	db 0x12, 0x00, 0x00, 0x12, 0x24, 0x0C, 0x00, 0x7F, 0x16, 0x0C, 0x00, 0x06
	db 0x00, 0x00, 0x00, 0x00, 0x14, 0x50, 0x00, 0x04, 0x84, 0xAC, 0x00, 0x00
	db 0x25, 0x8C, 0x00, 0x12, 0x10, 0x00, 0x00, 0x0B, 0xA4, 0xAC, 0x00, 0x00
	db 0x84, 0xAC, 0x00, 0x00, 0x10, 0x0C, 0x00, 0x07, 0x26, 0x10, 0xFF, 0xE0
	db 0x3C, 0x11, 0x80, 0x13, 0x26, 0x31, 0x7B, 0xD0, 0x02, 0x11, 0x88, 0x21
	db 0x82, 0x30, 0x00, 0x00, 0x01, 0x90, 0x60, 0x23, 0x25, 0x8C, 0x00, 0x04
	db 0xA4, 0xAC, 0x00, 0x00, 0x14, 0x20, 0x00, 0x03, 0x3C, 0x0C, 0x80, 0x21
	db 0x08, 0x08, 0x18, 0x21, 0xA0, 0xA0, 0x00, 0x4B, 0x08, 0x08, 0x18, 0x23
	db 0xA0, 0xA2, 0x00, 0x4B
; };
; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 001424E4, EndOffset: 001424E4, 길이: 00000001 */

; unsigned char rawData[1] = {
	; 0x08
; };

; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 001424E4, EndOffset: 001424E7, 길이: 00000004 */

; unsigned char rawData[4] = {
	; 0x08, 0x04, 0xDF, 0x0C
; };

; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 00142A75, EndOffset: 00142A75, 길이: 00000001 */

; unsigned char rawData[1] = {
	; 0x46
; };
; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 00142AA1, EndOffset: 00142AA1, 길이: 00000001 */

; unsigned char rawData[1] = {
	; 0x26
; };
; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 00142ABD, EndOffset: 00142ABD, 길이: 00000001 */

; unsigned char rawData[1] = {
	; 0x46
; };
; /* D:\Users\문서\Project 64U_25_09_2015\새 폴더 (2)\game\NUD-DSCJ-JPN.n64 (2018-05-07 오후 10:55:10)
   ; StartOffset: 0014B559, EndOffset: 0014B559, 길이: 00000001 */







.include"text/text_144088.asm";HUD and Game
.include"text/text_17c6c8.asm";HUD and Game
.include"text/text_17ddf8.asm";HUD and Game
.include"text/text_17e3a8.asm";HUD and Game
TextStyle1 0x190D38,"５つのシナリオをクリアしたので、\n신しいシナリオが추가されました。\e"
; 190D38	190D7C	;HUD and Game
; 1		５つのシナリオをクリアしたので、\LineBreak\新しいシナリオが追加されました。\End\

.include"text/text_190D98.asm";HUD and Game		
.include"text/text_191138.asm";HUD and Game

seek 0x193948
.incbin "gfx/gfx_193948.i8"
.include"text/text_194E9C.asm";HUD and Game
.include"text/text_19bba4.asm";HUD and Game
;19BC48;HUD and Game
.include"text/text_19CA18.asm";HUD and Game

;6B0B6C;Query Window
;TextStyle1 0x6B0B6C,":불명\e"
TextStyle1 0x6B0B74,": 불명\e"
TextStyle1 0x6B0B7C,": %d73명\e"
TextStyle1 0x6B0B84,": %d73명\e"
TextStyle1 0x6B0B8C,"입장자\e"
TextStyle1 0x6B0B94,"바니걸"
TextStyle1 0x6B0BA4,"（트럼프 게임"
TextStyle1 0x6B0BB8,"　을 즐길수 있습니다）"
TextStyle1 0x6B0BCC,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0BDC,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0BEC,": 불명\e"
TextStyle1 0x6B0BF4,": 불명\e"
TextStyle1 0x6B0BFC,": 불명\e"
TextStyle1 0x6B0C04,": %d73명\e"
TextStyle1 0x6B0C0C,": %d73마리\e"
TextStyle1 0x6B0C14,": ＄%d73\e"
TextStyle1 0x6B0C1C,"입장자\e"
TextStyle1 0x6B0C24,"펭귄 레이서\e"
TextStyle1 0x6B0C38,"수입 (전년도)"
TextStyle1 0x6B0C48,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0C58,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0C68,"건설: 불명"
TextStyle1 0x6B0C74,": 불명"
TextStyle1 0x6B0C7C,"건설: %d73년"
TextStyle1 0x6B0C88,": %d73명"
TextStyle1 0x6B0C90,"소재: 불명"
TextStyle1 0x6B0C9C,"마리오와 악수!\e"
TextStyle1 0x6B0CAC,"（전망실에서"
TextStyle1 0x6B0CBC,"　거리를 볼 수 있습니다）"
TextStyle1 0x6B0CD0,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0CE0,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0CF0,"건설: 불명"
TextStyle1 0x6B0CFC,": 불명"
TextStyle1 0x6B0D04,"건설: %d73년"
TextStyle1 0x6B0D10,": %d73명"
TextStyle1 0x6B0D18,"재질: 대리석"
TextStyle1 0x6B0D28,"감동した인"
TextStyle1 0x6B0D34,"（ソーラー발전소"
TextStyle1 0x6B0D48,"　の전력を２배）"
TextStyle1 0x6B0D5C,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0D6C,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0D7C,": 불명"
TextStyle1 0x6B0D84,": 불명"
TextStyle1 0x6B0D8C,": 불명"
TextStyle1 0x6B0D94,": %d73명"
TextStyle1 0x6B0D9C,": %d73명"
TextStyle1 0x6B0DA4,": ＄%d73"
TextStyle1 0x6B0DAC,"입장자"
TextStyle1 0x6B0DB4,"전んだ인"
TextStyle1 0x6B0DC0,"수입（전년도）"
TextStyle1 0x6B0DD0,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0DE0,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0DF0,": 불명"
TextStyle1 0x6B0DF8,": 불명"
TextStyle1 0x6B0E00,": %d73명"
TextStyle1 0x6B0E08,": %d73개"
TextStyle1 0x6B0E10,"환영している시민"
TextStyle1 0x6B0E24,"감시カメラ수"
TextStyle1 0x6B0E34,"（경찰서と형무소"
TextStyle1 0x6B0E48,"　の효과がある）"
TextStyle1 0x6B0E5C,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0E6C,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0E7C,": 불명"
TextStyle1 0x6B0E84,": 불명"
TextStyle1 0x6B0E8C,": %d73명"
TextStyle1 0x6B0E94,": %d73개"
TextStyle1 0x6B0E9C,"대원"
TextStyle1 0x6B0EA4,"훈장の수"
TextStyle1 0x6B0EB0,"（スーパー소방대"
TextStyle1 0x6B0EC4,"　が파견가능！）"
TextStyle1 0x6B0ED8,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0EE8,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0EF8,"건설: 불명"
TextStyle1 0x6B0F04,": 불명"
TextStyle1 0x6B0F0C,"건설: %d73년"
TextStyle1 0x6B0F18,": %d73명"
TextStyle1 0x6B0F20,"ノリノリの인"
TextStyle1 0x6B0F30,"（ＢＧＭが"
TextStyle1 0x6B0F3C,"　연주できます）"
TextStyle1 0x6B0F50,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0F60,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0F70,": 불명"
TextStyle1 0x6B0F78,": 불명"
TextStyle1 0x6B0F80,": %d73조"
TextStyle1 0x6B0F88,": %d73명"
TextStyle1 0x6B0F90,"방れたカップル"
TextStyle1 0x6B0FA0,"입장자수"
TextStyle1 0x6B0FAC,"（スギの목が"
TextStyle1 0x6B0FBC,"　생えてきます）"
TextStyle1 0x6B0FD0,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B0FE0,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B0FF0,"건축: 불명"
TextStyle1 0x6B0FFC,": 불명"
TextStyle1 0x6B1004,"건축: %d73년"
TextStyle1 0x6B1010,": %d73회"
TextStyle1 0x6B1018,"재질: 수정"
TextStyle1 0x6B1024,"풍の취いた수"
TextStyle1 0x6B1034,"（풍력발전소の"
TextStyle1 0x6B1044,"　전력が２배！）"
TextStyle1 0x6B1058,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1068,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1078,"설치수"
TextStyle1 0x6B1080,": %d73기"
TextStyle1 0x6B1088,"최대출력の합계"
TextStyle1 0x6B1098,": %d73ＭＷ"
TextStyle1 0x6B10A4,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B10B4,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B10C4,": 불명"
TextStyle1 0x6B10CC,": 불명"
TextStyle1 0x6B10D4,": %d73ＭＷ"
TextStyle1 0x6B10E0,": %d73ＭＷ"
TextStyle1 0x6B10EC,"설치수"
TextStyle1 0x6B10F4,": %d73기"
TextStyle1 0x6B10FC,"최대출력の합계"
TextStyle1 0x6B110C,"현재の출력の합계"
TextStyle1 0x6B1120,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1130,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1140,": 불명"
TextStyle1 0x6B1148,": 불명"
TextStyle1 0x6B1150,": 불명"
TextStyle1 0x6B1158,": %d73ＭＷ"
TextStyle1 0x6B1164,": %d73년"
TextStyle1 0x6B116C,": %d73ＭＷ"
TextStyle1 0x6B1178,"최대출력"
TextStyle1 0x6B1184,"잔り내구년수"
TextStyle1 0x6B1194,"현재の출력"
TextStyle1 0x6B11A0,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B11B0,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B11C0,": 불명"
TextStyle1 0x6B11C8,": 불명"
TextStyle1 0x6B11D0,": %d73ＭＷ"
TextStyle1 0x6B11DC,": %d73년"
TextStyle1 0x6B11E4,"최대출력"
TextStyle1 0x6B11F0,"잔り내구년수"
TextStyle1 0x6B1200,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1210,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1220,"의원: 불명"
TextStyle1 0x6B122C,"건설: 불명"
TextStyle1 0x6B1238,"의원: %d73명"
TextStyle1 0x6B1244,"건설: %d73년"
TextStyle1 0x6B1250,"（자동차に"
TextStyle1 0x6B125C,"　승차가능です）"
TextStyle1 0x6B1270,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1280,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1290,"환자: 불명"
TextStyle1 0x6B129C,"의자: 불명"
TextStyle1 0x6B12A8,"ランク: 불명"
TextStyle1 0x6B12B8,"환자: %d73명"
TextStyle1 0x6B12C4,"의자: %d73명"
TextStyle1 0x6B12D0,"ランク: %d73"
TextStyle1 0x6B12DC,"ベッド: %d73"
TextStyle1 0x6B12E8,"합계수: %d73"
TextStyle1 0x6B12F4,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1304,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1314,"경찰관: 불명"
TextStyle1 0x6B1324,": 불명"
TextStyle1 0x6B132C,": 불명"
TextStyle1 0x6B1334,"경찰관: %d73명"
TextStyle1 0x6B1344,": %d73건"
TextStyle1 0x6B134C,": %d73명"
TextStyle1 0x6B1354,"범죄발생"
TextStyle1 0x6B1360,"체포자"
TextStyle1 0x6B1368,"합계수: %d73"
TextStyle1 0x6B1374,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1384,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1394,"소방사: 불명"
TextStyle1 0x6B13A4,"소방차: 불명"
TextStyle1 0x6B13B4,"출동시간: 불명"
TextStyle1 0x6B13C4,"소방사: %d73명"
TextStyle1 0x6B13D4,"소방차: %d73태"
TextStyle1 0x6B13E4,"출동시간: %d73분"
TextStyle1 0x6B13F4,"합계수: %d73"
TextStyle1 0x6B1400,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1410,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1420,": 불명"
TextStyle1 0x6B1428,": 불명"
TextStyle1 0x6B1430,": %d73명"
TextStyle1 0x6B1438,": %d73"
TextStyle1 0x6B1440,"리용자"
TextStyle1 0x6B1448,"전시물の합계"
TextStyle1 0x6B1458,"합계수: %d73"
TextStyle1 0x6B1464,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1474,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1484,": 불명"
TextStyle1 0x6B148C,"관리인: 불명"
TextStyle1 0x6B149C,": %d73명"
TextStyle1 0x6B14A4,"관리인: %d73명"
TextStyle1 0x6B14B4,"리용자"
TextStyle1 0x6B14BC,"면적"
TextStyle1 0x6B14C4,": %d73"
TextStyle1 0x6B14CC,"합계수: %d73"
TextStyle1 0x6B14D8,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B14E8,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B14F8,"생도: 불명"
TextStyle1 0x6B1504,"교사: 불명"
TextStyle1 0x6B1510,"ランク: 불명"
TextStyle1 0x6B1520,"생도: %d73명"
TextStyle1 0x6B152C,"교사: %d73명"
TextStyle1 0x6B1538,"ランク: %d73"
TextStyle1 0x6B1544,"최대: %d73명"
TextStyle1 0x6B1550,"합계수: %d73"
TextStyle1 0x6B155C,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B156C,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B157C,"불명"
TextStyle1 0x6B1584,": 불명"
TextStyle1 0x6B158C,"승패: 불명"
TextStyle1 0x6B159C,": %d73명"
TextStyle1 0x6B15A4,"승패: %d73"
TextStyle1 0x6B15AC,"−%d73"
TextStyle1 0x6B15B4,"チーム명"
TextStyle1 0x6B15C0,"래장수"
TextStyle1 0x6B15C8,"합계수: %d73"
TextStyle1 0x6B15D4,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B15E4,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B15F4,": 불명"
TextStyle1 0x6B15FC,": 불명"
TextStyle1 0x6B1604,": %d73명"
TextStyle1 0x6B160C,": %%d73명"
TextStyle1 0x6B1614,"수인"
TextStyle1 0x6B161C,"도망자"
TextStyle1 0x6B1624,"합계수: %d73"
TextStyle1 0x6B1630,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1640,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1650,"학생: 불명"
TextStyle1 0x6B165C,"교수: 불명"
TextStyle1 0x6B1668,"ランク: 불명"
TextStyle1 0x6B1678,"학생: %d73명"
TextStyle1 0x6B1684,"교수: %d73명"
TextStyle1 0x6B1690,"ランク: %d73"
TextStyle1 0x6B169C,"최대: %d73명"
TextStyle1 0x6B16A8,"합계수: %d73"
TextStyle1 0x6B16B4,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B16C4,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B16D4,"キリン: 불명"
TextStyle1 0x6B16E4,"トラ: 불명"
TextStyle1 0x6B16F0,"ゾウ: 불명"
TextStyle1 0x6B16FC,"ゴリラ: 불명"
TextStyle1 0x6B170C,"キリン: %d73두"
TextStyle1 0x6B171C,"トラ: %d73두"
TextStyle1 0x6B1728,"ゾウ: %d73두"
TextStyle1 0x6B1734,"ゴリラ: %d73두"
TextStyle1 0x6B1744,"합계수: %d73"
TextStyle1 0x6B1750,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1760,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1770,"건설: 불명"
TextStyle1 0x6B177C,"건설: %d73년"
TextStyle1 0x6B1788,"고さ: %d73"
TextStyle1 0x6B1794,"소재: 동"
TextStyle1 0x6B17A0,"（カーメカニック"
TextStyle1 0x6B17B4,"　시점변경가능）"
TextStyle1 0x6B17C8,"종좌표（%d73）"
TextStyle1 0x6B17D8,"횡좌표（%d73）"

TextStyle1 0x6B17E8,"バス: 불명"
TextStyle1 0x6B17F4,": 불명"
TextStyle1 0x6B17FC,"バス: %d73태"
TextStyle1 0x6B1808,": %d73명"
TextStyle1 0x6B1810,"１일の승객수"
TextStyle1 0x6B1820,"합계수: %d73"
TextStyle1 0x6B182C,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B183C,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B184C,": 불명"
TextStyle1 0x6B1854,": %d73명"
TextStyle1 0x6B185C,"１일の승객수"
TextStyle1 0x6B186C,"합계수: %d73"
TextStyle1 0x6B1878,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1888,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1898,"지지솔: 불명"
TextStyle1 0x6B18A8,"건설: 불명"
TextStyle1 0x6B18B4,"지지솔: %d73％"
TextStyle1 0x6B18C4,"건설: %d73년"
TextStyle1 0x6B18D0,"メイド: %d73명"
TextStyle1 0x6B18E0,"부옥수: %d73"
TextStyle1 0x6B18EC,"（인탐しイベント"
TextStyle1 0x6B1900,"　が발생します）"
TextStyle1 0x6B1914,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1924,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1934,": 불명"
TextStyle1 0x6B193C,": 불명"
TextStyle1 0x6B1944,"ランク: 불명"
TextStyle1 0x6B1954,": %d73명"
TextStyle1 0x6B195C,": %d73책"
TextStyle1 0x6B1964,"ランク: %d73"
TextStyle1 0x6B1970,"리용자"
TextStyle1 0x6B1978,"장서수"
TextStyle1 0x6B1980,"합계수: %d73"
TextStyle1 0x6B198C,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B199C,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B19AC,": 불명"
TextStyle1 0x6B19B4,": %d73"
TextStyle1 0x6B19BC,"ボートの수"
TextStyle1 0x6B19C8,"합계수: %d73"
TextStyle1 0x6B19D4,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B19E4,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B19F4,": 불명"
TextStyle1 0x6B19FC,": 불명"
TextStyle1 0x6B1A04,"상태: 불명"
TextStyle1 0x6B1A10,": %d73\명"
TextStyle1 0x6B1A18,": %d73\명"
TextStyle1 0x6B1A20,"상태: %d73"
TextStyle1 0x6B1A2C,"수용인수"
TextStyle1 0x6B1A38,"주민수"
TextStyle1 0x6B1A40,"합계수: %d73"
TextStyle1 0x6B1A4C,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1A5C,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1A6C,": 불명"
TextStyle1 0x6B1A74,": 불명"
TextStyle1 0x6B1A7C,": %d73명"
TextStyle1 0x6B1A84,": %d73명"
TextStyle1 0x6B1A8C,"결혼식"
TextStyle1 0x6B1A94,"バンジージャンプ"
TextStyle1 0x6B1AA8,"（カラスに"
TextStyle1 0x6B1AB4,"　시점변경가능）"
TextStyle1 0x6B1AC8,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1AD8,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1AE8,"고도: %d73"
TextStyle1 0x6B1AF4,"지가: ＄%d73"
TextStyle1 0x6B1B00,"범죄: %d73"
TextStyle1 0x6B1B0C,"공해: %d73"
TextStyle1 0x6B1B18,"삼림タイルの합계"
TextStyle1 0x6B1B2C,": %d73"
TextStyle1 0x6B1B34,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1B44,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1B54,"교통량: %d73대"
TextStyle1 0x6B1B64,"고도: %d73"
TextStyle1 0x6B1B70,"범죄: %d73"
TextStyle1 0x6B1B7C,"공해: %d73"
TextStyle1 0x6B1B88,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1B98,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1BA8,"고도: %d73"
TextStyle1 0x6B1BB4,"범죄: %d73"
TextStyle1 0x6B1BC0,"공해: %d73"
TextStyle1 0x6B1BCC,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1BDC,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1BEC,"교통량: %d73태"
TextStyle1 0x6B1BFC,"고도: %d73"
TextStyle1 0x6B1C08,"지가: ＄%d73"
TextStyle1 0x6B1C14,"범죄: %d73"
TextStyle1 0x6B1C20,"공해: %d73"
TextStyle1 0x6B1C2C,"합계수: %d73"
TextStyle1 0x6B1C38,"접속する도로"
TextStyle1 0x6B1C48,"합계수: %d73"
TextStyle1 0x6B1C54,"접속する선로"
TextStyle1 0x6B1C64,"합계수: %d73"
TextStyle1 0x6B1C70,"접속する도로"
TextStyle1 0x6B1C80,"합계수: %d73"
TextStyle1 0x6B1C8C,"접속する고속도로"
TextStyle1 0x6B1CA0,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1CB0,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1CC0,"고도: %d73"
TextStyle1 0x6B1CCC,"지가: ＄%d73"
TextStyle1 0x6B1CD8,"범죄: %d73"
TextStyle1 0x6B1CE4,"공해: %d73"
TextStyle1 0x6B1CF0,"합계수: %d73"
TextStyle1 0x6B1CFC,"접속する선로"
TextStyle1 0x6B1D0C,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1D1C,"ｙ좌표 (%d73)\e"

TextStyle1 0x6B1D2C,"구화: %d73"
TextStyle1 0x6B1D38,"고도: %d73"
TextStyle1 0x6B1D44,"지가: ＄%d73"
TextStyle1 0x6B1D50,"범죄: %d73"
TextStyle1 0x6B1D5C,"공해: %d73"
TextStyle1 0x6B1D68,"ｘ좌표 (%d73)\e"
TextStyle1 0x6B1D78,"ｙ좌표 (%d73)\e"


;6B6A28	6B712C	Query Window
seek(0x6B6A28)
base 0x8024B200
Query_Nope:;6b0498
puttextnoSeek("なし")
Query_Low:
puttextnoSeek("낮음")
Query_Middle:
puttextnoSeek("중간")
Query_High:
puttextnoSeek("높음")
Query_Super:
puttextnoSeek("초과")

Query_Free_Land:;6b04C0
puttextnoSeek("구획 없음")
Query_Low_House:
puttextnoSeek("저밀도 주택 지구")
Query_High_House:
puttextnoSeek("고밀도 주택 지구")
Query_Low_Market:
puttextnoSeek("저밀도 상업 지구")
Query_High_Market:
puttextnoSeek("고밀도 상업 지구")
Query_Low_Factory:
puttextnoSeek("저밀도 공업 지구")
Query_High_Factory:
puttextnoSeek("고밀도 공업 지구")
Query_City_Land:
puttextnoSeek("군 관할 지구")
Query_Airport:
puttextnoSeek("공항")
Query_Port:
puttextnoSeek("항구")
Query_Empty_Land:
puttextnoSeek("공터")
Query_Waste_Land:
puttextnoSeek("황무지")
Query_Nuclear_Zone:
puttextnoSeek("방사능 오염지역")
Query_Forest:
puttextnoSeek("숲")
Query_Small_Park:
puttextnoSeek("소공원")
Query_Elctro_Cable:
puttextnoSeek("송전선")
Query_Road:
puttextnoSeek("도로")
Query_Rail:
puttextnoSeek("철도")
Query_Terminal_Entrance:
puttextnoSeek("터미널 입구")
Query_Rode_and_Cable:
puttextnoSeek("도로＋송전선")
Query_Road_and_Rail:
puttextnoSeek("도로＋철도")
Query_Rail_and_Cable:
puttextnoSeek("철도＋송전선")
Query_Highway1:
;puttextnoSeek("고속도로")
Query_Highway2:
;puttextnoSeek("고속도로")
Query_Highway3:
;puttextnoSeek("고속도로")
Query_Highway4:
puttextnoSeek("고속도로")
Query_Tsuri_Bridge:
puttextnoSeek("つり교")
Query_Bridge_Road:
puttextnoSeek("다리(도로)")
Query_Bridge_Rail:
puttextnoSeek("다리(철도)")
Query_Highway_Entrance:
puttextnoSeek("고속도로입구")
Query_Highway_Bridge:
puttextnoSeek("고속도로교")
Query_Subway_Train:
puttextnoSeek("지하철＜＞기차")
Query_Nomal_House:
puttextnoSeek("일반 주택")
Query_Middle_House:
puttextnoSeek("중류 주택")
Query_luxury_House:
puttextnoSeek("고급 주택")
Query_Gas_Station:
puttextnoSeek("주유소")
Query_Pension:
puttextnoSeek("팬션")
Query_Combination_Score:
puttextnoSeek("편의점")
Query_Multi_Perpose_Building:
puttextnoSeek("다목적 빌딩")
Query_Office_Building:
puttextnoSeek("오피스 빌딩")
Query_Storage:
puttextnoSeek("창고")
Query_Fency_Shop:
puttextnoSeek("문구점")
Query_Danger_KeepHouse:
puttextnoSeek("위험물 보관창고")
Query_Factory_PowerPlant:
puttextnoSeek("공업변전소")
Query_Under_Construction1:
Query_Under_Construction2:
puttextnoSeek("공사중")
Query_Waste_Building:
puttextnoSeek("폐≒빌딩")
Query_Apartment:
puttextnoSeek("맨션");アパート
Query_Mension:
puttextnoSeek("아파트")
Query_High_rent_Mension:
puttextnoSeek("고급 임대 아파트")
Query_High_selling_Mension:
puttextnoSeek("고급 분양 아파트")
Query_Shopping_Plaza:
puttextnoSeek("쇼핑 플라자")
Query_SuperMarket:
puttextnoSeek("슈퍼마켓")
Query_High_Hotel:
puttextnoSeek("고급 호텔")
Query_Sell_House:
puttextnoSeek("판매점")
Query_Chemical_House:
puttextnoSeek("화학처리장")
Query_Factory:
puttextnoSeek("공장")
Query_Selling_Mension:
puttextnoSeek("분양 아파트")
Query_Office_Street:
puttextnoSeek("オフィス가")
Query_Theater:
puttextnoSeek("영화관")
Query_Car_Theater:
puttextnoSeek("ドライブシアター")
Query_Parking_Lot1:
Query_Parking_Lot2:
puttextnoSeek("주차장")
Query_Historic_Build:
puttextnoSeek("역사적 건축물")
Query_Main_Building:
puttextnoSeek("본사빌딩")
Query_Special_Building:
puttextnoSeek("특수공장")
Query_Big_Storage:
puttextnoSeek("대창고")
;Query_Under_Construction2:
;puttextnoSeek("공사중")
Query_Water_PowerPlant:
puttextnoSeek("수력 발전소")
Query_Wind_PowerPlant:
puttextnoSeek("풍력 발전소")
Query_Gas_PowerPlant:
puttextnoSeek("가스 발전소")
Query_Oil_PowerPlant:
puttextnoSeek("기름 발전소")
Query_Nuclear_PowerPlant:
puttextnoSeek("핵 발전소")
Query_SunLight_PowerPlant:
puttextnoSeek("태양열 발전소")
Query_MicroWave_PowerPlant:
puttextnoSeek("마이크로웨이브 발전소")
Query_New_Nuclear_PowerPlant:
puttextnoSeek("핵융합 발전소")
Query_Coal_PowerPlant:
puttextnoSeek("석탄 발전소")
Query_City_Building:
puttextnoSeek("도시빌딩")
Query_Hospital:
puttextnoSeek("병원")
Query_Police_Station:
puttextnoSeek("경찰서")
Query_Fire_Station:
puttextnoSeek("소방서")
Query_Museum:
puttextnoSeek("박물관")
Query_Big_Park:
puttextnoSeek("대공원")
Query_School:
puttextnoSeek("학교")
Query_Stadium:
puttextnoSeek("스타디움")
Query_Prison:
puttextnoSeek("교도소")
Query_University:
puttextnoSeek("대학")
Query_Zoo:
puttextnoSeek("동물원")
Query_Statue:
puttextnoSeek("동상")
Query_Pump:
puttextnoSeek("펌프")
Query_Runway:
puttextnoSeek("활주로")
Query_Dock:
puttextnoSeek("부두")
Query_Crain:
puttextnoSeek("크레인")
Query_Control_Tower:
puttextnoSeek("컨트롤 타워")
Query_Building:
puttextnoSeek("빌딩")
Query_Unknown_Name:
puttextnoSeek("발송로")
Query_F_15b:
puttextnoSeek("F-15b")
Query_Hanger:
puttextnoSeek("행거")
Query_Subway_Station:
puttextnoSeek("지하철역")
Query_Radar:
puttextnoSeek("레이더")
Query_Water_Tank:
puttextnoSeek("저수 탱크")
Query_BusStop:
puttextnoSeek("버스정류장")
Query_Train_Station:
puttextnoSeek("기차역")
;Query_Parking_Lot2:
;puttextnoSeek("주차장")
Query_Wharf:
puttextnoSeek("선착장")
Query_Secret:
puttextnoSeek("비밀")
Query_Pakage_Storage:
puttextnoSeek("짐 보관소")
Query_Mansion_House:
puttextnoSeek("시장관저")
Query_Sewage_House:
puttextnoSeek("하수처리장")
Query_Library:
puttextnoSeek("도서관")
Query_Hangar:
puttextnoSeek("격납고")
Query_Church:
puttextnoSeek("교회")
Query_Marina:
puttextnoSeek("마리나")
Query_Micile_Luncher:
puttextnoSeek("미사일 발사대")
Query_SeaWater_Plant:
puttextnoSeek("해수처리시설")
Query_Plemus_Acro:
puttextnoSeek("플리머스 아크로")
Query_Forest_Acro:
puttextnoSeek("포레스트 아크로")
Query_Darcro:
puttextnoSeek("다크로")
Query_Exodus_Acro:
puttextnoSeek("엑소더스 아크로")
Query_Lama_Dom:
puttextnoSeek("라마 돔")
Query_SeaWater:
puttextnoSeek("염수")
Query_Water:
puttextnoSeek("물")
Query_Jpn_Cedar:
puttextnoSeek("삼나무")
Query_Poplar:
puttextnoSeek("미루나무")
Query_Plam_Tree:
puttextnoSeek("야자나무")
Query_Cactus:
puttextnoSeek("선인장")
Query_Casino:
puttextnoSeek("카지노")
Query_Penguin_Race:
puttextnoSeek("펭귄 레이스장")
Query_Mario_Statue:
puttextnoSeek("마리오상")
Query_Solar_Tower:
puttextnoSeek("솔라 타워")
Query_Club:
puttextnoSeek("클럽")
Query_Artifictial_Skii_Part:
puttextnoSeek("인공 스키장")
Query_People_See_Center:
puttextnoSeek("시민 감시 센터")
Query_S_Security:
puttextnoSeek("Ｓ・세큐리티")
Query_Shuttle_Stage:
puttextnoSeek("셔틀 기지")
Query_Settlement_Brod_Station:
puttextnoSeek("위성방송국")
Query_Buchitsuyato:
puttextnoSeek("プチシャトー")
Query_GlassWindmill:
puttextnoSeek("수정풍차")
Query_Frog_Statue:
puttextnoSeek("개구리 공양탑")
Query_Robot_Plant:
puttextnoSeek("로봇 연구소")
Query_Tower1:
;puttextnoSeek("타워")
Query_Tower2:
;puttextnoSeek("타워")
Query_Tower3:
;puttextnoSeek("타워")
Query_Tower4:
puttextnoSeek("타워")

;6b0b38
Query_Rank_F:
puttextnoSeek("Ｆ")
Query_Rank_DM:
puttextnoSeek("Ｄ−")
Query_Rank_D:
puttextnoSeek("Ｄ")
Query_Rank_DP:
puttextnoSeek("Ｄ＋")
Query_Rank_CM:
puttextnoSeek("Ｃ−")
Query_Rank_C:
puttextnoSeek("Ｃ")
Query_Rank_CP:
puttextnoSeek("Ｃ＋")
Query_Rank_BM:
puttextnoSeek("Ｂ−")
Query_Rank_B:
puttextnoSeek("Ｂ")
Query_Rank_BP:
puttextnoSeek("Ｂ＋")
Query_Rank_AM:
puttextnoSeek("Ａ−")
Query_Rank_A:
puttextnoSeek("Ａ")
Query_Rank_AP:
puttextnoSeek("Ａ＋")

seek(0x6b0498)
dw (Query_Nope);
dw (Query_Low)
dw (Query_Middle)
dw (Query_High)
dw (Query_Super)

seek(0x6b04C0)
dw (Query_Free_Land);
dw (Query_Low_House)
dw (Query_High_House)
dw (Query_Low_Market)
dw (Query_High_Market)
dw (Query_Low_Factory)
dw (Query_High_Factory)
dw (Query_City_Land)
dw (Query_Airport)
dw (Query_Port)
dw (Query_Empty_Land)
dw (Query_Waste_Land)
dw (Query_Nuclear_Zone)
dw (Query_Forest)
dw (Query_Small_Park)
dw (Query_Elctro_Cable)
dw (Query_Road)
dw (Query_Rail)
dw (Query_Terminal_Entrance)
dw (Query_Rode_and_Cable)
dw (Query_Road_and_Rail)
dw (Query_Rail_and_Cable)
dw (Query_Highway1)
dw (Query_Highway2)
dw (Query_Highway3)
dw (Query_Highway4)
dw (Query_Tsuri_Bridge)
dw (Query_Bridge_Road)
dw (Query_Bridge_Rail)
dw (Query_Highway_Entrance)
dw (Query_Highway_Bridge)
dw (Query_Subway_Train)
dw (Query_Nomal_House)
dw (Query_Middle_House)
dw (Query_luxury_House)
dw (Query_Gas_Station)
dw (Query_Pension)
dw (Query_Combination_Score)
dw (Query_Multi_Perpose_Building)
dw (Query_Office_Building)
dw (Query_Storage)
dw (Query_Fency_Shop)
dw (Query_Danger_KeepHouse)
dw (Query_Factory_PowerPlant)
dw (Query_Under_Construction1)
dw (Query_Waste_Building)
dw (Query_Apartment)
dw (Query_Mension)
dw (Query_High_rent_Mension)
dw (Query_High_selling_Mension)
dw (Query_Shopping_Plaza)
dw (Query_SuperMarket)
dw (Query_High_Hotel)
dw (Query_Sell_House)
dw (Query_Chemical_House)
dw (Query_Factory)
dw (Query_Selling_Mension)
dw (Query_Office_Street)
dw (Query_Theater)
dw (Query_Car_Theater)
dw (Query_Parking_Lot1)
dw (Query_Historic_Build)
dw (Query_Main_Building)
dw (Query_Special_Building)
dw (Query_Big_Storage)
dw (Query_Under_Construction2)
dw (Query_Water_PowerPlant)
dw (Query_Wind_PowerPlant)
dw (Query_Gas_PowerPlant)
dw (Query_Oil_PowerPlant)
dw (Query_Nuclear_PowerPlant)
dw (Query_SunLight_PowerPlant)
dw (Query_MicroWave_PowerPlant)
dw (Query_New_Nuclear_PowerPlant)
dw (Query_Coal_PowerPlant)
dw (Query_City_Building)
dw (Query_Hospital)
dw (Query_Police_Station)
dw (Query_Fire_Station)
dw (Query_Museum)
dw (Query_Big_Park)
dw (Query_School)
dw (Query_Stadium)
dw (Query_Prison)
dw (Query_University)
dw (Query_Zoo)
dw (Query_Statue)
dw (Query_Pump)
dw (Query_Runway)
dw (Query_Dock)
dw (Query_Crain)
dw (Query_Control_Tower)
dw (Query_Building)
dw (Query_Unknown_Name)
dw (Query_F_15b)
dw (Query_Hanger)
dw (Query_Subway_Station)
dw (Query_Radar)
dw (Query_Water_Tank)
dw (Query_BusStop)
dw (Query_Train_Station)
dw (Query_Parking_Lot2)
dw (Query_Wharf)
dw (Query_Secret)
dw (Query_Pakage_Storage)
dw (Query_Mansion_House)
dw (Query_Sewage_House)
dw (Query_Library)
dw (Query_Hangar)
dw (Query_Church)
dw (Query_Marina)
dw (Query_Micile_Luncher)
dw (Query_SeaWater_Plant)
dw (Query_Plemus_Acro)
dw (Query_Forest_Acro)
dw (Query_Darcro)
dw (Query_Exodus_Acro)
dw (Query_Lama_Dom)
dw (Query_SeaWater)
dw (Query_Water)
dw (Query_Jpn_Cedar)
dw (Query_Poplar)
dw (Query_Plam_Tree)
dw (Query_Cactus)
dw (Query_Casino)
dw (Query_Penguin_Race)
dw (Query_Mario_Statue)
dw (Query_Solar_Tower)
dw (Query_Club)
dw (Query_Artifictial_Skii_Part)
dw (Query_People_See_Center)
dw (Query_S_Security)
dw (Query_Shuttle_Stage)
dw (Query_Settlement_Brod_Station)
dw (Query_Buchitsuyato)
dw (Query_GlassWindmill)
dw (Query_Frog_Statue)
dw (Query_Robot_Plant)
dw (Query_Tower1)
dw (Query_Tower2)
dw (Query_Tower3)
dw (Query_Tower4)

seek(0x6b0b38)
dw (Query_Rank_F)
dw (Query_Rank_DM)
dw (Query_Rank_D)
dw (Query_Rank_DP)
dw (Query_Rank_CM)
dw (Query_Rank_C)
dw (Query_Rank_CP)
dw (Query_Rank_B)
dw (Query_Rank_BP)
dw (Query_Rank_AM)
dw (Query_Rank_A)
dw (Query_Rank_AP)

.include"text/text_6BEE60.asm";Citizen Dialogue
.include"text/text_6BF5F0.asm";Citizen Dialogue
.include"text/text_6bf870.asm";Citizen Dialogue
.include"text/text_6BFC60.asm";Citizen Dialogue		
.include"text/text_6C0D50.asm";Citizen Dialogue
.include"text/text_6C2270.asm";Citizen Dialogue
.include"text/text_6C2640.asm";Citizen Dialogue
.include"text/text_6C3340.asm";Citizen Dialogue
.include"text/text_6C3770.asm";Citizen Dialogue
.include"text/text_6C3A10.asm";Citizen Dialogue
.include"text/text_6C5250.asm";Citizen Dialogue
.include"text/text_6C5AA0.asm";Citizen Dialogue
.include"text/text_6C6140.asm";Citizen Dialogue
.include"text/text_6C6760.asm";Citizen Dialogue
; 6C7518	\End\	
; 6C751C	\End\	
; 6C7520	緑豊カナ\End\	
; 6C752C	ごーじゃすナ\End\	
; 6C753C	観光ノ目玉トナル\End\	
; 6C7550	市民ガ要求中ノ\End\	
; 6C7560	Police\End\	
; 6C7568	Fire\End\	
; 6C7570	Hospital\End\	
; 6C757C	School\End\	
; 6C7584	Stadium\End\	
; 6C758C	Plant\End\	
; 6C7594	Marina\End\	
.include"text/text_6C759C.asm"; Part of text_6C6760.asm

TextStyle1 0x6CA170,"기사がまだ전부용의されていないのじゃ。\e"
	
; 6CA15C	6CA1A0	;Small
; 1		０\End\
; 2		％\End\
; 3		\End\
; 4		\End\
; 5		\End\
; 6		記事がまだ全部用意されていないのじゃ。\End\
; 7		\End\
; 8		\End\
		
; BB4EF8	BB4F90	;Mini-Games?
; 1		人探しイベントを終了してよろしいですか？\End\
; 2		はい\End\
; 3		いいえ\End\
; 4		目的の人物を見つけることが\LineBreak\できなかったようですな……。\LineBreak\残念ですが、時間切れですぞ。\End\
; 5		\End\
		
; BB58D8	BB58F0	;Mini-Games?
; 1		これ以上進めません。\End\
		
; BB5ADC	BB5B04	;Mini-Games?
; 1		線路が無いので、これ以上進めません。\End\
		
; D852C8	D85458	;Save/Load Screen
; 1		タを上書きしてもよろしいですか？\End\
; 2		セーブ中です。\LineBreak\ディスクを抜かないでください。\End\
; 3		セーブが完了しました。\End\
; 4		ロード中です。\LineBreak\ディスクを抜かないでください。\End\
; 5		削除中です。\LineBreak\ディスクを抜かないでください。\End\
; 6		ディスクの全ての設定をクリアしますか？\End\
; 7		はい\End\
; 8		いいえ\End\
; 9		ゲームを続ける\End\
; 10		ゲームを終了する\End\
; 11		このファイルを消してもいいですか？\End\
; 12		はい\End\
; 13		いいえ\End\
; 14		はい\End\
; 15		いいえ\End\
; 16		ディスクの全ての設定をクリア中です。\End\
		
; DC2C9C	DC303C	;Bonus Buildings Window
; 1		マリオをかたどった像。\LineBreak\頭が展望室になっていて\LineBreak\中から街を見下ろすことが\LineBreak\出来ます。\End\
; 2		中世の城を半分の大きさで\LineBreak\復元したもの。\LineBreak\空き地にスギの木がたくさん\LineBreak\立ち始めます。\End\
; 3		いつでもスキーが楽しめる\LineBreak\人工のゲレンデ。\LineBreak\毎年、入場料が収入として\LineBreak\得られます。\End\
; 4		芸術家ベルナルド・ギー作の\LineBreak\エネルギッシュなオブジェ。\LineBreak\ソーラー発電所の発電量を\LineBreak\２倍にすることが出来ます。\End\
; 5		厳しい訓練に耐えぬいた\LineBreak\エリートレンジャーの基地。\LineBreak\災害時にスーパー消防隊を\LineBreak\派遣出来るようになります。\End\
; 6		可愛らしいペンギン達が\LineBreak\レースをくり広げる競技場。\LineBreak\毎年、入場料が収入として\LineBreak\得られます。\End\
; 7		世界の出来事を衛星を通じて\LineBreak\オンラインで放映する放送局\LineBreak\ゲーム中で使われたＢＧＭを\LineBreak\聞くことが出来ます。\End\
; 8		治安の悪い地域を監視して、\LineBreak\凶悪な犯罪を未然に防止する\LineBreak\警察署と刑務所の効果のある\LineBreak\特別警察隊の秘密基地。\End\
; 9		リゾート都市には欠かせない\LineBreak\ゴージャスな娯楽の殿堂。\LineBreak\トランプゲームを楽しむこと\LineBreak\が出来ます。\End\
; 10		穏やかな風を呼び寄せて、\LineBreak\風力発電所の発電量を\LineBreak\２倍にする不思議な水晶製の\LineBreak\風車。\End\
		
; DE0968	DE0AEC	;Presents Window
; 1		市民が寄付してくれた\LineBreak\とても豪華なあなたの家。\LineBreak\街の中で人探しイベントが\LineBreak\楽しめるようになります。\End\
; 2		複雑な都市運営に対応出来る\LineBreak\豪華で新しい市議会堂。\LineBreak\ミズ・トンプソンが自動車に\LineBreak\乗せてくれます。\End\
; 3		あなたの功績と名声を後世に\LineBreak\残すために作られた銅像。\LineBreak\カーメカニックがボードに\LineBreak\乗せてくれます。\End\
; 4		結婚式とバンジージャンプが\LineBreak\出来る不思議な建物。\LineBreak\カラスに話しかけると、\LineBreak\空を飛べるようになります。\End\
		
; DF6A1C	DF6D9C	;Power Plants Window
; 1		値段の割に発電量が多い\LineBreak\効率のよい発電所ですが、\LineBreak\石炭の出す黒い煙によって\LineBreak\酷い公害が発生します。\End\
; 2		水が流れる力を利用した、\LineBreak\建替えと公害の心配がない\LineBreak\クリーンな自然発電所です。\LineBreak\滝タイルの上に設置します。\End\
; 3		石炭発電所に比べて、\LineBreak\発電量が多く公害が\LineBreak\発生しにくい発電所です。\LineBreak\設置費用はやや高めです。\End\
; 4		発電量は少ないですが、\LineBreak\公害が発生しにくいという\LineBreak\長所を持ちます。\LineBreak\設置費用の安さも魅力です。\End\
; 5		発電量が多く公害が\LineBreak\発生しにくい発電所ですが、\LineBreak\恐ろしいメルトダウンを\LineBreak\起こす危険性があります。\End\
; 6		建替えと公害の心配がない\LineBreak\クリーンな自然発電所です。\LineBreak\発電量がとても少ないうえに\LineBreak\風がないと発電出来ません。\End\
; 7		太陽の光を利用した、公害の\LineBreak\心配がない発電所です。\LineBreak\太陽の出ていない日は、\LineBreak\充分な発電量を得られません\End\
; 8		人工衛星が集めたエネルギー\LineBreak\を供給するハイテク発電所。\LineBreak\発電量がとても多いうえに、\LineBreak\公害の心配もありません。\End\
; 9		他とは比較にならないほどの\LineBreak\発電量を得られます。\LineBreak\設置費用が非常に高いことが\LineBreak\唯一の欠点といえます。\End\
		
; E10638	E1079C	;Arcologies Window
; 1		重工業用に作られた\LineBreak\とても丈夫なアルコロジー。\LineBreak\公害が少し心配です。\End\
; 2		自然環境に優しい産業や\LineBreak\資源のリサイクルを奨励する\LineBreak\エコロジカルなアルコロジー\LineBreak\頂上に森があります。\End\
; 3		天才ダンテ・アクレバーが\LineBreak\従来型の反動から設計した\LineBreak\少し不気味なアルコロジー。\LineBreak\怪物が出るという噂も？\End\
; 4		究極のアルコロジー。\LineBreak\たくさんの市民を乗せて\LineBreak\宇宙に飛び立っていく、\LineBreak\……かも知れません。\End\
		

//E273C0
.include"text/free_mode.asm";New City Select
.include"text/text_E27Ec0.asm";New City Select
		
; EABC10	EABFFC	;Import Character
; 1		ペイントスタジオを持っていれば、\LineBreak\パラパラまんがを読み込んで、\LineBreak\街中にゲストとして呼ぶことが出来ます。\End\
; 2		ペイントスタジオが必要ですが、進めますか？\LineBreak\はい\LineBreak\いいえ\End\
; 3		読み込み中です。\LineBreak\ディスクを抜かないでください。\End\
; 4		登録をやめて、ゲームに戻ります。\End\
; 5		これで、よろしいですか。\LineBreak\はい\LineBreak\いいえ\End\
; 6		ゲストとして登録しました。\End\
; 7		シムシティー６４のディスクを抜いて、\LineBreak\ペイントスタジオのディスクを差してください\LineBreak\または、Ｂボタンでキャンセルできます。\End\
; 8		ペイントスタジオのディスクを抜いて、\LineBreak\シムシティー６４のディスクを差してください\End\
; 9		シムシティー６４のディスクではありません。\LineBreak\ディスクを差し直してください。\End\
; 10		ペイントスタジオのディスクではありません。\LineBreak\ディスクを差し直してください\LineBreak\または、Ｂボタンでキャンセル出来ます。\End\
; 11		シムシティー６４で読み込めるファイル名の\LineBreak\パラパラまんがのファイルがありません。\End\
; 12		シムシティー６４で読み込むパラパラまんがの\LineBreak\ファイルには、『シム』というファイル名を\LineBreak\付けてください。\End\
; 13		読み込みエラーです。\LineBreak\シムシティー６４のディスクを、\LineBreak\差し直して下さい。\End\
; 14		最後に、名前を付けて下さい。\End\
	
.include"text/scenario.asm"	  ;Scenarios
.include"text/text_FCCC00.asm";Neighbor's Window	Neighboring Cities
.include"text/dr_wright.asm"	  ;Dr. Wright's Advice
.include"text/text_1031b4c.asm";Dr. Wright Talking - R + C Up
.include"text/wright_icon_city_plan.asm";Dr. Wright Talking - R + C Up		Advice screen
.include"text/tutorial.asm";Dr. Wright Talking - R + C Up

; 1050504	105052C	;Balance and Ordinances
; 1		既に原子力発電所が建設されています。\End\

seek 0x1050540
.incbin"gfx/gfx_1050540.bin"
seek 0x1059380
.incbin"gfx/gfx_1059380.bin"
seek 0x10621C0
.incbin"gfx/gfx_10621C0.bin"
seek 0x106B000
.incbin"gfx/gfx_106B000.bin"
seek 0x1073E40
.incbin"gfx/gfx_1073E40.bin"

.include"text/text_10A5284.asm";Choose a Bridge Window
.include"text/text_110EA100.asm";Casino Card Game

TextStyle1 0x10EA668,"０１２３４５６７８９\e"
TextStyle1 0x10EA680,"よし。それじゃあ、조속やるか。\e"
TextStyle1 0x10EA6A0,"승부する\e"
TextStyle1 0x10EA6AC,"やめる\e"

; 10EA668	10EA6B4	;Casino Card Game
; 1		０１２３４５６７８９\End\
; 2		よし。それじゃあ、早速やるか。\End\
; 3		勝負する\End\
; 4		やめる\End\

.warning"exclided"
;.include"text/text_1110560.asm";Endings
	
; 1111304	111131C	
; 1		０１２３４５６７８９\End\

.include"text/beginner_table.asm";Dr. Wright Talking
.include"text/beginner_mode.asm";Dr. Wright Talking
.include"text/text_119F2C0.asm";Dr. Wright Talking
.include"text/text_119FD40.asm";Dr. Wright Talking
.include"text/text_11A0670.asm";Dr. Wright Talking
.include"text/text_11A0FA0.asm";Dr. Wright Talking
.include"text/text_11A1570.asm";Dr. Wright Talking
.include"text/text_11A1AB0.asm";Dr. Wright Talking
.include"text/text_11A1FB0.asm";Dr. Wright Talking
.include"text/text_11A2440.asm";Dr. Wright Talking
.include"text/scenario_mode.asm";Dr. Wright Talking
.include"text/scenario_table.asm";Dr. Wright Talking
.include"text/text_11A7C90.asm"		;Dr. Wright Talking
; 11C7240	11C72DC	
; 1		ＡＢＣＤＥＦＧＨ\End\
; 2		１２３４５６７８\End\
; 3		−にデータを上書きしてよろしいですか？\End\
; 4		セーブ中です。\LineBreak\ディスクを抜かないでください。\End\
; 5		セーブが完了しました。\End\
		
.include"text/text_11DA890.asm"	
TextStyle1 0x11DFF90,"このままゲームを終了してよろしいですか？\e"

; 11DFF90	11DFFBC	
; 1		このままゲームを終了してよろしいですか？\End\


; 11E02B8	11E0310	
; 1		前回と同じ−にデータを上書きします。\LineBreak\よろしいですか？\End\
; 2		−にセーブが完了しました。\End\

// Text Hack
TextStyle1 0x11C74F4, "으로？？？년\e" 
TextStyle1 0x11C7504, "으로？？년\e" 
;TextStyle1 0x11C7???, "（あと？？）\e" 
;TextStyle1 0x11C7???, "＠\e" 
TextStyle1 0x11C7524, "＆＆＆＆년\e"

; 11C74F4	11C7530	
; 1		あと？？？年\e
; 2		あと？？年\e
; 3		（あと？？）\e
; 4		＠\e
; 5		＆＆＆＆年\e

TextStyle1 0x11E0904,"セーブしていないデータは消去されます。\nこのシナリオをやり直してよろしいですか？\e"
TextStyle1 0x11E0954,"はい\e"
TextStyle1 0x11E095C,"いいえ\e"
TextStyle1 0x11E0964,"はい\e"
TextStyle1 0x11E096C,"いいえ\e"
TextStyle1 0x11E0974,"ゲームを続ける\e"
TextStyle1 0x11E0984,"ゲームを終了する\e"
TextStyle1 0x11E0998,"はい\e"
TextStyle1 0x11E09A0,"いいえ\e"

; 11E0904	11E09A8	
; 1		セーブしていないデータは消去されます。\LineBreak\このシナリオをやり直してよろしいですか？\End\
; 2		はい\End\
; 3		いいえ\End\
; 4		はい\End\
; 5		いいえ\End\
; 6		ゲームを続ける\End\
; 7		ゲームを終了する\End\
; 8		はい\End\
; 9		いいえ\End\

TextStyle1 0x11E4EDC,"으로？？？년\e" ; .stringn "ime:", 0xA1, 0xA9, 0xA1, 0xA9, 0xA1, 0xA9, "Yr", 0x00, 0x00, 0x00, 0x00
TextStyle1 0x11E4EEC,"으로？？년\e"; .stringn "ime:", 0xA1, 0xA9, 0xA1, 0xA9, "Yr", 0x00, 0x00
TextStyle1 0x11E4F2C,"부족"
TextStyle1 0x11E4F4C,"충분"
TextStyle1 0x11E4F54,"없음　　　　"


; 11FF174	11FF37C	
; 1		チェックを外すと、\LineBreak\全ての建物が表示されなくなります。\LineBreak\区画は色分けして表示されます。\End\
; 2		チェックを外すと、\LineBreak\送電線と交通施設と木タイルが\LineBreak\表示されなくなります。\End\
; 3		チェックを外すと、\LineBreak\区画の建物が表示されなくなります。\LineBreak\消えた部分は、色分けして表示します。\End\
; 4		チェックを外すと、\LineBreak\画面右下のマップが\LineBreak\表示されなくなります。\End\
; 5		チェックすると、\LineBreak\自然の災害が発生しなくなります。\End\
; 6		チェックすると、\LineBreak\災害発生時に、自動的に被災地へ\LineBreak\移動します。\End\
; 7		チェックすると、\LineBreak\老朽化した発電所が取り壊されたときに\LineBreak\自動的に同じ発電所を建替えます。\End\



; 120B494	120B634	
; 1		凄まじい炎が街を焼き尽くす\LineBreak\恐ろしい災害。\LineBreak\放っておくと、燃えるものが\LineBreak\なくなるまで燃え続けます。\End\
; 2		大地が激しく揺れて、\LineBreak\建物が倒壊します。\LineBreak\また、二次災害として\LineBreak\火事が発生します。\End\
; 3		大地が隆起し、大規模な火事\LineBreak\を発生させます。\LineBreak\地形を大きく変化させるので\LineBreak\復興には時間がかかります。\End\
; 4		宇宙から燃え盛る∵石が\LineBreak\飛来して、街に落下します。\LineBreak\建物は一瞬にして消え去り、\LineBreak\地面に大きな穴が残ります。\End\
; 5		チェックされた災害を発生\LineBreak\させます。\End\


; // Name Select Font Swap
; origin 0x1227AD4; insert "FontSwapCHR.bin" // Include Swapped Font Character Data  3 * 124 Bytes 
; origin 0x1227CC8; insert "FontSwapGFX.bin" // Include Swapped Font Character Data  3 * 240 Bytes 
; 1227AD4	1227C48	
; 1		あいうえおはひふへほ/かきくけこまみむめもさしすせそやゆよ゛゜たちつてとらりるれろなにぬねのわゐゑをんぁぃぅぇぉっゃゅょー\e
; 2		アイウエオハヒフヘホカキクケコマミムメモサシスセソヤユヨ゛゜タチツテトラリルレロナニヌネノワヰヱヲンァィゥェォッャュョー\e
; 3		ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ０１２３４５６７８９「」（）〜！？％；：、。．，＆\e
TextStyle1 0x1227B50, "아이우에오하히후헤호카키쿠케코마미무메모사시스세소야유요゛゜타치츠테토라리루레로나니누네노와위웨오응ァィゥェォッャュョー\e"
TextStyle1 0x1227C54, "당신의 이름을 입력해주세요\e" 
TextStyle1 0x1227C74, "도시의 이름을 입력해주세요\e" 
TextStyle1 0x1228374, "팀의 이름을 입력해 주세요\e"
;チームの名前をいれてください\End\
				  
TextStyle1 0x12282A0,"하히후헤호\e"
TextStyle1 0x12282B8,"파피푸페포\e"
TextStyle1 0x12282F0,"카키쿠케코사시스세소타치츠테토하히후헤호우\e"
TextStyle1 0x1228348,"가기구게고자지즈제조다디드데도바비부베보ヴ\e"

; 1228294	1228394	
; 1		はひふへほ\End\

; 12282A0
; 2		ハヒフヘホ\End\
; 3		ぱぴぷぺぽ\End\

; 12282B8
; 4		パピプペポ\End\
; 5		かきくけこさしすせそたちつてとはひふへほ\End\

; 12282F0
; 6		カキクケコサシスセソタチツテトハヒフヘホウ\End\
; 7		がぎぐげござじずぜぞだぢづでどばびぶべぼ\End\



; 1228348
; 8		ガギグゲゴザジズゼゾダヂヅデドバビブベボヴ\End\
; 9		文字を入力してください\End\

.close
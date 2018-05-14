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

seek 0x15EAB0
.incbin "simcity64_kor.fnt"
; D0EB0	D0F70	
; 1		！”＃＄％＆’（）＊＋、ー。／０１２３４５６７８９：；＜＝＞？＠ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ［￥］＾＿‘ａｂｃｄｅｆｇｈｉｊｋｌｍｎｏｐｑｒｓｔｕｖｗｘｙｚ｛｜｝￣\End\


TextStyle1 0x6B0B74,"：불명\e"

TextStyle1 0x6B0B7C,"：%d73명\e"

TextStyle1 0x6B0B84,"：%d73명\e"

TextStyle1 0x6B0B8C,"입장자"
TextStyle1 0x6B0B94,"バニーガール"
TextStyle1 0x6B0BA4,"（トランプゲーム"
TextStyle1 0x6B0BB8,"　が악しめます）"
TextStyle1 0x6B0BCC,"종좌표（%d73）\e"
TextStyle1 0x6B0BDC,"횡좌표（%d73）\e"
TextStyle1 0x6B0BEC,"：불명\e"
TextStyle1 0x6B0BF4,"：불명\e"
TextStyle1 0x6B0BFC,"：불명\e"
TextStyle1 0x6B0C04,"：%d73명\e"
TextStyle1 0x6B0C0C,"：%d73필\e"
TextStyle1 0x6B0C14,"：＄%d73\e"
TextStyle1 0x6B0C1C,"입장자"
TextStyle1 0x6B0C24,"ペンギンレーサー"
TextStyle1 0x6B0C38,"수입（전년도）"
TextStyle1 0x6B0C48,"종좌표（%d73）"
TextStyle1 0x6B0C58,"횡좌표（%d73）"
TextStyle1 0x6B0C68,"건설：불명"
TextStyle1 0x6B0C74,"：불명"
TextStyle1 0x6B0C7C,"건설：%d73년"
TextStyle1 0x6B0C88,"：%d73명"
TextStyle1 0x6B0C90,"소재：불명"
TextStyle1 0x6B0C9C,"マリオと악수！"
TextStyle1 0x6B0CAC,"（전망실から"
TextStyle1 0x6B0CBC,"　가を견れます）"
TextStyle1 0x6B0CD0,"종좌표（%d73）"
TextStyle1 0x6B0CE0,"횡좌표（%d73）"
TextStyle1 0x6B0CF0,"건설：불명"
TextStyle1 0x6B0CFC,"：불명"
TextStyle1 0x6B0D04,"건설：%d73년"
TextStyle1 0x6B0D10,"：%d73명"
TextStyle1 0x6B0D18,"재질：대리석"
TextStyle1 0x6B0D28,"감동した인"
TextStyle1 0x6B0D34,"（ソーラー발전소"
TextStyle1 0x6B0D48,"　の전력を２배）"
TextStyle1 0x6B0D5C,"종좌표（%d73）"
TextStyle1 0x6B0D6C,"횡좌표（%d73）"
TextStyle1 0x6B0D7C,"：불명"
TextStyle1 0x6B0D84,"：불명"
TextStyle1 0x6B0D8C,"：불명"
TextStyle1 0x6B0D94,"：%d73명"
TextStyle1 0x6B0D9C,"：%d73명"
TextStyle1 0x6B0DA4,"：＄%d73"
TextStyle1 0x6B0DAC,"입장자"
TextStyle1 0x6B0DB4,"전んだ인"
TextStyle1 0x6B0DC0,"수입（전년도）"
TextStyle1 0x6B0DD0,"종좌표（%d73）"
TextStyle1 0x6B0DE0,"횡좌표（%d73）"
TextStyle1 0x6B0DF0,"：불명"
TextStyle1 0x6B0DF8,"：불명"
TextStyle1 0x6B0E00,"：%d73명"
TextStyle1 0x6B0E08,"：%d73개"
TextStyle1 0x6B0E10,"환영している시민"
TextStyle1 0x6B0E24,"감시カメラ수"
TextStyle1 0x6B0E34,"（경찰서と형무소"
TextStyle1 0x6B0E48,"　の효과がある）"
TextStyle1 0x6B0E5C,"종좌표（%d73）"
TextStyle1 0x6B0E6C,"횡좌표（%d73）"
TextStyle1 0x6B0E7C,"：불명"
TextStyle1 0x6B0E84,"：불명"
TextStyle1 0x6B0E8C,"：%d73명"
TextStyle1 0x6B0E94,"：%d73개"
TextStyle1 0x6B0E9C,"대원"
TextStyle1 0x6B0EA4,"훈장の수"
TextStyle1 0x6B0EB0,"（スーパー소방대"
TextStyle1 0x6B0EC4,"　が파견가능！）"
TextStyle1 0x6B0ED8,"종좌표（%d73）"
TextStyle1 0x6B0EE8,"횡좌표（%d73）"
TextStyle1 0x6B0EF8,"건설：불명"
TextStyle1 0x6B0F04,"：불명"
TextStyle1 0x6B0F0C,"건설：%d73년"
TextStyle1 0x6B0F18,"：%d73명"
TextStyle1 0x6B0F20,"ノリノリの인"
TextStyle1 0x6B0F30,"（ＢＧＭが"
TextStyle1 0x6B0F3C,"　연주できます）"
TextStyle1 0x6B0F50,"종좌표（%d73）"
TextStyle1 0x6B0F60,"횡좌표（%d73）"
TextStyle1 0x6B0F70,"：불명"
TextStyle1 0x6B0F78,"：불명"
TextStyle1 0x6B0F80,"：%d73조"
TextStyle1 0x6B0F88,"：%d73명"
TextStyle1 0x6B0F90,"방れたカップル"
TextStyle1 0x6B0FA0,"입장자수"
TextStyle1 0x6B0FAC,"（スギの목が"
TextStyle1 0x6B0FBC,"　생えてきます）"
TextStyle1 0x6B0FD0,"종좌표（%d73）"
TextStyle1 0x6B0FE0,"횡좌표（%d73）"
TextStyle1 0x6B0FF0,"건축：불명"
TextStyle1 0x6B0FFC,"：불명"
TextStyle1 0x6B1004,"건축：%d73년"
TextStyle1 0x6B1010,"：%d73회"
TextStyle1 0x6B1018,"재질：수정"
TextStyle1 0x6B1024,"풍の취いた수"
TextStyle1 0x6B1034,"（풍력발전소の"
TextStyle1 0x6B1044,"　전력が２배！）"
TextStyle1 0x6B1058,"종좌표（%d73）"
TextStyle1 0x6B1068,"횡좌표（%d73）"
TextStyle1 0x6B1078,"설치수"
TextStyle1 0x6B1080,"：%d73기"
TextStyle1 0x6B1088,"최대출력の합계"
TextStyle1 0x6B1098,"：%d73ＭＷ"
TextStyle1 0x6B10A4,"종좌표（%d73）"
TextStyle1 0x6B10B4,"횡좌표（%d73）"
TextStyle1 0x6B10C4,"：불명"
TextStyle1 0x6B10CC,"：불명"
TextStyle1 0x6B10D4,"：%d73ＭＷ"
TextStyle1 0x6B10E0,"：%d73ＭＷ"
TextStyle1 0x6B10EC,"설치수"
TextStyle1 0x6B10F4,"：%d73기"
TextStyle1 0x6B10FC,"최대출력の합계"
TextStyle1 0x6B110C,"현재の출력の합계"
TextStyle1 0x6B1120,"종좌표（%d73）"
TextStyle1 0x6B1130,"횡좌표（%d73）"
TextStyle1 0x6B1140,"：불명"
TextStyle1 0x6B1148,"：불명"
TextStyle1 0x6B1150,"：불명"
TextStyle1 0x6B1158,"：%d73ＭＷ"
TextStyle1 0x6B1164,"：%d73년"
TextStyle1 0x6B116C,"：%d73ＭＷ"
TextStyle1 0x6B1178,"최대출력"
TextStyle1 0x6B1184,"잔り내구년수"
TextStyle1 0x6B1194,"현재の출력"
TextStyle1 0x6B11A0,"종좌표（%d73）"
TextStyle1 0x6B11B0,"횡좌표（%d73）"
TextStyle1 0x6B11C0,"：불명"
TextStyle1 0x6B11C8,"：불명"
TextStyle1 0x6B11D0,"：%d73ＭＷ"
TextStyle1 0x6B11DC,"：%d73년"
TextStyle1 0x6B11E4,"최대출력"
TextStyle1 0x6B11F0,"잔り내구년수"
TextStyle1 0x6B1200,"종좌표（%d73）"
TextStyle1 0x6B1210,"횡좌표（%d73）"
TextStyle1 0x6B1220,"의원：불명"
TextStyle1 0x6B122C,"건설：불명"
TextStyle1 0x6B1238,"의원：%d73명"
TextStyle1 0x6B1244,"건설：%d73년"
TextStyle1 0x6B1250,"（자동차に"
TextStyle1 0x6B125C,"　승차가능です）"
TextStyle1 0x6B1270,"종좌표（%d73）"
TextStyle1 0x6B1280,"횡좌표（%d73）"
TextStyle1 0x6B1290,"환자：불명"
TextStyle1 0x6B129C,"의자：불명"
TextStyle1 0x6B12A8,"ランク：불명"
TextStyle1 0x6B12B8,"환자：%d73명"
TextStyle1 0x6B12C4,"의자：%d73명"
TextStyle1 0x6B12D0,"ランク：%d73"
TextStyle1 0x6B12DC,"ベッド：%d73"
TextStyle1 0x6B12E8,"합계수：%d73"
TextStyle1 0x6B12F4,"종좌표（%d73）"
TextStyle1 0x6B1304,"횡좌표（%d73）"
TextStyle1 0x6B1314,"경찰관：불명"
TextStyle1 0x6B1324,"：불명"
TextStyle1 0x6B132C,"：불명"
TextStyle1 0x6B1334,"경찰관：%d73명"
TextStyle1 0x6B1344,"：%d73건"
TextStyle1 0x6B134C,"：%d73명"
TextStyle1 0x6B1354,"범죄발생"
TextStyle1 0x6B1360,"체포자"
TextStyle1 0x6B1368,"합계수：%d73"
TextStyle1 0x6B1374,"종좌표（%d73）"
TextStyle1 0x6B1384,"횡좌표（%d73）"
TextStyle1 0x6B1394,"소방사：불명"
TextStyle1 0x6B13A4,"소방차：불명"
TextStyle1 0x6B13B4,"출동시간：불명"
TextStyle1 0x6B13C4,"소방사：%d73명"
TextStyle1 0x6B13D4,"소방차：%d73태"
TextStyle1 0x6B13E4,"출동시간：%d73분"
TextStyle1 0x6B13F4,"합계수：%d73"
TextStyle1 0x6B1400,"종좌표（%d73）"
TextStyle1 0x6B1410,"횡좌표（%d73）"
TextStyle1 0x6B1420,"：불명"
TextStyle1 0x6B1428,"：불명"
TextStyle1 0x6B1430,"：%d73명"
TextStyle1 0x6B1438,"：%d73"
TextStyle1 0x6B1440,"리용자"
TextStyle1 0x6B1448,"전시물の합계"
TextStyle1 0x6B1458,"합계수：%d73"
TextStyle1 0x6B1464,"종좌표（%d73）"
TextStyle1 0x6B1474,"횡좌표（%d73）"
TextStyle1 0x6B1484,"：불명"
TextStyle1 0x6B148C,"관리인：불명"
TextStyle1 0x6B149C,"：%d73명"
TextStyle1 0x6B14A4,"관리인：%d73명"
TextStyle1 0x6B14B4,"리용자"
TextStyle1 0x6B14BC,"면적"
TextStyle1 0x6B14C4,"：%d73"
TextStyle1 0x6B14CC,"합계수：%d73"
TextStyle1 0x6B14D8,"종좌표（%d73）"
TextStyle1 0x6B14E8,"횡좌표（%d73）"
TextStyle1 0x6B14F8,"생도：불명"
TextStyle1 0x6B1504,"교사：불명"
TextStyle1 0x6B1510,"ランク：불명"
TextStyle1 0x6B1520,"생도：%d73명"
TextStyle1 0x6B152C,"교사：%d73명"
TextStyle1 0x6B1538,"ランク：%d73"
TextStyle1 0x6B1544,"최대：%d73명"
TextStyle1 0x6B1550,"합계수：%d73"
TextStyle1 0x6B155C,"종좌표（%d73）"
TextStyle1 0x6B156C,"횡좌표（%d73）"
TextStyle1 0x6B157C,"불명"
TextStyle1 0x6B1584,"：불명"
TextStyle1 0x6B158C,"승패：불명"
TextStyle1 0x6B159C,"：%d73명"
TextStyle1 0x6B15A4,"승패：%d73"
TextStyle1 0x6B15AC,"−%d73"
TextStyle1 0x6B15B4,"チーム명"
TextStyle1 0x6B15C0,"래장수"
TextStyle1 0x6B15C8,"합계수：%d73"
TextStyle1 0x6B15D4,"종좌표（%d73）"
TextStyle1 0x6B15E4,"횡좌표（%d73）"
TextStyle1 0x6B15F4,"：불명"
TextStyle1 0x6B15FC,"：불명"
TextStyle1 0x6B1604,"：%d73명"
TextStyle1 0x6B160C,"：%%d73명"
TextStyle1 0x6B1614,"수인"
TextStyle1 0x6B161C,"도망자"
TextStyle1 0x6B1624,"합계수：%d73"
TextStyle1 0x6B1630,"종좌표（%d73）"
TextStyle1 0x6B1640,"횡좌표（%d73）"
TextStyle1 0x6B1650,"학생：불명"
TextStyle1 0x6B165C,"교수：불명"
TextStyle1 0x6B1668,"ランク：불명"
TextStyle1 0x6B1678,"학생：%d73명"
TextStyle1 0x6B1684,"교수：%d73명"
TextStyle1 0x6B1690,"ランク：%d73"
TextStyle1 0x6B169C,"최대：%d73명"
TextStyle1 0x6B16A8,"합계수：%d73"
TextStyle1 0x6B16B4,"종좌표（%d73）"
TextStyle1 0x6B16C4,"횡좌표（%d73）"
TextStyle1 0x6B16D4,"キリン：불명"
TextStyle1 0x6B16E4,"トラ：불명"
TextStyle1 0x6B16F0,"ゾウ：불명"
TextStyle1 0x6B16FC,"ゴリラ：불명"
TextStyle1 0x6B170C,"キリン：%d73두"
TextStyle1 0x6B171C,"トラ：%d73두"
TextStyle1 0x6B1728,"ゾウ：%d73두"
TextStyle1 0x6B1734,"ゴリラ：%d73두"
TextStyle1 0x6B1744,"합계수：%d73"
TextStyle1 0x6B1750,"종좌표（%d73）"
TextStyle1 0x6B1760,"횡좌표（%d73）"
TextStyle1 0x6B1770,"건설：불명"
TextStyle1 0x6B177C,"건설：%d73년"
TextStyle1 0x6B1788,"고さ：%d73"
TextStyle1 0x6B1794,"소재：동"
TextStyle1 0x6B17A0,"（カーメカニック"
TextStyle1 0x6B17B4,"　시점변경가능）"
TextStyle1 0x6B17C8,"종좌표（%d73）"
TextStyle1 0x6B17D8,"횡좌표（%d73）"
TextStyle1 0x6B17E8,"バス：불명"
TextStyle1 0x6B17F4,"：불명"
TextStyle1 0x6B17FC,"バス：%d73태"
TextStyle1 0x6B1808,"：%d73명"
TextStyle1 0x6B1810,"１일の승객수"
TextStyle1 0x6B1820,"합계수：%d73"
TextStyle1 0x6B182C,"종좌표（%d73）"
TextStyle1 0x6B183C,"횡좌표（%d73）"
TextStyle1 0x6B184C,"：불명"
TextStyle1 0x6B1854,"：%d73명"
TextStyle1 0x6B185C,"１일の승객수"
TextStyle1 0x6B186C,"합계수：%d73"
TextStyle1 0x6B1878,"종좌표（%d73）"
TextStyle1 0x6B1888,"횡좌표（%d73）"
TextStyle1 0x6B1898,"지지솔：불명"
TextStyle1 0x6B18A8,"건설：불명"
TextStyle1 0x6B18B4,"지지솔：%d73％"
TextStyle1 0x6B18C4,"건설：%d73년"
TextStyle1 0x6B18D0,"メイド：%d73명"
TextStyle1 0x6B18E0,"부옥수：%d73"
TextStyle1 0x6B18EC,"（인탐しイベント"
TextStyle1 0x6B1900,"　が발생します）"
TextStyle1 0x6B1914,"종좌표（%d73）"
TextStyle1 0x6B1924,"횡좌표（%d73）"
TextStyle1 0x6B1934,"：불명"
TextStyle1 0x6B193C,"：불명"
TextStyle1 0x6B1944,"ランク：불명"
TextStyle1 0x6B1954,"：%d73명"
TextStyle1 0x6B195C,"：%d73책"
TextStyle1 0x6B1964,"ランク：%d73"
TextStyle1 0x6B1970,"리용자"
TextStyle1 0x6B1978,"장서수"
TextStyle1 0x6B1980,"합계수：%d73"
TextStyle1 0x6B198C,"종좌표（%d73）"
TextStyle1 0x6B199C,"횡좌표（%d73）"
TextStyle1 0x6B19AC,"：불명"
TextStyle1 0x6B19B4,"：%d73"
TextStyle1 0x6B19BC,"ボートの수"
TextStyle1 0x6B19C8,"합계수：%d73"
TextStyle1 0x6B19D4,"종좌표（%d73）"
TextStyle1 0x6B19E4,"횡좌표（%d73）"
TextStyle1 0x6B19F4,"：불명"
TextStyle1 0x6B19FC,"：불명"
TextStyle1 0x6B1A04,"상태：불명"
TextStyle1 0x6B1A10,"：%d73\명"
TextStyle1 0x6B1A18,"：%d73\명"
TextStyle1 0x6B1A20,"상태：%d73"
TextStyle1 0x6B1A2C,"수용인수"
TextStyle1 0x6B1A38,"주민수"
TextStyle1 0x6B1A40,"합계수：%d73"
TextStyle1 0x6B1A4C,"종좌표（%d73）"
TextStyle1 0x6B1A5C,"횡좌표（%d73）"
TextStyle1 0x6B1A6C,"：불명"
TextStyle1 0x6B1A74,"：불명"
TextStyle1 0x6B1A7C,"：%d73명"
TextStyle1 0x6B1A84,"：%d73명"
TextStyle1 0x6B1A8C,"결혼식"
TextStyle1 0x6B1A94,"バンジージャンプ"
TextStyle1 0x6B1AA8,"（カラスに"
TextStyle1 0x6B1AB4,"　시점변경가능）"
TextStyle1 0x6B1AC8,"종좌표（%d73）"
TextStyle1 0x6B1AD8,"횡좌표（%d73）"
TextStyle1 0x6B1AE8,"고도：%d73"
TextStyle1 0x6B1AF4,"지가：＄%d73"
TextStyle1 0x6B1B00,"범죄：%d73"
TextStyle1 0x6B1B0C,"공해：%d73"
TextStyle1 0x6B1B18,"삼림タイルの합계"
TextStyle1 0x6B1B2C,"：%d73"
TextStyle1 0x6B1B34,"종좌표（%d73）"
TextStyle1 0x6B1B44,"횡좌표（%d73）"
TextStyle1 0x6B1B54,"교통량：%d73대"
TextStyle1 0x6B1B64,"고도：%d73"
TextStyle1 0x6B1B70,"범죄：%d73"
TextStyle1 0x6B1B7C,"공해：%d73"
TextStyle1 0x6B1B88,"종좌표（%d73）"
TextStyle1 0x6B1B98,"횡좌표（%d73）"
TextStyle1 0x6B1BA8,"고도：%d73"
TextStyle1 0x6B1BB4,"범죄：%d73"
TextStyle1 0x6B1BC0,"공해：%d73"
TextStyle1 0x6B1BCC,"종좌표（%d73）"
TextStyle1 0x6B1BDC,"횡좌표（%d73）"
TextStyle1 0x6B1BEC,"교통량：%d73태"
TextStyle1 0x6B1BFC,"고도：%d73"
TextStyle1 0x6B1C08,"지가：＄%d73"
TextStyle1 0x6B1C14,"범죄：%d73"
TextStyle1 0x6B1C20,"공해：%d73"
TextStyle1 0x6B1C2C,"합계수：%d73"
TextStyle1 0x6B1C38,"접속する도로"
TextStyle1 0x6B1C48,"합계수：%d73"
TextStyle1 0x6B1C54,"접속する선로"
TextStyle1 0x6B1C64,"합계수：%d73"
TextStyle1 0x6B1C70,"접속する도로"
TextStyle1 0x6B1C80,"합계수：%d73"
TextStyle1 0x6B1C8C,"접속する고속도로"
TextStyle1 0x6B1CA0,"종좌표（%d73）"
TextStyle1 0x6B1CB0,"횡좌표（%d73）"
TextStyle1 0x6B1CC0,"고도：%d73"
TextStyle1 0x6B1CCC,"지가：＄%d73"
TextStyle1 0x6B1CD8,"범죄：%d73"
TextStyle1 0x6B1CE4,"공해：%d73"
TextStyle1 0x6B1CF0,"합계수：%d73"
TextStyle1 0x6B1CFC,"접속する선로"
TextStyle1 0x6B1D0C,"종좌표（%d73）"
TextStyle1 0x6B1D1C,"횡좌표（%d73）"
TextStyle1 0x6B1D2C,"구화：%d73"
TextStyle1 0x6B1D38,"고도：%d73"
TextStyle1 0x6B1D44,"지가：＄%d73"
TextStyle1 0x6B1D50,"범죄：%d73"
TextStyle1 0x6B1D5C,"공해：%d73"
TextStyle1 0x6B1D68,"종좌표（%d73）"
TextStyle1 0x6B1D78,"횡좌표（%d73）"
TextStyle1 0x6B6A28,"なし"
TextStyle1 0x6B6A30,"낮음"
TextStyle1 0x6B6A34,"중간"
TextStyle1 0x6B6A38,"높음"
TextStyle1 0x6B6A3C,"초"
TextStyle1 0x6B6A40,"구화무し"
TextStyle1 0x6B6A4C,"저밀도주택"
TextStyle1 0x6B6A58,"고밀도주택"
TextStyle1 0x6B6A64,"저밀도상업"
TextStyle1 0x6B6A70,"고밀도상업"
TextStyle1 0x6B6A7C,"저밀도공업"
TextStyle1 0x6B6A88,"고밀도공업"
TextStyle1 0x6B6A94,"군관할지구"
TextStyle1 0x6B6AA0,"공항"
TextStyle1 0x6B6AA8,"항구"
TextStyle1 0x6B6AB0,"공き지"
TextStyle1 0x6B6AB8,"황れ지"
TextStyle1 0x6B6AC0,"방사능 오염지역"
TextStyle1 0x6B6AD0,"삼림"
TextStyle1 0x6B6AD8,"소공원"
TextStyle1 0x6B6AE0,"송전선"
TextStyle1 0x6B6AE8,"도로"
TextStyle1 0x6B6AF0,"철도"
TextStyle1 0x6B6AF8,"トンネル입구"
TextStyle1 0x6B6B08,"도로＋송전선"
TextStyle1 0x6B6B18,"도로＋철도"
TextStyle1 0x6B6B24,"철도＋송전선"
TextStyle1 0x6B6B34,"고속도로"
TextStyle1 0x6B6B40,"고속도로"
TextStyle1 0x6B6B4C,"고속도로"
TextStyle1 0x6B6B58,"고속도로"
TextStyle1 0x6B6B64,"つり교"
TextStyle1 0x6B6B6C,"다리(도로)"
TextStyle1 0x6B6B78,"다리(철도)"
TextStyle1 0x6B6B84,"고속도로입구"
TextStyle1 0x6B6B94,"고속도로교"
TextStyle1 0x6B6BA0,"지하철＜＞기차"
TextStyle1 0x6B6BB0,"일반 주택"
TextStyle1 0x6B6BBC,"중류 주택"
TextStyle1 0x6B6BC8,"고급 주택"
TextStyle1 0x6B6BD4,"ガソリンスタンド"
TextStyle1 0x6B6BE8,"ペンション"
TextStyle1 0x6B6BF4,"편의점\e"
TextStyle1 0x6B6C00,"다목적 빌딩"
TextStyle1 0x6B6C0C,"オフィスビル"
TextStyle1 0x6B6C1C,"창고"
TextStyle1 0x6B6C24,"완구점"
TextStyle1 0x6B6C2C,"위험물보관창고"
TextStyle1 0x6B6C3C,"공업변전소"
TextStyle1 0x6B6C48,"공사중"
TextStyle1 0x6B6C50,"폐≒ビル"
TextStyle1 0x6B6C5C,"アパート"
TextStyle1 0x6B6C68,"マンション"
TextStyle1 0x6B6C74,"고급임대マンション"
TextStyle1 0x6B6C88,"고급분양マンション"
TextStyle1 0x6B6C9C,"ショッピングプラザ"
TextStyle1 0x6B6CB0,"スーパーマーケット"
TextStyle1 0x6B6CC4,"고급ホテル"
TextStyle1 0x6B6CD0,"판매점"
TextStyle1 0x6B6CD8,"화학처리장"
TextStyle1 0x6B6CE4,"공장"
TextStyle1 0x6B6CEC,"분양マンション"
TextStyle1 0x6B6CFC,"オフィス가"
TextStyle1 0x6B6D08,"영화관"
TextStyle1 0x6B6D10,"ドライブシアター"
TextStyle1 0x6B6D24,"주차장"
TextStyle1 0x6B6D2C,"력사적건축물"
TextStyle1 0x6B6D3C,"본사ビル"
TextStyle1 0x6B6D48,"특수공장"
TextStyle1 0x6B6D54,"대창고"
TextStyle1 0x6B6D5C,"공사중"
TextStyle1 0x6B6D64,"수력발전소"
TextStyle1 0x6B6D70,"풍력발전소"
TextStyle1 0x6B6D7C,"천연ガス발전소"
TextStyle1 0x6B6D8C,"석유발전소"
TextStyle1 0x6B6D98,"원자력발전소"
TextStyle1 0x6B6DA8,"ソーラー발전소"
TextStyle1 0x6B6DB8,"マイクロ파발전소"
TextStyle1 0x6B6DCC,"핵융합발전소"
TextStyle1 0x6B6DDC,"석탄발전소"
TextStyle1 0x6B6DE8,"シティーホール"
TextStyle1 0x6B6DF8,"병원"
TextStyle1 0x6B6E00,"경찰서"
TextStyle1 0x6B6E08,"소방서"
TextStyle1 0x6B6E10,"박물관"
TextStyle1 0x6B6E18,"대공원"
TextStyle1 0x6B6E20,"학교"
TextStyle1 0x6B6E28,"スタジアム"
TextStyle1 0x6B6E34,"형무소"
TextStyle1 0x6B6E3C,"대학"
TextStyle1 0x6B6E44,"동물원"
TextStyle1 0x6B6E4C,"동상"
TextStyle1 0x6B6E54,"ポンプ"
TextStyle1 0x6B6E5C,"활주로"
TextStyle1 0x6B6E64,"부두"
TextStyle1 0x6B6E6C,"クレーン"
TextStyle1 0x6B6E78,"コントロールタワー"
TextStyle1 0x6B6E8C,"ビル"
TextStyle1 0x6B6E94,"발송로"
TextStyle1 0x6B6E9C,"Ｆ−１５ｂ"
TextStyle1 0x6B6EA8,"ハンガー"
TextStyle1 0x6B6EB4,"지하철역"
TextStyle1 0x6B6EC0,"レーダー"
TextStyle1 0x6B6ECC,"저수タンク"
TextStyle1 0x6B6ED8,"バス정류소"
TextStyle1 0x6B6EE4,"역"
TextStyle1 0x6B6EE8,"주차장"
TextStyle1 0x6B6EF0,"선착장"
TextStyle1 0x6B6EF8,"비밀"
TextStyle1 0x6B6F00,"하물보류소"
TextStyle1 0x6B6F0C,"시장관저"
TextStyle1 0x6B6F18,"하수처리장"
TextStyle1 0x6B6F24,"도서관"
TextStyle1 0x6B6F2C,"격납고"
TextStyle1 0x6B6F34,"교회"
TextStyle1 0x6B6F3C,"マリーナ"
TextStyle1 0x6B6F48,"ミサイル발사태"
TextStyle1 0x6B6F58,"해수처리시설"
TextStyle1 0x6B6F68,"プリモスアルコ"
TextStyle1 0x6B6F78,"삼のアルコ"
TextStyle1 0x6B6F84,"ダルコ"
TextStyle1 0x6B6F8C,"エクソダスアルコ"
TextStyle1 0x6B6FA0,"ラマドーム"
TextStyle1 0x6B6FAC,"염수"
TextStyle1 0x6B6FB4,"수"
TextStyle1 0x6B6FB8,"スギの목"
TextStyle1 0x6B6FC4,"ポプラの목"
TextStyle1 0x6B6FD0,"ヤシの목"
TextStyle1 0x6B6FDC,"サボテン"
TextStyle1 0x6B6FE8,"カジノ"
TextStyle1 0x6B6FF0,"ペンギンレース장"
TextStyle1 0x6B7004,"マリオ상"
TextStyle1 0x6B7010,"ソーラータワー"
TextStyle1 0x6B7020,"クラブ"
TextStyle1 0x6B7028,"인공スキー장"
TextStyle1 0x6B7038,"시민감시センター"
TextStyle1 0x6B704C,"Ｓ・セキュリティ"
TextStyle1 0x6B7060,"シャトル기지"
TextStyle1 0x6B7070,"위성방송국"
TextStyle1 0x6B707C,"プチシャトー"
TextStyle1 0x6B708C,"수정풍차"
TextStyle1 0x6B7098,"カエル공양탑"
TextStyle1 0x6B70A8,"ロボット연구소"
TextStyle1 0x6B70B8,"タワー"
TextStyle1 0x6B70C0,"タワー"
TextStyle1 0x6B70C8,"タワー"
TextStyle1 0x6B70D0,"タワー"
TextStyle1 0x6B70D8,"Ｆ"
TextStyle1 0x6B70DC,"Ｄ−"
TextStyle1 0x6B70E4,"Ｄ"
TextStyle1 0x6B70E8,"Ｄ＋"
TextStyle1 0x6B70F0,"Ｃ−"
TextStyle1 0x6B70F8,"Ｃ"
TextStyle1 0x6B70FC,"Ｃ＋"
TextStyle1 0x6B7104,"Ｂ−"
TextStyle1 0x6B710C,"Ｂ"
TextStyle1 0x6B7110,"Ｂ＋"
TextStyle1 0x6B7118,"Ａ−"
TextStyle1 0x6B7120,"Ａ"
TextStyle1 0x6B7124,"Ａ＋"


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







.include"text/text_144088.asm"
.include"text/text_17c6c8.asm"
.include"text/text_17ddf8.asm"
.include"text/text_17e3a8.asm"
TextStyle1 0x190D38,"５つのシナリオをクリアしたので、\n신しいシナリオが추가されました。\e"
; 190D38	190D7C	
; 1		５つのシナリオをクリアしたので、\LineBreak\新しいシナリオが追加されました。\End\

.include"text/text_190D98.asm"		
.include"text/text_191138.asm"
seek 0x193948
.incbin "gfx/gfx_193948.i8"
.include"text/text_194E9C.asm"
.include"text/text_19bba4.asm"
.include"text/text_19CA18.asm"

.include"text/text_6BEE60.asm"
.include"text/text_6BF5F0.asm"
.include"text/text_6bf870.asm"
.include"text/text_6BFC60.asm"		
.include"text/text_6C0D50.asm"
.include"text/text_6C2270.asm"
.include"text/text_6C2640.asm"
.include"text/text_6C3340.asm"
.include"text/text_6C3770.asm"
.include"text/text_6C3A10.asm"
.include"text/text_6C5250.asm"
.include"text/text_6C5AA0.asm"
.include"text/text_6C6140.asm"
.include"text/text_6C6760.asm"
.include"text/text_6C759C.asm"

TextStyle1 0x6CA170,"기사がまだ전부용의されていないのじゃ。\e"
	
; 6CA15C	6CA1A0	
; 1		０\End\
; 2		％\End\
; 3		\End\
; 4		\End\
; 5		\End\
; 6		記事がまだ全部用意されていないのじゃ。\End\
; 7		\End\
; 8		\End\
		
; BB4EF8	BB4F90	
; 1		人探しイベントを終了してよろしいですか？\End\
; 2		はい\End\
; 3		いいえ\End\
; 4		目的の人物を見つけることが\LineBreak\できなかったようですな……。\LineBreak\残念ですが、時間切れですぞ。\End\
; 5		\End\
		
; BB58D8	BB58F0	
; 1		これ以上進めません。\End\
		
; BB5ADC	BB5B04	
; 1		線路が無いので、これ以上進めません。\End\
		
; D852C8	D85458	
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
		
; DC2C9C	DC303C	
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
		
; DE0968	DE0AEC	
; 1		市民が寄付してくれた\LineBreak\とても豪華なあなたの家。\LineBreak\街の中で人探しイベントが\LineBreak\楽しめるようになります。\End\
; 2		複雑な都市運営に対応出来る\LineBreak\豪華で新しい市議会堂。\LineBreak\ミズ・トンプソンが自動車に\LineBreak\乗せてくれます。\End\
; 3		あなたの功績と名声を後世に\LineBreak\残すために作られた銅像。\LineBreak\カーメカニックがボードに\LineBreak\乗せてくれます。\End\
; 4		結婚式とバンジージャンプが\LineBreak\出来る不思議な建物。\LineBreak\カラスに話しかけると、\LineBreak\空を飛べるようになります。\End\
		
; DF6A1C	DF6D9C	
; 1		値段の割に発電量が多い\LineBreak\効率のよい発電所ですが、\LineBreak\石炭の出す黒い煙によって\LineBreak\酷い公害が発生します。\End\
; 2		水が流れる力を利用した、\LineBreak\建替えと公害の心配がない\LineBreak\クリーンな自然発電所です。\LineBreak\滝タイルの上に設置します。\End\
; 3		石炭発電所に比べて、\LineBreak\発電量が多く公害が\LineBreak\発生しにくい発電所です。\LineBreak\設置費用はやや高めです。\End\
; 4		発電量は少ないですが、\LineBreak\公害が発生しにくいという\LineBreak\長所を持ちます。\LineBreak\設置費用の安さも魅力です。\End\
; 5		発電量が多く公害が\LineBreak\発生しにくい発電所ですが、\LineBreak\恐ろしいメルトダウンを\LineBreak\起こす危険性があります。\End\
; 6		建替えと公害の心配がない\LineBreak\クリーンな自然発電所です。\LineBreak\発電量がとても少ないうえに\LineBreak\風がないと発電出来ません。\End\
; 7		太陽の光を利用した、公害の\LineBreak\心配がない発電所です。\LineBreak\太陽の出ていない日は、\LineBreak\充分な発電量を得られません\End\
; 8		人工衛星が集めたエネルギー\LineBreak\を供給するハイテク発電所。\LineBreak\発電量がとても多いうえに、\LineBreak\公害の心配もありません。\End\
; 9		他とは比較にならないほどの\LineBreak\発電量を得られます。\LineBreak\設置費用が非常に高いことが\LineBreak\唯一の欠点といえます。\End\
		
; E10638	E1079C	
; 1		重工業用に作られた\LineBreak\とても丈夫なアルコロジー。\LineBreak\公害が少し心配です。\End\
; 2		自然環境に優しい産業や\LineBreak\資源のリサイクルを奨励する\LineBreak\エコロジカルなアルコロジー\LineBreak\頂上に森があります。\End\
; 3		天才ダンテ・アクレバーが\LineBreak\従来型の反動から設計した\LineBreak\少し不気味なアルコロジー。\LineBreak\怪物が出るという噂も？\End\
; 4		究極のアルコロジー。\LineBreak\たくさんの市民を乗せて\LineBreak\宇宙に飛び立っていく、\LineBreak\……かも知れません。\End\
		

//E273C0
.include"text/free_mode.asm"
.include"text/text_E27Ec0.asm"
		
; EABC10	EABFFC	
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
	
.include"text/scenario.asm"	  
.include"text/text_FCCC00.asm"
.include"text/dr_wright.asm"	  
.include"text/text_1031b4c.asm"
.include"text/wright_icon_city_plan.asm"
.include"text/tutorial.asm"

; 1050504	105052C	
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

.include"text/text_10A5284.asm"
.include"text/text_110EA100.asm"

TextStyle1 0x10EA668,"０１２３４５６７８９\e"
TextStyle1 0x10EA680,"よし。それじゃあ、조속やるか。\e"
TextStyle1 0x10EA6A0,"승부する\e"
TextStyle1 0x10EA6AC,"やめる\e"

; 10EA668	10EA6B4	
; 1		０１２３４５６７８９\End\
; 2		よし。それじゃあ、早速やるか。\End\
; 3		勝負する\End\
; 4		やめる\End\

.warning"exclided"
;.include"text/text_1110560.asm"
	
; 1111304	111131C	
; 1		０１２３４５６７８９\End\

.include"text/beginner_table.asm"
.include"text/beginner_mode.asm"
.include"text/text_119F2C0.asm"
.include"text/text_119FD40.asm"
.include"text/text_11A0670.asm"
.include"text/text_11A0FA0.asm"
.include"text/text_11A1570.asm"
.include"text/text_11A1AB0.asm"
.include"text/text_11A1FB0.asm"
.include"text/text_11A2440.asm"
.include"text/scenario_mode.asm"
.include"text/scenario_table.asm"
.include"text/text_11A7C90.asm"		
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
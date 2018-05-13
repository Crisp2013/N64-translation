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
;TextStyle1 0x11E4F2C; .stringn "ently ", 0xA1, 0xA9, 0xA1, 0xA9, 0xA1, 0xA9, 0xA1, 0xA9, 0xA1, 0xA9, " ", 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
;TextStyle1 0x11E4F4C; .stringn "O.K "
; TextStyle1 0x11E4F54; .stringn "None"


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
echo off
if exist game/NUD-DSCJ-JPN.ndd (
	armips.exe NUD-DSCJ-JPN.asm  -equ _cart_hack 0 -sym "game/NUD-DSCJ-KOR.sym" -temp "game/NUD-DSCJ-KOR.tmp" 
) else (
	echo NDD File dose not exist!
)
if exist game/NUD-DSCJ-JPN.n64 (
	armips.exe NUD-DSCJ-JPN.asm -equ _cart_hack 1 -sym "game/NUD-DSCJ-KOR.sym" -temp "game/NUD-DSCJ-KOR.tmp" 
) else (
	echo N64 File dose not exist!
)
xdelta3.exe -e -s "game/NUD-DSCJ-JPN.ndd" "game/NUD-DSCJ-KOR.ndd" NUD-DSCJ-KOR(disk).xdelta
xdelta3.exe -e -s "game/NUD-DSCJ-JPN.n64" "game/NUD-DSCJ-KOR.n64" NUD-DSCJ-KOR(cart).xdelta
	
pause
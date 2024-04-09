[org 0x0100]
index1: dw 0
check1: dw 0
check2: dw 0
check3: dw 0

text1: db "Created By: Laiba and Sidra"
sizet1: dw 27
text2: db "GAME WON>>"
size22: dw 10

message1: db "1.    Niall Horan  #01  01m26.8s"
length1: dw 32
message2: db "2.   Zayn Malik  #02  01m27.8s"
length2: dw 30
message3: db "3.    Louis Tomlin  #03  01m28.8s"
length3: dw 33
message4: db "4.    Liam Payne  #04  01m30.4s"
length4: dw 31
message5: db "5.    Meleanie Mat  #05  01m50.3s"
length5: dw 33

gameo: db "GAME  OVER!!"
gosize: dw 12
mapcount: dw 0

messa: db "TIME:"
leng: dw 5

mapmover: dw 0
mapmovercounter: dw 0
mapdi1: dw 170	

message: db "F  I  N  I  S  H"
length: dw 16
oldisr2: dd 0
oldisr: dd 0

x:dw 0
y: dw 0
rbs: dw 0
rbr: dw 0

mycount1: dw 0
mycount2: dw 0
mycount3: dw 0
mycount4: dw 0
myindex: dw 0

seconds: dw 0 
timerflag: dw 0
oldkb: dd 0

tickcount:	dd	0
jmp mystartinggame

scoreboardd:

scores:
mov word[es:di], 0x06ce
add di,2
cmp di,4000
jl scores

mov ax,0
mov cx,0
mov di,1825
mov si,0

scoreboard1:
scoreboard2:

mov word[es:di], 0x0000
add di,2
add si,1
cmp si,45
jl scoreboard2
mov si,0
add di,70
add cx,1
cmp cx,13
jl scoreboard1

ret

clearall:
mov di,0

mov ax,0
mov cx,0
mov di,960
mov si,0

gameover1:
mov word[es:di], 0x61b2
add di,2
add si,1
cmp si,720
jl gameover1

mov di,800
gameover11:
mov word[es:di],0x1120
add di,4
cmp di,960
jl gameover11
mov di,802
gameover22:
mov word[es:di],0x5520
add di,4
cmp di,960
jl gameover22

mov di,2400
gameover33:
mov word[es:di],0x1120
add di,4
cmp di,2560
jl gameover33

mov di,2402
gameover44:
mov word[es:di],0x5520
add di,4
cmp di,2560
jl gameover44
cmp word[mapmovercounter],36
jg printgamewon
mov ax, 30
push ax
mov ax, 10
push ax
mov ax, 4
push ax
mov ax, gameo  ;;;game over message
push ax
push word [gosize]
call printstr
jmp skipgameprint

printgamewon:
mov ax, 30
push ax
mov ax, 10
push ax
mov ax, 4
push ax
mov ax, text2  ;;;game over message
push ax
push word[size22]
call printstr

skipgameprint:
call delay
call delay
call delay

call clearmyscreen

mov di,0
mov di,0
printingbackgroundd:
mov word[es:di],0x61b2
add di,2
cmp di,4000
jl printingbackgroundd
;call scoreboardd
mov di, 340
lt:
mov word[es:di], 0x4420
add di,2
cmp di,356
jne lt

mov di,340
mov si,0
vertical:
add di,160
mov word[es:di],0x4420
mov bx, di
add si,1
cmp si,2
je mid
cmp si,5
jne vertical
je nextE

mid:
mov bx,di
mov cx,0
tr:
add bx,2
mov word[es:bx],0x4420
add cx,1
cmp cx,7
jne tr
sub bx,160
mov word[es:bx], 0x4420
sub bx,160
mov word[es:bx], 0x4420
add bx,480
mov word[es:bx], 0x4420
add bx,160
mov word[es:bx], 0x4420
add bx,160
mov word[es:bx], 0x4420
jmp vertical

nextE:

mov di, 340
lt2:
mov word[es:di], 0x4420
add di,2
cmp di,356
jne lt2

mov di,360
lr:
mov word[es:di],0x4420
add di,2
cmp di,376
jne lr
mov di,360
mov si,0
vl:
add di,160
mov word[es:di],0x4420
mov bx, di
add si,1
cmp si,2
je mid2
cmp si,5
jne vl
mov cx,0
ll:
add di,2
add cx,1
mov word[es:di], 0x4420
cmp cx,7
jne ll
jmp nextS

mid2:
mov bx,di
mov cx,0
yr:
add bx,2
mov word[es:bx],0x4420
add cx,1
cmp cx,7
jne yr
jmp vl

nextS:
mov di,380
lrj:
mov word[es:di],0x4420
add di,2
cmp di,396
jne lrj
mov di,380
mov si,0
vlj:
add di,160
mov word[es:di],0x4420
mov bx, di
add si,1
cmp si,2
jne vlj
mov bx,di
mov cx,0
yrr:
add bx,2
mov word[es:bx],0x4420
add cx,1
cmp cx,7
jne yrr
mov si,0
doen:
add bx,160
mov word[es:bx],0x4420
add si,1
cmp si,3
jne doen

mov cx,0
lle:
sub bx,2
add cx,1
mov word[es:bx], 0x4420
cmp cx,7
jne lle

mov di,400
mov si,0
lw:
mov word[es:di], 0x4420
add di,160
add si,1
cmp si,5
jne lw

mov si,0
lwe:
mov word[es:di], 0x4420
add di,2
add si,1
cmp si,5
jne lwe

mov cx,0
lwr:
mov word[es:di], 0x4420
sub di,160
add cx,1
cmp cx,6
jne lwr

mov di,416
mov si,0
l3:
mov word[es:di], 0x4420
add di,160
add si,1
cmp si,5
jne l3

mov cx,0
le3:
mov word[es:di], 0x4420
add di,2
add cx,1
cmp cx,7
jne le3

mov di, 430
mov si,0
yt:
mov word[es:di], 0x4420
add di,2
add si,1
cmp si,4
je ty
cmp si,9
jne yt
jmp desig

ty:
mov bx,di
mov cx,0
tyr:
mov word[es:bx], 0x4420
add bx,160
add cx,1
cmp cx,6
jne tyr 
jmp yt

desig:
mov di,0
de:
mov word[es:di], 0x67dd
add di,2
cmp di,160
jne de

mov di, 3520
tru:
mov word[es:di], 0x67dd
add di, 2
cmp di,4000
jne tru

midpor:
;middle portion
mov di, 1440
lk:
mov word[es:di],0x04b2
add di,2
cmp di,3200
jne lk

mov ax, 25
push ax
mov ax, 10
push ax
mov ax, 13
push ax
mov ax, message1
push ax
push word [length1]
call printstr
call delay

mov ax, 25
push ax
mov ax, 12
push ax
mov ax, 3
push ax
mov ax, message2
push ax
push word [length2]
call printstr
call delay

mov ax, 25
push ax
mov ax, 14
push ax
mov ax, 2
push ax

mov ax, message3
push ax
push word [length3]
call printstr

call delay

mov ax, 25
push ax
mov ax, 16
push ax
mov ax, 9
push ax
mov ax, message4
push ax
push word [length4]
call printstr
call delay

mov ax, 25
push ax
mov ax, 18
push ax
mov ax, 15
push ax
mov ax, message5
push ax
push word [length5]
call printstr
call delay

ret

clearmyscreen:
mov di,0
clearmyscreen1:
mov word[es:di], 0x0720
add di,2
cmp di,4000
jl clearmyscreen1

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;----straight-road----;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;road straight (no turn)
straight:
mov di, 1920
hit:
mov word[es:di], 0x2220
add di,2
cmp di, 1980
jne hit

road:
mov word[es:di], 0x38db
add di,2
cmp di, 2018
jle road

lk2:
mov word[es:di], 0x2241
add di,2
cmp di, 2136
jl lk2

road2:
mov word[es:di], 0x38db
add di,2
cmp di, 2186
jle road2

lk3:
mov word[es:di], 0x2220
add di,2
cmp di, 2290
je road3
jl lk3

road3:
mov word[es:di], 0x38db
add di,2
cmp di, 2350
jle road3

lk4:
mov word[es:di], 0x2241
add di,2
cmp di, 2440
jl lk4

road4:
mov word[es:di], 0x38db
add di,2
cmp di, 2520
jle road4

lk5:
mov word[es:di], 0x2241
add di,2
cmp di, 2592
jl lk5

road5:
mov word[es:di], 0x38db
add di,2
cmp di, 2690
jl road5

lk6:
mov word[es:di], 0x2220
add di,2
cmp di, 2726
jl lk6

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;----left-road----;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;road turn left
leftturn:
mov di,1920
hi3:
mov word[es:di], 0x2220
add di,2
cmp di, 1950
jne hi3

road1e:
mov word[es:di], 0x38db
add di,2
cmp di, 1998
jle road1e

lk22e:
mov word[es:di], 0x2241
add di,2
cmp di, 2116
je road22e
jl lk22e

road22e:
mov word[es:di], 0x38db
add di,2
cmp di, 2172
jle road22e
jg lk33e

lk33e:
mov word[es:di], 0x2220
add di,2
cmp di, 2278
je road33e
jl lk33e

road33e:
mov word[es:di], 0x38db
add di,2
cmp di, 2350
jle road33e

lk44e:
mov word[es:di], 0x2241
add di,2
cmp di, 2436
je road44e
jl lk44e

road44e:
mov word[es:di], 0x38db
add di,2
cmp di, 2524
jle road44e

lk55e:
mov word[es:di], 0x2241
add di,2
cmp di, 2590
jl lk55e

roadt555:
mov word[es:di], 0x38db
add di,2
cmp di,2600
jl roadt555

lightsssofcar1:
mov word[es:di], 0xee0a
add di,2
cmp di,2608
jne lightsssofcar1
mov di,2680

lightsssofcar2:
mov word[es:di], 0xee0a
add di,2
cmp di,2688
jne lightsssofcar2

roadk55:
mov word[es:di], 0x38db
add di,2
cmp di, 2690
jl roadk55

lkk66:
mov word[es:di], 0x2220
add di,2
cmp di, 2726
jl lkk66

ret

;;;;;;;;;;;;;;;;right turn;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;right turn
rightturn:
mov di, 1920
h11:
mov word[es:di], 0x2220
add di,2
cmp di, 2006
jne h11

road11:
mov word[es:di], 0x38db
add di,2
cmp di, 2044
jle road11

lk22:
mov word[es:di], 0x2241
add di,2
cmp di, 2144
je road22
jl lk22

road22:
mov word[es:di], 0x38db
add di,2
cmp di, 2202
jle road22
jg lk33

lk33:
mov word[es:di], 0x2220
add di,2
cmp di, 2290
je road33
jl lk33

road33:
mov word[es:di], 0x38db
add di,2
cmp di, 2360
jle road33

lk44:
mov word[es:di], 0x2241
add di,2
cmp di, 2444
je road44
jl lk44

road44:
mov word[es:di], 0x38db
add di,2
cmp di, 2524
jle road44

l55:
mov word[es:di], 0x2241
add di,2
cmp di, 2590
jl l55

roadt55:
mov word[es:di], 0x38db
add di,2
cmp di,2600
jl roadt55

lightssofcar1:
mov word[es:di], 0xee0a
add di,2
cmp di,2608
jne lightssofcar1
mov di,2680

lightssofcar2:
mov word[es:di], 0xee0a
add di,2
cmp di,2688
jne lightssofcar2

road55:
mov word[es:di], 0x38db
add di,2
cmp di, 2690
jl road55

lk66:
mov word[es:di], 0x2220
add di,2
cmp di, 2726
jl lk66
ret

;;;;;;;;;;;right steering turn;;;;;;;;
steeringright:

mov di,2950
mov si,0
sp1:
sp2:
mov word[es:di], 0x0000
add di,2
add si,1
cmp si, 8
je spe1
cmp si,15
jne sp1
je ki

spe1:
mov word[es:di], 0x7720
add di,2
add si,1
jmp sp1

ki:
ret

;;;;;;;;;;;steering left;;;;;;;;;
steeringleft:
mov di,2950
mov si,0
stt1:
stt2:

mov word[es:di], 0x0000
add di,2
add si,1
cmp si, 4
je stte1
cmp si,15
jne stt1
je kit

stte1:
mov word[es:di], 0x7720
add di,2
add si,1
jmp stt1

kit:
ret

;;;steering straight;;;;;;;
steeringstraight:
mov di,2950
mov si,0
stttt1:
mov word[es:di], 0x0000
add di,2
add si,1
cmp si, 7
je sttte1
cmp si,15
jne stttt1
je kitt

sttte1:
mov word[es:di], 0x7720
add di,2
add si,1
jmp stttt1

kitt:
ret

;-------------------TREES---------------;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

trees:
mov di,1790
mov si,0
mov bx,0

trees1:
trees2:
mov word[es:di],0x6641
add di,2
add si,1
cmp si,4
jne trees2

sub di,168
mov si,0
add bx,1
cmp bx,2
jne trees1


sub di,4
mov si,0
mov bx,0

treestop1:
treestop2:
mov word[es:di],0x2241
add di,2
add si,1
cmp si,8
jne treestop2

sub di,176
mov si,0
add bx,1
cmp bx,3
jne treestop1

mov di,1890
mov si,0
mov bx,0

trees5:
trees6:
mov word[es:di],0x6620
add di,2
add si,1
cmp si,4
jne trees6

sub di,168
mov si,0
add bx,1
cmp bx,2
jne trees5

sub di,4
mov si,0
mov bx,0

treestop3:
treestop4:
mov word[es:di],0x2220
add di,2
add si,1
cmp si,8
jne treestop4

sub di,176
mov si,0
add bx,1
cmp bx,3
jne treestop3

;***clouds**
mov di,540
mov si,0
mov bx,0
clouds3:
clouds4:
mov word[es:di],0x7720
add di,2
add si,1
cmp si,12
jne clouds4
sub di,184
mov si,0
add bx,1
cmp bx,3
jne clouds3

mov di,564
mov bx,0
mov si,0
clouds5:
clouds6:
mov word[es:di],0x7720
add di,2
add si,1
cmp si,2
jne clouds6
sub di,164
mov si,0
add bx,1
cmp bx,2
jne clouds5

mov di,536
mov bx,0
mov si,0
clouds7:
clouds8:
mov word[es:di],0x7720
add di,2
add si,1
cmp si,2
jne clouds8
sub di,164
mov si,0
add bx,1
cmp bx,2
jne clouds7

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;**mountains**;;;;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mountains:
mov di,1850
mov byte[x],0
mov word[y],0
mov bx,26
mov cx,52

m2:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m2
sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add word[y],1
cmp word[y],4
m3:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m3

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,4
m4:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m4

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,8
m5:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m5

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,12
m6:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m6
;--------------------------------------

mov di,1770
mov byte[x],0
mov word[y],0
mov bx,26
mov cx,52

m7:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m7
sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add word[y],1
cmp word[y],4
m8:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m8

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,4
m9:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m9

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,8
m10:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m10

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,12
m11:
mov word[es:di],0x6620
add di,2
add word[x],1
cmp word[x],bx
jne m11

ret

;;;;;;;;;;;;;;;;;;;--move_of_lines_on_road---;;;;;;;;;;;;;;;
;;;;straigh movement of road block;;;;;;;;;
roadblocks:
mov word[rbs],1
hola:
mov di,1998	
xor bx,bx
mov si,0
mov dx,0

mov_shape:
mov_shape1:
mov_shape2:

mov word[es:di],0x0720
mov word[es:di],0x0000
add si,1
add di,2
cmp si,2
jne mov_shape2
sub di,4
add di,160
mov si,0
add dx,1
cmp dx,2
jne mov_shape1

call delay
mov [myindex],di
call clearshape
mov di,[myindex]
mov dx,0

add bx,1
;cmp bx,2
;jne infinity
;mov bx,0
;mov di,1998
;jmp hola
;infinity:

cmp bx,2
jne mov_shape
sub word[rbs],1
cmp word[rbs],0
jne hola
ret

;;;;;;;;;;;;;;;right movement of roadblock;;;;;;;;;
roadblockr:
mov word[rbr], 1
holar:
mov di,2024	
xor bx,bx
mov si,0
mov dx,0

mov_shaper:
mov_shape1r:
mov_shape2r:

mov word[es:di],0x0720
mov word[es:di],0x0000
add si,1
add di,2
cmp si,2
jne mov_shape2r
sub di,4
add di,160
mov si,0
add dx,1
cmp dx,2
jne mov_shape1r

call delay
mov [myindex],di
call clearshape
mov di,[myindex]
mov dx,0

add bx,1
;cmp bx,2
;jne infinity
;mov bx,0
;mov di,1998
;jmp hola
;infinity:

cmp bx,2
jne mov_shaper
sub word[rbr], 1
cmp word[rbr], 0
jne holar
ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;----------TIMER-----------;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mytimer:
printnumm: push bp
mov bp,sp
push es
push ax
push bx
push cx
push dx
push di

mov ax,0xb800
mov es,ax
mov ax,[bp+4]
mov bx,10
mov cx,0

ncc:
mov dx,0
div bx
add dl,0x30
push dx
inc cx
cmp ax,0
jne ncc

mov di,464

nxtposs:
pop dx
mov dh,0x07
mov [es:di],dx
add di,2
loop nxtposs

pop di
pop dx
pop cx
pop bx
pop ax
pop es
pop bp
ret 2
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;map;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
mapsub:
mov di,0
mov ax,0
mov si,0
map1s:
map2s:
mov word[es:di],0x445f
add di,2
add si,1
cmp si,25
jne map2s
add di,110
mov si,0
add ax,1
cmp ax,6
jne map1s

mov di,170
mov ax,0
mov si,0

mapds:
mov word[es:di],0x740a
add di,2
add si,1
cmp si,15
jne mapds

mov di,650
mov ax,0
mov si,0

mapd2s:
mov word[es:di],0x740a
add di,2
add si,1
cmp si,15
jne mapd2s

mov di,200
mov ax,0
mov si,0
mapd3s:
mov word[es:di],0x740a
add di,160
add si,1
cmp si,4
jne mapd3s


mov di,168
mov ax,0
mov si,0
mapd4s:
mov word[es:di],0x740a
add di,160
add si,1
cmp si,4
jne mapd4s
ret

;;;;;;;;;;;;;;;left movement of roadblock;;;;;;;;;
roadblockl:
mov cx,1
holal:
mov di,1978
xor bx,bx
mov si,0
mov dx,0

mov_shapel:
mov_shape1l:
mov_shape2l:

mov word[es:di],0x0720
mov word[es:di],0x0000
add si,1
add di,2
cmp si,2
jne mov_shape2l
sub di,4
add di,160
mov si,0
add dx,1
cmp dx,2
jne mov_shape1l

call delay
mov [myindex],di
call clearshape
mov di,[myindex]
mov dx,0

add bx,1
;cmp bx,2
;jne infinity
;mov bx,0
;mov di,1998
;jmp hola
;infinity:

cmp bx,2
jne mov_shapel
sub cx,1
cmp cx,0
jne holal
ret

;;;;;;;;;;;;;-lights-of-car-;;;;;;;
loc:
mov di,2600
lightsofcar1:
mov word[es:di], 0xee0a
add di,2
cmp di,2608
jne lightsofcar1
mov di,2680

lightsofcar2:
mov word[es:di], 0xee0a
add di,2
cmp di,2688
jne lightsofcar2
ret

movcarsub:
add word[mapcount],1
call mapsub
mov di,word[mapdi1]
mov word[es:di],0x0009
cmp word[mapmovercounter],14
jg mov2

cmp word[check2],3
je carryon1
call clearall
jmp end
carryon1:
add word[mapdi1],2
jmp donothing

mov2:
cmp word[mapcount],17
je turncar
jl carryonn
jg carryonn
turncar:
cmp word[check2],2
je carryon2
call clearall
jmp end
carryonn:
cmp word[mapmovercounter],17
jg mov3
cmp word[check2],3
je carryon2
call clearall
jmp end
carryon2:
cmp word[mapmovercounter],17
jg mov3
add word[mapdi1],160
jmp donothing
mov3:
cmp word[mapcount],20
je turncar3
jl carryonn3
jg carryonn3
turncar3:
cmp word[check2],2
je carryon3
call clearall
jmp end
carryonn3:
cmp word[mapmovercounter],33
jg mov4
cmp word[check2],3
je carryon3
call clearall
jmp end
carryon3:
cmp word[mapmovercounter],33
jg mov4
sub word[mapdi1],2
jmp donothing
mov4:
cmp word[mapcount],36
je turncar4
jl carryonn4
jg carryon4
turncar4:
cmp word[check2],2
je carryon4
call clearall
jmp end
carryonn4:
cmp word[mapmovercounter],36
jg roundcomplete
cmp word[check2],3
je carryon4
call clearall
jmp end
carryon4:
cmp word[mapmovercounter],36
jg roundcomplete
sub word[mapdi1],160
jmp donothing
roundcomplete:
;yahan ik message print krvana ha k round compete press r to replay
;cmp al,'r'
;jne showscore

;mov word[mapmovercounter],0
;mov word[mapdi1],160
;jmp donothing
showscore:
call clearall
jmp end
donothing:
add word[mapmovercounter],1
add cx,1
ret

removemapcar:

mov word[es:di], 0x740a
ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;..............buildings...............;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

buildings:

mov si,0
mov di,1440
mov ax,0
ly1:
ly2:
mov word[es:di], 0x1407
mov word[es:di], 0x0607

add di,1
add si,1
cmp si,3
jne ly2
mov si,0
add di,157
add ax,1
cmp ax,3
jne ly1

mov di,1607
mov si,0
mov ax,0
ly3:
ly4:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,3

jne ly4
mov si,0
add di,157
add ax,1
cmp ax,2
jne ly3

mov di,1765
mov si,0
mov ax,0
lz3:
lz4:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,2
jne lz4
mov si,0
add di,157
add ax,1
cmp ax,1
jne lz3

mov di,1769
mov si,0
mov ax,0
lz5:
lz6:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,2
jne lz6
mov si,0
add di,157
add ax,1
cmp ax,1
jne lz5

mov di,1774
mov si,0
mov ax,0
lz7:
lz8:
mov word[es:di], 0x0000

add di,1
add si,1
cmp si,145
jne lz8
mov si,0
add di,157
add ax,1
cmp ax,1
jne lz7


mov si,0
mov di,1453
mov ax,0
ly5:
ly6:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,3
jne ly6
mov si,0
add di,157
add ax,1
cmp ax,3
jne ly5

mov di,1619
mov si,0
mov ax,0
ly7:
ly8:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,3
jne ly8
mov si,0
add di,157
add ax,1
cmp ax,2
jne ly7

mov si,0
mov di,1458
mov ax,0
ly9:
ly10:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,3
jne ly10
mov si,0
add di,157
add ax,1
cmp ax,3
jne ly9

mov di,1624
mov si,0
mov ax,0
ly11:
ly12:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,3
jne ly12
mov si,0
add di,157
add ax,1
cmp ax,2
jne ly11

mov cx,1470
mov dx,1635
mov bx,0

mainbuild:

mov si,0
mov di,cx
mov ax,0
la9:
la10:

mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,3
jne la10
mov si,0
add di,157
add ax,1
cmp ax,3
jne la9

mov di,dx
mov si,0
mov ax,0
la11:
la12:
mov word[es:di], 0x1407
mov word[es:di], 0x0607
add di,1
add si,1
cmp si,3
jne la12
mov si,0
add di,157
add ax,1
cmp ax,2
jne la11

add cx,7
add dx,9
add bx,1
cmp bx,14
jne mainbuild

sub di,640
mov si,0
mov ax,0
la1:
la2:
mov word[es:di], 0x0000
add di,1
add si,1
cmp si,3
jne la2
mov si,0
add di,157
add ax,1
cmp ax,3
jne la1
ret


;;;;;;;;;;;;;;;;;;;;;;clr trees;;;;;;;;;;;;;;;;;;;;
treesr:
mov di,1790
mov si,0
mov bx,0

trees1r:
trees2r:
mov word[es:di],0x3320
add di,2
add si,1
cmp si,4
jne trees2r

sub di,168
mov si,0
add bx,1
cmp bx,2
jne trees1r


sub di,4
mov si,0
mov bx,0

treestop1r:
treestop2r:
mov word[es:di],0x3320
add di,2
add si,1
cmp si,8
jne treestop2r

sub di,176
mov si,0
add bx,1
cmp bx,3
jne treestop1r

mov di,1890
mov si,0
mov bx,0

trees5r:
trees6r:
mov word[es:di],0x3320
add di,2
add si,1
cmp si,4
jne trees6r

sub di,168
mov si,0
add bx,1
cmp bx,2
jne trees5r

sub di,4
mov si,0
mov bx,0

treestop3r:
treestop4r:
mov word[es:di],0x3320
add di,2
add si,1
cmp si,8
jne treestop4r

sub di,176
mov si,0
add bx,1
cmp bx,3
jne treestop3r

;**clouds*
mov di,540
mov si,0
mov bx,0
clouds3r:
clouds4r:
mov word[es:di],0x3320
add di,2
add si,1
cmp si,12
jne clouds4r
sub di,184
mov si,0
add bx,1
cmp bx,3
jne clouds3r

mov di,564
mov bx,0
mov si,0
clouds5r:
clouds6r:
mov word[es:di],0x3320
add di,2
add si,1
cmp si,2
jne clouds6r
sub di,164
mov si,0
add bx,1
cmp bx,2
jne clouds5r

mov di,536
mov bx,0
mov si,0
clouds7r:
clouds8r:
mov word[es:di],0x3320
add di,2
add si,1
cmp si,2
jne clouds8r
sub di,164
mov si,0
add bx,1
cmp bx,2
jne clouds7r

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;*mountains-remove*;;;;;;;;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

mountainsr:
mov di,1850
mov byte[x],0
mov word[y],0
mov bx,26
mov cx,52

m2r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m2r
sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add word[y],1
cmp word[y],4
m3r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m3r

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,4
m4r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m4r

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,8
m5r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m5r

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,12
m6r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m6r
;--------------------------------------

mov di,1770
mov byte[x],0
mov word[y],0
mov bx,26
mov cx,52

m7r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m7r
sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add word[y],1
cmp word[y],4
m8r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m8r

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,4
m9r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m9r

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,8
m10r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m10r

sub di,160
sub bx,4
mov word[x],0
sub cx,4
sub di,cx
add di,12
m11r:
mov word[es:di], 0x3320
add di,2
add word[x],1
cmp word[x],bx
jne m11r

ret
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; DELAY FUNCTION
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

delay:
           push ax
    push bx
    push cx
    mov ax,500
    mov bx,500
lop1:

           mov cx,ax
    dec ax
    cmp ax,0
    je exit_delay

lop2:

           dec bx
    cmp bx,0
    jne lop2
    mov bx,2000

    jmp lop1

exit_delay:
           pop cx
    pop bx
    pop ax
    ret
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;---------CLEARSHAPE------------;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

clearshape:
;sub di,160
;add di,160
add di,2
clearshape1:
clearshape2:
mov word[es:di],0x38db
add word[mycount1],1
sub di,2
cmp word[mycount1],2
jne clearshape2
mov word[mycount1],0
;add di,4
sub di,156
mov si,0
add word[mycount2],1
cmp word[mycount2],3
jne clearshape1
mov word[mycount1],0
mov word[mycount2],0
ret


mystartinggame:
mov ax,0xb800
mov es, ax
mov di,0
lp:
mov word[es:di], 0x3320
add di,2
cmp di,3990
jne lp
mov di,0

gameendp:
mov word[es:di], 0x06ce
add di,2
cmp di,4000
jl gameendp


mov di,800
clearall1p:
mov word[es:di],0x76b2
add di,2
cmp di,2400
jne clearall1p

mov di,800
gameover1p:
mov word[es:di],0x1120
add di,4
cmp di,960
jl gameover1p
mov di,802

gameover2p:
mov word[es:di],0x5520
add di,4
cmp di,960
jl gameover2p

mov di,2400
gameover3p:
mov word[es:di],0x1120
add di,4
cmp di,2560
jl gameover3p

mov di,2402
gameover4p:
mov word[es:di],0x5520
add di,4
cmp di,2560
jl gameover4p

call delay
call delay

mov ax, 27
push ax
mov ax, 14
push ax
mov ax,7
push ax
mov ax, text1
push ax
push word[sizet1]
call printstr
call delay
call delay
mov di, 1164
mov bx,di
mov si,0
ltp:
mov word[es:di], 0x0000
add di,2
add si,2
cmp si,16
jne ltp

mov di,bx
mov si,0
verticalp:
add di,160
mov word[es:di],0x0000
mov bx, di
add si,1
cmp si,2
je midl
cmp si,5
jne verticalp
je nextU

midl:
mov bx,di
mov cx,0
trp:
add bx,2
mov word[es:bx],0x0000
add cx,1
cmp cx,7
jne trp
sub bx,160
mov word[es:bx], 0x0000
sub bx,160
mov word[es:bx], 0x0000
add bx,480
mov word[es:bx], 0x0000
add bx,160
mov word[es:bx], 0x0000
add bx,160
mov word[es:bx], 0x0000
jmp verticalp

nextU:
mov di,1184
mov si,0
lwp:
mov word[es:di], 0x0000
add di,160
add si,1
cmp si,5
jne lwp

mov si,0
lwle:
mov word[es:di], 0x0000
add di,2
add si,1
cmp si,5
jne lwle

mov cx,0
llwr:
mov word[es:di], 0x0000
sub di,160
add cx,1
cmp cx,6
jne llwr

nextSp:
mov di,1200
mov bx,di
mov si,0
lrjl:
mov word[es:di],0x0000
add di,2
add si,2
cmp si,16
jne lrjl
mov di,bx
mov si,0
vljt:
add di,160
mov word[es:di],0x0000
mov bx, di
add si,1
cmp si,2
jne vljt
mov bx,di
mov cx,0
yrrp:
add bx,2
mov word[es:bx],0x0000
add cx,1
cmp cx,7
jne yrrp
mov si,0
doeln:
add bx,160
mov word[es:bx], 0x0000
add si,1
cmp si,3
jne doeln

mov di,bx
mov si,0
lin:
mov word[es:di], 0x0000
sub di,2
add si, 1
cmp si,8
jne lin

nextH:
mov di, 1220
mov si,0
ldp:
mov word[es:di], 0x0000
add di,160
add si,1
cmp si,2
je midH
cmp si,6
jne ldp
je Hv

midH:
mov bx,di
mov cx,0
oi:
mov word[es:bx], 0x0000
add bx,2
add cx,1
cmp cx,7
jne oi
jmp ldp

Hv:
mov di, 1234
mov si,0
hvr:
mov word[es:di], 0x0000
add di,160
add si,1
cmp si,6
jne hvr
call delay
call delay
call delay


mov di,0

;-----------painting top half as sky blue
l:
mov word[es:di], 0x3320

add di,2
cmp di,1920
jne l


;================================making the road

;call leftturn
call straight

;==========================break

tw:
mov word[es:di], 0x4420
add di,2
cmp di, 3652
je tw3
cmp di,3812
je tw4
cmp di,3972
je tw5
cmp di,4000
jl tw
jmp maps

tw3:
mov word[es:di], 0x0000
add di,2
cmp di,3656
je t3w
cmp di, 3660
jle tw3
jg tw

t3w:
mov word[es:di], 0x7720
add di,2
jmp tw3

tw4:
mov word[es:di], 0x0000
add di,2
cmp di,3816
je t4w
cmp di, 3820
jle tw4
jg tw

t4w:
mov word[es:di], 0x7720
add di,2
jmp tw4

tw5:
mov word[es:di], 0x0000
add di,2
cmp di,3976
je t5w
cmp di, 3980
jle tw5
jg tw

t5w:
mov word[es:di], 0x7720
add di,2
jmp tw5

;***making traffic light***
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;map;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
maps:
mov di,0
mov ax,0
mov si,0
map1:
map2:
mov word[es:di],0x445f
add di,2
add si,1
cmp si,25
jne map2
add di,110
mov si,0
add ax,1
cmp ax,6
jne map1

mov di,170
mov ax,0
mov si,0

mapd:
mov word[es:di],0x740a
add di,2
add si,1
cmp si,15
jne mapd

mov di,650
mov ax,0
mov si,0

mapd2:
mov word[es:di],0x740a
add di,2
add si,1
cmp si,15
jne mapd2

mov di,200
mov ax,0
mov si,0
mapd3:
mov word[es:di],0x740a
add di,160
add si,1
cmp si,4
jne mapd3


mov di,168
mov ax,0
mov si,0
mapd4:
mov word[es:di],0x740a
add di,160
add si,1
cmp si,4
jne mapd4







;top right box
rb:
mov si,0
mov ax,128
mov di,128
lxx1:
lxx2:
mov word[es:di], 0x0000
add di,1
add ax,1
cmp ax,160
jne lxx2

mov ax,128
add di,128
add si,1
cmp si,5
jne lxx1
jmp start

;priniting message 'finish' and 'speed'
clrscr:
push es
push ax
push di
pop di
pop ax
pop es

ret

printstr: 
	push bp 
	mov bp, sp 
	push es 
	push ax 
	push cx 
	push si 
	push di 
	mov ax, 0xb800 
	mov es, ax ; point es to video base 
	mov al, 80 ; load al with columns per row 
	mul byte [bp+10] ; multiply with y position 
	add ax, [bp+12] ; add x position 
	shl ax, 1 ; turn into byte offset 
	mov di,ax ; point di to required location 
	mov si, [bp+6] ; point si to string 
	mov cx, [bp+4] ; load length of string in cx 
	mov ah, [bp+8] ; load attribute in ah 
 
	cld 
	nextchar1:
	lodsb 
	stosw 
	loop nextchar1 
	pop di 
	pop si 
	pop cx 
	pop ax
pop es 
	pop bp 
	ret 10
start:
mov ax, 30
push ax
mov ax, 6
push ax
mov ax, 5
push ax
mov ax, message ;;;finish message
push ax
push word [length]
call printstr

mov ax,65
push ax
mov ax,2
push ax
mov ax,2
push ax
mov ax, messa ;;;;speed message
push ax
push word[leng]
call printstr

call trees

mov di,1286

mov si,0
mov ax,0
;pillars of headlights

mov di,950
mov si,0
mov ax,0
;score board

lb3:
lb4:
mov word[es:di], 0x7720
add di,2
add ax,1
cmp ax,3
jne lb4
mov ax,0
add di,154
add si,1
cmp si,7
jne lb3

;left side mirror
mov di,2726
pl:
mov word[es:di], 0x7720
add di,2
cmp di, 2740
jle pl

;fill missing grey box
mov di,2746
che:
mov word[es:di],0x4420
add di,2
cmp di,2752
jle che

mov di,2886
mov word[es:di], 0x7720
add di,2
mov word[es:di],0x2220
add di,2
mov word[es:di],0x2220
add di,2
mov word[es:di], 0x38db
add di,2
mov word[es:di], 0x38db
add di,2
u2:
mov word[es:di], 0x2220
add di,2
cmp di, 2900
jl u2

mov word[es:di],0x7720

mov di,3046
pl2:
mov word[es:di], 0x7720
add di,2
cmp di, 3060
jle pl2

;left small circle

mov di,3074
lx11:

mov word[es:di], 0x0000
add di,2
cmp di,3086
jne lx11

mov dx,0
mov bx,3073
mov si,0

lx22:
add si,1
add bx,160
sub bx,si
mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lx22

mov bx,di
mov si,0

lx44:
add si,2
add bx,160
add bx,si

mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lx44
mov cx,di

mov bx, 3084
mov si,0
lx33:
add si,1
add bx,160
add bx,si
mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lx33
 
mov bx,di
mov si,0
lx55:
add si,2
add bx,160
sub bx,si
cmp si,2
mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lx55

add di,158
mov si,0
lx66:
mov word[es:di], 0x0000
add si,1
sub di,2
cmp si,6
jne lx66

;white line between small left circle
mov di, 3238
mov word[es:di], 0x7720
mov di, 3398
mov word[es:di],0x7720

;right side mirror
mov di,2856
pll:
mov word[es:di], 0x7720
add di,2
cmp di, 2870
jle pll

mov di,3016
mov word[es:di], 0x7720
mov di,3018
mov word[es:di], 0x2220
mov di,3020
mov word[es:di], 0x2220
mov di, 3022
mov word[es:di], 0x38db
mov di, 3024
mov word[es:di], 0x38db
mov di, 3026
mov word[es:di], 0x3

uh:
mov word[es:di], 0x2220
add di,2
cmp di, 3030
jl uh

mov word[es:di], 0x7720

mov di,3176
pl22:
mov word[es:di], 0x7720
add di,2
cmp di, 3190
jle pl22

mov di, 2872
pl222:
mov word[es:di], 0x2220
add di,2
cmp di, 2878
jle pl222

;small right circle
mov di,3154
lxxx11:

mov word[es:di], 0x0000
add di,2
cmp di,3166
jne lxxx11

mov dx,0
mov bx,3153
mov si,0

lxxx22:
add si,1
add bx,160
sub bx,si
mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lxxx22

mov bx,di
mov si,0

lxxx44:
add si,2
add bx,160
add bx,si

mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lxxx44
mov cx,di

mov bx, 3164
mov si,0
lxx33:
add si,1
add bx,160
add bx,si
mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lxx33
 
mov bx,di
mov si,0
lxx55:
add si,2
add bx,160
sub bx,si
cmp si,2
mov di,bx
mov word[es:di], 0x0000
cmp si,2
jne lxx55

add di,158
mov si,0
lxx66:
mov word[es:di], 0x0000
add si,1
sub di,2
cmp si,6
jne lxx66

;white line on right circle
mov di, 3318
mov word[es:di], 0x7720
mov di,3478
mov word[es:di], 0x7720

;===================new steering

mov di,2950
mov si,0
s1:
s2:

mov word[es:di], 0x0000
add di,2
add si,1
cmp si, 7
je se1
cmp si,15
jne s1
je k

se1:
mov word[es:di], 0x7720
add di,2
add si,1
jmp s1
;-----------------right_side_of_steering
k:
mov bx,di
mov si,0
sub bx,2
mov di,bx

s4:
mov word[es:di], 0x0000
add si,1
add bx,160
add bx,2
cmp si,2
mov di,bx
cmp si,4
jne s4

sub di,1
mov word[es:di], 0x0000
mov si,0
mov bx,di

sp3:
add si,1
add bx,160
sub bx,2
mov di,bx
mov word[es:di], 0x0000
cmp si,4
jne sp3

mov word[es:di], 0x0000
mov bx,di


;------------left_side_of_steering
mov bx,2790
mov si,0

s3:
add si,1
add bx,160
sub bx,2
mov di,bx
mov word[es:di], 0x0000
cmp si,4
jne s3

add di,160
mov word[es:di], 0x0000
mov si,0
sub di,1
mov bx,di
add bx,2

s3e:
add si,1
add bx,160
add bx,2
mov di,bx
mov word[es:di], 0x0000
cmp si,4
jne s3e

mov di, 3758
mov word[es:di], 0x2731
mov di,3436
mov word[es:di], 0x2732
mov di, 3278
mov word[es:di], 0x2733
mov di,3280
mov word[es:di], 0x2734
mov di,3282
mov word[es:di], 0x2735
mov di,3284
mov word[es:di], 0x2737
mov di, 3446
mov word[es:di], 0x2736
mov di, 3764
mov word[es:di], 0x2737
mov di,3762
mov word[es:di], 0x2738
mov di,3760
mov word[es:di], 0x2739
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;------------steering-rod---------------;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
sr:
mov di,3585

steeringrod:

mov word[es:di], 0x0000
add di,1
add word[index1],1
cmp word[index1],38

jne steeringrod
mov word[tickcount],0
jmp sta

kbisr:
push ax
push es
mov ax, 0xb800
mov es, ax
in al, 0x60

cmp al, 0xCB ;;;;;;;;left arrow key;;;;;;;;;;
jne nextcmp
mov word[check2],1
mov word [cs:timerflag], 1
call treesr
call mountainsr
call steeringleft
call leftturn

call buildings
call delay
;call w
;..........................................................................................
call roadblockl

call movcarsub

nextcmp:
cmp al, 0xCD  ;;;;;;;;;;right arrow key;;;;;;;;
jne nextcmp2
mov word[check2],2
mov word [cs:timerflag], 1
call treesr
call mountains

call steeringright
call rightturn
call roadblockr
;.................................................................................................

call movcarsub

nextcmp2:
cmp al, 0xC8 ;;;;;;top arrow key;;;;;;;;;
jne nextcmp3
mov word [cs:timerflag], 1
mov word[check2],3

call mountainsr
call trees
call straight
call steeringstraight
call loc
call roadblocks
;...............................................................................................

call movcarsub

nextcmp3:
cmp al, 0xD0 ;down arrow key
;jne nomatch
jne nextcmp4
mov word [cs:timerflag], 1

nextcmp4:
cmp al, 0x2a ;;;shift left key
jne nomatch
;jmp far [cs:mystartinggame]
mov word[mapdi1], 170
mov word[mapmovercounter], 0
mov word [cs:timerflag], 0
call movcarsub
call straight
call steeringstraight
call mountainsr
call treesr
call trees

nomatch:
pop  es
pop  ax
jmp far [cs:oldisr]

;exit:
;mov al, 0x20
;out 0x20, al
;pop ax
;iret

timer:
push ax
cmp word[cs:timerflag],1
jne skipall

inc word [cs:seconds]
push word[cs:seconds]
call printnumm

skipall:
mov al, 0x20
out 0x20, al
pop ax
iret

sta:
xor ax, ax
mov es, ax
mov ax, [es:9*4]
mov [oldisr], ax
mov ax, [es:9*4+2]
mov [oldisr+2], ax
cli
mov word [es:9*4], kbisr
mov[es:9*4+2], cs
mov word[es:8*4], timer
mov [es:8*4+2], cs
sti
mov dx, sta
add dx,15
shr dx, cl
;mov ax, 0x3100
;int 0x21

le:
mov ah,0
int 0x16
cmp al,27
jne le
mov word [cs:timerflag], 0
mov word[check1],1
end:
mov ax,0x4c00
mov word [cs:timerflag], 0
int 0x21
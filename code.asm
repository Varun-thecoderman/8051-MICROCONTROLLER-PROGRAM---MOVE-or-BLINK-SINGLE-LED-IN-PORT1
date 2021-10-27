org 00h
mov p1,#01h
back :
mov a,p1
rl a
mov p1,a
acall delay
Ljmp back
delay :
mov r0,#255
extern :
mov r1,#255
intern :
djnz r1,intern
djnz r0,extern
ret
end

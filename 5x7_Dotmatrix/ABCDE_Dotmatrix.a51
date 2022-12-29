org 0h
	sjmp main
org 30h
    db 01h,02h,04h,08h,10h,01h,76h,76h,76h,01h,00h,36h,36h,36h,49h,41h,3eh,3eh,3eh,5dh,00h,3eh,3eh,3eh,41h,00h,36h,36h,36h,36h,50h

org 50h
   	main: mov r0,#40h
	      mov dptr,#0030h
	back: mov a,#00h
		  movc a,@a+dptr
		  mov @r0,a
		  inc dptr
		  inc r0
		  cjne a,#50h,back  	      
		  
 // Program To Show Alphabet A 
          mov r6,#02h
reverse1: mov r2,#0ffh
 return1: mov r3,#05h
		  mov r0,#40h
		  mov r1,#45h
	 up1: mov p2,@r0
		  mov p3,@r1
		  inc r0
		  inc r1
		  acall delay
		  djnz r3,up1
		  djnz r2, return1
		  djnz r6, reverse1
		  
// Program To Show Alphabet B 		  
          mov r6,#02h
reverse2: mov r2,#0ffh
 return2: mov r3,#05h
		  mov r0,#40h
		  mov r1,#4ah
     up2: mov p2,@r0
		  mov p3,@r1
		  inc r0
		  inc r1
		  acall delay
		  djnz r3,up2
		  djnz r2, return2
		  djnz r6, reverse2	  

// Program To Show Alphabet c 
          mov r6,#02h
reverse3: mov r2,#0ffh
 return3: mov r3,#05h
		  mov r0,#40h
		  mov r1,#4fh
     up3: mov p2,@r0
		  mov p3,@r1
		  inc r0
		  inc r1
		  acall delay
		  djnz r3,up3
		  djnz r2, return3
		  djnz r6, reverse3		
		  
// Program To Show Alphabet D 
          mov r6,#02h
reverse4: mov r2,#0ffh
 return4: mov r3,#05h
		  mov r0,#40h
		  mov r1,#54h
	 up4: mov p2,@r0
		  mov p3,@r1
		  inc r0
		  inc r1
		  acall delay
		  djnz r3,up4
		  djnz r2, return4
		  djnz r6, reverse4	

// Program To Show Alphabet E 
          mov r6,#02h
reverse5: mov r2,#0ffh
 return5: mov r3,#05h
		  mov r0,#40h
		  mov r1,#59h
	 up5: mov p2,@r0
		  mov p3,@r1
		  inc r0
		  inc r1
		  acall delay
		  djnz r3,up5
		  djnz r2, return5
		  djnz r6, reverse5
          ljmp main		  
		  		  
// 1 ms Delay :		  
  delay: mov r4,#02h
  go:    mov r5,#255
		 djnz r5,$
		 djnz r4,go
		 ret 
		 end
		  
		  
	
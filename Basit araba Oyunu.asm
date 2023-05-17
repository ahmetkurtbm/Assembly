.model small
.stack 100h

.data
    seed dw 1234h    
.code
    mov ax, @data
    mov ds, ax
    
    mov ax, 03h   
    int 10h
    
    mov bp,0
    mov di,0
    
    
    mov ah, 0Ch   
    mov al, 1     

    
    call DrawLines
    call Left_Right_Move
    
    
    mov ax, 4C00h   
    int 21h




DrawLines PROC
    push ax      
    push cx      
    push di     

   
    mov ax, 0B800h
    mov es, ax
    mov di, 0 

    mov cx, 237
    draw_line1:
    mov es:[di], ax 
    add di, 2 
    loop draw_line1

    
    add di, 237*2*5

    
    mov cx, 237 
    draw_line2:
    mov es:[di], ax 
    add di, 2
    loop draw_line2 

    add di , 237*2*5;
    
    
    mov cx, 237 
    draw_line3:
    mov es:[di], ax 
    add di, 2 
    loop draw_line3 
    
    pop di       
    pop cx 
    pop ax
    ret 
DrawLines ENDP


Draw_Block_Base PROC  
    mov al,4 
    push ax     
    push cx      
    push di     
    
    mov di,237*2*2+10;
    mov cx,5;
    draw_block:
    mov es:[di],ax;
    add di,2;
    loop draw_block
     
    add di,237*2-10
    mov cx,5
    draw_block_2:
    mov es:[di],ax;
    add di,2;
    loop draw_block_2
    
    mov ax,' '
    mov di,237*7*2+10;
    mov cx,5;
    draw_block_5:
    mov es:[di],ax;
    add di,2;
    loop draw_block_5
     
    add di,237*2-10
    mov cx,5
    draw_block_6:
    mov es:[di],ax;
    add di,2;
    loop draw_block_6
    
    pop di     
    pop cx 
    pop ax 
    ret 
Draw_Block_Base ENDP
   
   
Draw_Block_Base_2 PROC
    mov al,4   
    push ax      
    push cx      
    push di     
 
    mov di,237*7*2+10;
    mov cx,5;
    draw_block_3:
    mov es:[di],ax;
    add di,2;
    loop draw_block_3
     
    add di,237*2-10
    mov cx,5
    draw_block_4:
    mov es:[di],ax;
    add di,2;
    loop draw_block_4
    
    mov ax,' '
    mov di,237*2*2+10;
    mov cx,5;
    draw_block_7:
    mov es:[di],ax;
    add di,2;
    loop draw_block_7
     
    add di,237*2-10
    mov cx,5
    draw_block_8:
    mov es:[di],ax;
    add di,2;
    loop draw_block_8
    
    pop di       
    pop cx 
    pop ax 
    ret 
Draw_Block_Base_2 ENDP


Left_Right_Move PROC
    
    mov ah, 0   
    int 16h    

    
    cmp ah, 4Ch   
    je exit

    cmp ah, 4Bh   
    je move_left

    cmp ah, 4Dh  
    je move_right

move_left:
    call Draw_Block_Base
    call GenerateRandomNumber
    call Left_Right_Move

move_right:
    call Draw_Block_Base_2
    call GenerateRandomNumber
    call Left_Right_Move
exit:
    mov ax, 3h   
    int 10h

    mov ax, 4C00h  
    int 21h     
Left_Right_Move ENDP


Engel_Yeri_1 PROC
  
    mov ax, 0B800h 
    mov es, ax
    mov di, 0
    
    push ax      
    push cx     
    push di     
    mov al,2
    mov bp,0
    
    
    mov di,237*7*2+200;
    mov cx,3;
    engel_yeri:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri
    
    add di,237*2-6
    mov cx,3
    engel_yeri_2:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_2
    
    pop di 
    pop cx 
    pop ax 
    
    ret
Engel_Yeri_1 ENDP



Engel_Yeri_9 PROC

    mov ax, 0B800h
    mov es, ax
    mov di, 0
    
    push ax
    push di
    push cx
    mov al,2
    
    mov di,237*2*2+200;
    mov cx,3;
    engel_yeri_3:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_3
    
    add di,237*2-6
    mov cx,3
    engel_yeri_4:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_4
    
    pop ax
    pop di
    pop cx
    
    ret
Engel_Yeri_9 ENDP


Engel_Yeri_10 PROC

    mov ax, 0B800h 
    mov es, ax
    mov di, 0
    
    push ax
    push di
    push cx
    mov al,2
    
    mov di,237*7*2+100;
    mov cx,3;
    engel_yeri_12:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_12
    
    add di,237*2-6
    mov cx,3
    engel_yeri_13:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_13
    
    mov ax,' '
    mov di,237*7*2+200;
    mov cx,3;
    engel_yeri_16:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_16
    
    add di,237*2-6
    mov cx,3
    engel_yeri_17:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_17
    
    pop ax
    pop di
    pop cx
    
    ret
Engel_Yeri_10 ENDP
Engel_Yeri_11 PROC

    mov ax, 0B800h
    mov es, ax
    mov di, 0
    
    push ax
    push di
    push cx
    mov al,2
    
    mov di,237*2*2+100;
    mov cx,3;
    engel_yeri_14:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_14
    
    add di,237*2-6
    mov cx,3
    engel_yeri_15:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_15
    mov ax,' '
    mov di,237*2*2+200;
    mov cx,3;
    engel_yeri_18:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_18
    
    add di,237*2-6
    mov cx,3
    engel_yeri_19:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_19
    
    pop ax
    pop di
    pop cx
    
    ret
Engel_Yeri_11 ENDP


Engel_Yeri_20 PROC

    mov ax, 0B800h 
    mov es, ax
    mov di, 0
    
    push ax
    push di
    push cx
    mov al,2
    
    mov di,237*7*2+20;
    mov cx,3;
    engel_yeri_22:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_22
    
    add di,237*2-6
    mov cx,3
    engel_yeri_23:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_23
    
    mov ax,' '
    mov di,237*7*2+100;
    mov cx,3;
    engel_yeri_24:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_24
    
    add di,237*2-6
    mov cx,3
    engel_yeri_25:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_25
    
    pop ax
    pop di
    pop cx
    
    ret
Engel_Yeri_20 ENDP
Engel_Yeri_21 PROC

    mov ax, 0B800h 
    mov es, ax
    mov di, 0
    
    push ax
    push di
    push cx
    mov al,2
    
    mov di,237*2*2+20;
    mov cx,3;
    engel_yeri_26:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_26
    
    add di,237*2-6
    mov cx,3
    engel_yeri_27:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_27
    mov ax,' '
    mov di,237*2*2+100;
    mov cx,3;
    engel_yeri_28:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_28
    
    add di,237*2-6
    mov cx,3
    engel_yeri_29:
    mov es:[di],ax;
    add di,2;
    loop engel_yeri_29
    
    pop ax
    pop di
    pop cx
    
    ret
Engel_Yeri_21 ENDP




GenerateRandomNumber PROC
    push ax
    mov ax, seed   
    mov bx, ax     

    mov cx, 1234h  
    mov dx, 5678h  

    
    mov ax, bx
    mul cx
    add ax, dx
    
    mov dx,0     
    mov bx,2
    div bx      

   

    
    mov seed, ax
    pop ax
    call CheckNumber

    ret
GenerateRandomNumber ENDP

CheckNumber PROC   
    push ax  
    
    cmp bp,2
    je number_is5
    
    cmp di,2
    je number_is6
    
    cmp bp,1
    je number_is_3
    
    cmp di,1
    je number_is_4
    
    cmp dx, 1        
    je number_is_1 
    
    cmp dx, 0        
    je number_is_2  
    

    pop ax
    jmp end
number_is_1:
    call Engel_Yeri_1
    pop ax
    add bp,1
    ret
number_is_2:
    call Engel_Yeri_9
    pop ax
    add di,1
    ret
number_is_3:
    call Engel_Yeri_10
    pop ax 
    add bp,1
    cmp dx, 1       
    je number_is_1  
    
    cmp dx, 0        
    je number_is_2   
    ret
number_is_4:
    call Engel_Yeri_11
    pop ax
    add di,1
    cmp dx, 1       
    je number_is_1 
    
    cmp dx, 0        
    je number_is_2   
    ret
number_is5:
    call Engel_Yeri_20
    cmp dx, 1       
    je number_is_1   
    cmp dx, 0        
    je number_is_2  
    pop ax
number_is6:
    call Engel_Yeri_21
    cmp dx, 1        
    je number_is_1   
    cmp dx, 0       
    je number_is_2   
    pop ax
end:
    ret

    
CheckNumber ENDP



end
    ORG    $1000
START: 
    Move.B  #6, D0

NEXT:   
    Sub     #3, D0
    Move.B  D0, D2
    Bsr Loop
    Move.B  D2, D0  
    Bne Next
    
    Bra End
 
LOOP:   
    LEA     Msg, A1
    Move.B  #14, D0
    Trap    #15
    Rts
 
END:   
    Lea     Stop, A1
    Move.B  #14, D0
    Trap    #15 

    SIMHALT
    
Msg DC.B 'Looping' ,0
Stop DC.B 'stop' ,0


    END    START   

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~

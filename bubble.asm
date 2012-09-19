


    LD E, B    
    LD D, C
RETORNO:
    LD IX, HL
    LD A, (IX+00H)
    LD B, (IX+01H)
    CP E
    CALL NZ, DESVIOA
    CALL Z, DESVIOB
    INC HL
    DEC D
    JP Z, ZEROD
    JP RETORNO
    
ZEROD:
    DEC C
    JP NZ, RETORNO
    HALT
    
MAIORA:
    LD IX+00H, B
    LD IX+01H, A
    RET
    
MAIORB:
    LD IX+00H, A
    LD IX+01H, B
    JP RETORNO
    
DESVIOA:
    CP A, B
    CALL P, MAIORA
    RET

DESVIOB:
    CP A, B
    CALL P, MENORB
    RET
    
    
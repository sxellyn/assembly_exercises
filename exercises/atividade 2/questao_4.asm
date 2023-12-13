.code

while:
    LDA metros
    SUB contador
	STA resultado
    JZ end

do:
    LDA litros
    ADD formula
    STA litros

    LDA contador
    ADD uno
    STA contador

    JMP while

end:
    INT exit

.data
	;syscall exit
	exit: DD 25
	litros: DD 0
	metros: DD 10
	formula: DD 1000
	contador: DD 0
	uno: DD 1
	resultado: DD 0

.stack 1

.code

;comparando para ver se é igual 
;ou diferente:
if:
	LDA var1 ;var1 - var2
	SUB var2
	JN end
	JZ else

;if var1 > var2:
then:
	LDA var1
	SUB var2
	STA result
	JMP end

;if var1 = var2:
else:
	LDA var1
	ADD var2
	STA result
	JMP end

end:

	INT exit

.data
	;syscall exit
	exit: DD 25
	var1: DD 10
	var2: DD 10
	result: DD 0

.stack 1

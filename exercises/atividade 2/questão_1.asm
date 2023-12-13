.code
	LDA var1
	LDA var2
	LDA var3
	LDA var4
	ADD var1
	ADD var2
	ADD var3
	STA var4

end:
	INT exit

.data
	;syscall exit
	exit: DD 25
	var1: DD 1
	var2: DD 2
	var3: DD 3
	var4: DD 0

.stack 10


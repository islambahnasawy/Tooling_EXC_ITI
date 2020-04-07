include config.mk
#"-include" = ignore error in case file to include is not exist
allObjs = $(fileObj1) $(fileObj2) $(fileObj3) $(fileObj4) $(fileObj5) $(fileObj6)

$(FinalTargetName) : CFLAG = 
$(allObjs): CFLAG = -c
link: CFLAG =
onlyCompile: CFLAG = -c

$(FinalTargetName) : $(allObjs) 
	@echo Re-compile due to changes in $?
	$(CC) $(CFLAG) $^ -o $(FinalTargetName) 
$(fileObj1) : $(fileSrc1) 
	$(CC) $(CFLAG) $< -o $@ 
	#$@ = targetname
	#$^ = all prerequisites
	#$< = first prerequisite
	#$? = all newer prerequisites
$(fileObj2) : $(fileSrc2) 
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj3) : $(fileSrc3) 
	$(CC) $(CFLAG) $< -o $@  
$(fileObj4) : $(fileSrc4) 
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj5) : $(fileSrc5) 
	$(CC) $(CFLAG) $< -o $@ 
$(fileObj6) : $(fileSrc6) 
	$(CC) $(CFLAG) $< -o $@ 

.PHONY: clean link onlyCompile
clean:
	rm $(allObjs)
	rm $(FinalTargetName)

link: 
	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName)

onlyCompile: 
	$(CC) $(CFLAG) $(fileSrc1) -o $(fileObj1) 
	$(CC) $(CFLAG) $(fileSrc2) -o $(fileObj2) 
	$(CC) $(CFLAG) $(fileSrc3) -o $(fileObj3) 
	$(CC) $(CFLAG) $(fileSrc4) -o $(fileObj4) 
	$(CC) $(CFLAG) $(fileSrc5) -o $(fileObj5) 
	$(CC) $(CFLAG) $(fileSrc6) -o $(fileObj6)
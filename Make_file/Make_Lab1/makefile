include config.mk
#"-include" = ignore error in case file to include is not exist
allObjs = $(allSrcs:.c=.o)
allDeps = $(allSrcs:.c=.d)

$(FinalTargetName) : CFLAG = 
$(allObjs): CFLAG = -c
$(allDeps): CFLAG = -MM
link: CFLAG =
onlyCompile: CFLAG = -c

$(FinalTargetName) : $(allObjs) 
	
	@$(CC) $(CFLAG) $^ -o $(FinalTargetName)
	@progress.bat
	@python progress.py 12
$(allObjs) : %.o:%.c
	@$(CC) $(CFLAG) $< -o $@
	@progress.bat
	@python progress.py 12

$(allDeps) : %.d:%.c Dependencies
	@$(CC) $(CFLAG) $< -o $@	
	@cp $@ Dependencies/
	@progress.bat
	@python progress.py 12
	
#$@ = targetname
#$^ = all prerequisites
#$< = first prerequisite
#$? = all newer prerequisites

Dependencies:
	@mkdir Dependencies

.PHONY: clean link onlyCompile depend all
clean:
	@rm $(allObjs) 
	@rm $(allDeps)
	@rm Dependencies/*
	@rm $(FinalTargetName)
	@rmdir Dependencies
	@echo '0'>progress.txt

link: 
	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName)

onlyCompile: $(allObjs)
depend: $(allDeps) 
	
all: $(allDeps) 
	$(MAKE) $(FinalTargetName)
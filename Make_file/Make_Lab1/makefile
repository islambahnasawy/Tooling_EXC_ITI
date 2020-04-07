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
	@echo Re-compile due to changes in $?
	$(CC) $(CFLAG) $^ -o $(FinalTargetName) 
$(allObjs) : %.o:%.c
	$(CC) $(CFLAG) $< -o $@

$(allDeps) : %.d:%.c
	$(CC) $(CFLAG) $< -o $@	
	cp $@ Dependencies\
	
#$@ = targetname
#$^ = all prerequisites
#$< = first prerequisite
#$? = all newer prerequisites



.PHONY: clean link onlyCompile depend
clean:
	rm $(allObjs) 
	rm $(allDeps)
	rm Dependencies/*
	rm $(FinalTargetName)

link: 
	$(CC) $(CFLAG) $(allObjs) -o $(FinalTargetName)

onlyCompile: $(allObjs)
depend: $(allDeps)
all: $(allDeps)
	$(MAKE) $(FinalTargetName)
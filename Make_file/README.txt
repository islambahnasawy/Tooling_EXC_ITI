/****************************************/
/*Author : Islam A. El-Bahnasawy        */
/*Date   : 31 March 2020		*/
/*Version : V.01			*/
/****************************************/



Description: 
	    This folder includes make file to compile the C code files using 
		GCC compiler and generate an exe (executable) file to be run.
		
		the make command has 3 options:
			make			: 	to compile all files, link them and generate exe file.
			
			make clean		: 	to delete all object files generated by compiler 
								and the exe file.
						  
			make onlyCompile	: 	to only compile the source files and generate the 
								object files without linking.
								
			make link		:	to only link the object files generated by compiler
								and create the exe file.
								
/**********************************************************/




User Manual:
	1. 	Open CMD in the same directory, then write the make 
		commands described above.	
	2. 	Take care when using commands in wrong order
		like: "make link" before compilation or "make clean" without 
		linking, it will give you an error immediately.
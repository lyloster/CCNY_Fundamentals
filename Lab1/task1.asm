				global				_start

				section				.text
_start:			
				mov					eax,4					;call the syscall for write					
				mov 				ebx,1 					;write to stdout
				mov					ecx, message			;pass the string to be written to stdout
				mov 				edx, 49					;specify the length of the string
				int 80h										;request interrupt
exit:			mov 				eax, 1 					;call the syscall for exit
				mov					ebx, 0 					;return 0 on exit if no errors occurred
				int 80h										;request interrupt
				section				.data
message:		db					"Kristina Ilyovska, ID: 23857351, Section ID: CC1", 0Ah 	;the string to be written to stdout

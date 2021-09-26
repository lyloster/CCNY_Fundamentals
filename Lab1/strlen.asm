				global				_start

				section				.text
_start:			
				push				message					;push the string pointer to the stack	
				call 				strlen					;call strlen function

				add					esp, 4					;move past the 'message' on the stack

				mov 				edx, eax				;grab the length of the string from eax
				mov					eax,4					;call the syscall for write					
				mov 				ebx,1 					;write to stdout
				mov					ecx, message			;pass the string to be written to stdout
				int 80h										;request interrupt

exit:			mov 				eax, 1 					;call the syscall for exit
				mov					ebx, 0 					;return 0 on exit if no errors occurred
				int 80h										;request interrupt



strlen:
		
				push				ebp						;push base pointer to stack
				mov					ebp, esp				;move esp to ebp
				sub					esp, 4					;move down to next address in stack
				mov 				ecx, [ebp + 8] 			;put message from stack to ecx register
				mov 				eax, 0                  ;set a counter to 0 in eax

beginning:													;while loop
				cmp 				byte[ecx + eax], 0x00	;check if current char is null
				je					end						;if yes, end the loop
				inc					eax						;if not, increment the value in eax
				jmp					beginning				;return to beginning
end:

				mov 				esp, ebp				;move ebp to esp
				pop					ebp						;pop ebp from stack
				ret



				section				.data
message:		db					"Kristina Ilyovska, ID: 23857351, Section ID: CC1", 0Ah 	;the string to be written to stdout

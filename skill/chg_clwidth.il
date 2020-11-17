axlCmdRegister("w", 'ns_clwidth, ?cmdType "general")
; revision 1.00 : First revision
; revision 1.01 : Tested and checked for 17.2
defun( ns_clwidth (@optional (clwidth "Constraint"))
let((ret)
	if(atof(clwidth) then ; floating point argument found
		axlShell(sprintf(nil "setwindow form.mini;FORM mini acon_line_width %f; setwindow pcb" atof(clwidth)))
	else ; if no argument prompt for width, default to Constraint if no usable argument
		ret = axlUIPrompt( "Enter width, if Illegal or no value, Constraint value is used" )
		if(ret then
			if(atof(ret) then ; floating point argument found
				axlShell(sprintf(nil "setwindow form.mini;FORM mini acon_line_width %f; setwindow pcb" atof(ret)))
			else
				axlShell( sprintf(nil "setwindow form.mini;FORM mini acon_line_width %s; setwindow pcb" "Constrain") )
			)
		else
			axlShell(sprintf(nil "setwindow form.mini;FORM mini acon_line_width %s; setwindow pcb" "Constrain"))
		)
	)
))

;# Skill change iangle rotation 
;# Made by nhtson.az@gmail.com
;# add 2 funkey below to env file for rotate
; funckey . replay rolef
; funckey , replay rorig
;# "." rotate left
;# "," rotate right

axlCmdRegister("r0", 'ro, ?cmdType "general")


defun( ro (@optional rta_value)
	let((ret)
		ret = axlUIPrompt( "Rotation value, if Illegal or no value, no change is made" )
		designPathName = axlGetDrawingName()
		fileparts = car(axlDMFileParts(designPathName))	;get .brd file folder to export same folder
		if(ret then
			if(atof(ret) then
				rta_value = atof(ret)
				
				alias_m = axlGetAlias(".")
				alias_r = axlGetAlias(",")
				axlShell("funckey , \"replay rorig\"")
				axlShell("funckey . \"replay rolef\"")
				
				; --- Create Script --- ;
				export_rolef= "rolef.scr"
				rolef_Script = outfile( strcat(fileparts "/" export_rolef))
				fprintf(rolef_Script "# Allegro script rotation creat by skill rotate\n")
				fprintf(rolef_Script "version 17.2\n")
				fprintf(rolef_Script "setwindow pcb\n")
				fprintf(rolef_Script "iangle %f\n" rta_value)
				close( rolef_Script )
				
				export_rorig= "rorig.scr"
				rorig_Script = outfile( strcat(fileparts "/" export_rorig))
				fprintf(rorig_Script "# Allegro script rotation creat by skill rotate\n")
				fprintf(rorig_Script "version 17.2\n")
				fprintf(rorig_Script "setwindow pcb\n")
				fprintf(rorig_Script "iangle -%f\n" rta_value)
				close( rorig_Script )
				
				; --- End Script --- ;
				axlMsgPut("Program: Iangle changed -> %f" rta_value)
			else
				axlMsgPut("Program: No or illegal input -> no iangle change")
			)
		else
			axlMsgPut("Program: No or illegal input -> no iangle change")
		)
	)
)

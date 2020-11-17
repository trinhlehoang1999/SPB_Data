axlCmdRegister("g", 'ns_grids, ?cmdType "general")

defun( ns_grids (@optional nsgrid)
let((ret grid)
	;axlMsgPut("Argument %L" nsgrid)
	if(nsgrid && atof(nsgrid) then
		; argument and it is a number
		nsgrid = atof(nsgrid)
		foreach(lid axlGetParam("paramLayerGroup:etch")->groupMembers
			grid = axlDBGridGet(lid)
			grid->name = 'all
			grid->xGrids = nsgrid
			grid->yGrids = nsgrid
			axlDBGridSet(grid)
		)
		axlMsgPut("ns_grid program: Grid changed -> %f" nsgrid)
	else ; no argument
		ret = axlUIPrompt( "Enter grid value, if Illegal or no value, no change is made" )
		if(ret then
			if(atof(ret) then
				nsgrid = atof(ret)
				foreach(lid axlGetParam("paramLayerGroup:etch")->groupMembers
					grid = axlDBGridGet(lid)
					grid->name = 'all
					grid->xGrids = nsgrid
					grid->yGrids = nsgrid
					axlDBGridSet(grid)
				)
				axlMsgPut("ns_grid program: Grid changed -> %f" nsgrid)
			else
				axlMsgPut("ns_grid program: No or illegal input -> no grid change")
			)
		else
			axlMsgPut("ns_grid program: No or illegal input -> no grid change")
		)
		
	)
))

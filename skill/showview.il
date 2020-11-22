axlCmdRegister( "sv" `showview)

procedure( showview()

	showview_form = axlFormCreate( (gensym) "view.form" nil 'showview_form_Action t)
	axlFormDisplay(showview_form)

); end of procedure
; -----------------------------------------------------------------
procedure( showview_form_Action(showview_form)
	case( showview_form->curField
		("Close_button"
        	        axlFormClose( showview_form )
		 	axlCancelEnterFun( )
      	        )
		("OK_button"
 		    if( axlFormGetField( showview_form "report_ol") then  
				axlVisibleLayer("Board Geometry/outline" t)
			else
				axlVisibleLayer("Board Geometry/outline" nil)
		      )
			if( axlFormGetField( showview_form "report_st") then  
				axlVisibleLayer("Package Geometry/Silkscreen_Top" t)
				axlVisibleLayer("Board Geometry/Silkscreen_Top" t)
				axlVisibleLayer("Ref Des/Silkscreen_Top" t)
			else
				axlVisibleLayer("Package Geometry/Silkscreen_Top" nil)
				axlVisibleLayer("Board Geometry/Silkscreen_Top" nil)
				axlVisibleLayer("Ref Des/Silkscreen_Top" nil)
		       )
			if( axlFormGetField( showview_form "report_sb") then  
				axlVisibleLayer("Package Geometry/Silkscreen_Bottom" t)
				axlVisibleLayer("Board Geometry/Silkscreen_Bottom" t)
				axlVisibleLayer("Ref Des/Silkscreen_Bottom" t)
			else
				axlVisibleLayer("Package Geometry/Silkscreen_Bottom" nil)
				axlVisibleLayer("Board Geometry/Silkscreen_Bottom" nil)
				axlVisibleLayer("Ref Des/Silkscreen_Bottom" nil)
		      )
			if( axlFormGetField( showview_form "report_ast") then  
				axlVisibleLayer("Package Geometry/Assembly_Top" t)
				axlVisibleLayer("Board Geometry/Assembly_Top" t)
				axlVisibleLayer("Ref Des/Assembly_Top" t)
			else
				axlVisibleLayer("Package Geometry/Assembly_Top" nil)
				axlVisibleLayer("Board Geometry/Assembly_Top" nil)
				axlVisibleLayer("Ref Des/Assembly_Top" nil)
		      )	
			if( axlFormGetField( showview_form "report_asb") then  
				axlVisibleLayer("Package Geometry/Assembly_Bottom" t)
				axlVisibleLayer("Board Geometry/Assembly_Bottom" t)
				axlVisibleLayer("Ref Des/Assembly_Bottom" t)
			else
				axlVisibleLayer("Package Geometry/Assembly_Bottom" nil)
				axlVisibleLayer("Board Geometry/Assembly_Bottom" nil)
				axlVisibleLayer("Ref Des/Assembly_Bottom" nil)
		      )
			if( axlFormGetField( showview_form "report_smt") then  
				axlVisibleLayer("Package Geometry/Soldermask_Top" t)
				axlVisibleLayer("Board Geometry/Soldermask_Top" t)
				axlVisibleLayer("Pin/Soldermask_Top" t)
				axlVisibleLayer("Via Class/Soldermask_Top" t)
			else
				axlVisibleLayer("Package Geometry/Soldermask_Top" nil)
				axlVisibleLayer("Board Geometry/Soldermask_Top" nil)
				axlVisibleLayer("Pin/Soldermask_Top" nil)
				axlVisibleLayer("Via Class/Soldermask_Top" nil)
		      )
			if( axlFormGetField( showview_form "report_smb") then  
				axlVisibleLayer("Package Geometry/Soldermask_Bottom" t)
				axlVisibleLayer("Board Geometry/Soldermask_Bottom" t)
				axlVisibleLayer("Pin/Soldermask_Bottom" t)
				axlVisibleLayer("Via Class/Soldermask_Bottom" t)
			else
				axlVisibleLayer("Package Geometry/Soldermask_Bottom" nil)
				axlVisibleLayer("Board Geometry/Soldermask_Bottom" nil)
				axlVisibleLayer("Pin/Soldermask_Bottom" nil)
				axlVisibleLayer("Via Class/Soldermask_Bottom" nil)
		      )
			if( axlFormGetField( showview_form "report_pmt") then  
				axlVisibleLayer("Package Geometry/Pastemask_Top" t)
				axlVisibleLayer("Board Geometry/Pastemask_Top" t)
				axlVisibleLayer("Pin/Pastemask_Top" t)
			else
				axlVisibleLayer("Package Geometry/Pastemask_Top" nil)
				axlVisibleLayer("Board Geometry/Pastemask_Top" nil)
				axlVisibleLayer("Pin/Pastemask_Top" nil)
		      )	
			if( axlFormGetField( showview_form "report_pmb") then  
				axlVisibleLayer("Package Geometry/Pastemask_Bottom" t)
				axlVisibleLayer("Board Geometry/Pastemask_Bottom" t)
				axlVisibleLayer("Pin/Pastemask_Bottom" t)
			else
				axlVisibleLayer("Package Geometry/Pastemask_Bottom" nil)
				axlVisibleLayer("Board Geometry/Pastemask_Bottom" nil)
				axlVisibleLayer("Pin/Pastemask_Bottom" nil)
		      )
			if( axlFormGetField( showview_form "report_dol") then  
				axlVisibleLayer("Drawing Format/outline" t)
			else
				axlVisibleLayer("Drawing Format/outline" nil)
		      )
			if( axlFormGetField( showview_form "report_pbt") then  
				axlVisibleLayer("Package Geometry/Place_Bound_Top" t)
			else
				axlVisibleLayer("Package Geometry/Place_Bound_Top" nil)
		      )
			 if( axlFormGetField( showview_form "report_pbb") then  
				axlVisibleLayer("Package Geometry/Place_Bound_Bottom" t)
			else
				axlVisibleLayer("Package Geometry/Place_Bound_Bottom" nil)
		      ) 
			if( axlFormGetField( showview_form "report_dfat") then  
				axlVisibleLayer("Package Geometry/DFA_Bound_Top" t)
			else
				axlVisibleLayer("Package Geometry/DFA_Bound_Top" nil)
		      )
			if( axlFormGetField( showview_form "report_dfab") then  
				axlVisibleLayer("Package Geometry/DFA_Bound_Bottom" t)
			else
				axlVisibleLayer("Package Geometry/DFA_Bound_Bottom" nil)
		      )
			if( axlFormGetField( showview_form "report_pk_kpin") then  
				axlVisibleLayer("Package Keepin/All" t)
			else
				axlVisibleLayer("Package Keepin/All" nil)
		      )
			if( axlFormGetField( showview_form "report_pk_kout") then  
				axlVisibleLayer("Package Keepout/All" t)
			else
				axlVisibleLayer("Package Keepout/All" nil)
		      ) 
			if( axlFormGetField( showview_form "report_route_kpin") then  
				axlVisibleLayer("Route Keepin/All" t)
			else
				axlVisibleLayer("Route Keepin/All" nil)
		      )
			if( axlFormGetField( showview_form "report_route_kout") then  
				axlVisibleLayer("Route Keepout/All" t)
			else
				axlVisibleLayer("Route Keepout/All" nil)
		      )
			if( axlFormGetField( showview_form "report_via_kout") then  
				axlVisibleLayer("Via Keepout/All" t)
			else
				axlVisibleLayer("Via Keepout/All" nil)
		      )
					axlVisibleUpdate(nil)
	         )			
	     )
)
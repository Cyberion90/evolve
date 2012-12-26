/*-------------------------------------------------------------------------------------------------------------------------
	Serverside initialization
-------------------------------------------------------------------------------------------------------------------------*/

// Show startup message
print( "\n=====================================================" )
print( " Evolve 1.0 by Overv succesfully started serverside." )
print( "=====================================================\n" )

// Load plugins
evolve:LoadPlugins()

// Tell the clients Evolve is installed on the server
hook.Add( "PlayerSpawn", "EvolveInit", function( ply )
	if ( !ply.EV_SentInit ) then
		timer.Simple( 1, function()
			umsg.Start( "EV_Init", ply )
			umsg.End()
		end )
		
		ply.EV_SentInit = true
	end
end )
/// @desc Transition(mode, target)
/// @function Transition(mode, target)
/// @arg mode sets transition mode between next, restart, and goto
/// @arg target sets target room when using goto mode

function Transition(){
	with (oTransition)
		{
		mode = argument[0];
		if(argument_count > 1) target = argument[1];
		
		}

}
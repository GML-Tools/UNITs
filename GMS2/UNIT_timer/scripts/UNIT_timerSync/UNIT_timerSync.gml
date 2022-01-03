
/*
	finit = function(handler, timer, argument);
	ftick = function(handler, timer, super);
	ffree = function(handler, timer);
*/


/// @function		UNIT_TimerSync(steps, [ftick], [finit], [ffree]);
/// @description	Синхронный таймер
function UNIT_TimerSync(_steps, _ftick, _finit, _ffree) : __UNIT_TimerTimelapse(_steps, _ftick, _finit, _ffree) constructor {
	
	#region __private
	
	static __tick = __UNIT_timerSyncTick;
	
	#endregion
	
	static _clone = function() {
		return self.__clone(UNIT_TimerSync);
	}
	
}

/// @function		UNIT_TimerSyncExt(steps, [ftick], [finit], [ffree]);
/// @description	Синхронный таймер
function UNIT_TimerSyncExt(_steps, _ftick, _finit, _ffree) : __UNIT_TimerTimelapseExt(_steps, _ftick, _finit, _ffree) constructor {
	
	#region __private
	
	static __tick = __UNIT_timerSyncTick;
	
	#endregion
	
	static _clone = function() {
		return self.__clone(UNIT_TimerSyncExt);
	}
	
}


#region __private

function __UNIT_timerSyncTick(_handler, _timer, _super) {
	
	if (self.__step > 0) {
		
		--self.__step;
		self.__ftick(_handler, _timer, _super);
		return (self.__step == 0);
	}
}

function UNIT_timerSync() {};

#endregion


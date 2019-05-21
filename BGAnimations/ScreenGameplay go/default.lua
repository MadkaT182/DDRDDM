return Def.ActorFrame {
	LoadActor("go")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,3;diffusealpha,0);
	};
};

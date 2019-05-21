return Def.ActorFrame {
	LoadActor("demo")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-128);
	};
};

return Def.ActorFrame {
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+17;y,SCREEN_TOP+76);
	};
	LoadActor("a")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+5;y,SCREEN_CENTER_Y-90);
	};
	LoadActor("b")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y+80);
	};
	LoadActor("c")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+7;y,SCREEN_CENTER_Y-6);
	};
	LoadActor("marquee")..{
		OnCommand=cmd(x,SCREEN_RIGHT+752;y,SCREEN_BOTTOM-62;linear,12;x,SCREEN_LEFT-752);
	};
};
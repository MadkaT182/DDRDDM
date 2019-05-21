return Def.ActorFrame {
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+68;zoom,0;sleep,.32;linear,.32;zoom,1);
		OffCommand=cmd(linear,.32;zoom,0);
	};
	LoadActor("../frameinfo")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-95;zoom,0;sleep,.32;linear,.32;zoom,1);
		OffCommand=cmd(linear,.32;zoom,0);
	};
};
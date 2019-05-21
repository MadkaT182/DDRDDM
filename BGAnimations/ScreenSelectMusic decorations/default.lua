return Def.ActorFrame {
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_TOP+71);
	};
	LoadActor("subt")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+15;y,SCREEN_TOP+105);
	};
	LoadActor("../hand")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+260;y,SCREEN_TOP+105;zoom,.73;bounce);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor("../hand")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-260;y,SCREEN_TOP+105;zoom,.73;zoomx,-.73;bounce);
		OffCommand=cmd(diffusealpha,0);
	};
	LoadActor("lbldance")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+1;y,SCREEN_BOTTOM-99);
	};
	LoadActor("tray")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+212);
		OffCommand=cmd(sleep,.1;linear,1.68;y,SCREEN_BOTTOM-190;sleep,.88;linear,1.12;y,SCREEN_BOTTOM+212);
	};
	LoadActor("cd");
	LoadActor("../norm_stage")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-182;y,133);
	};
	LoadActor("../_style")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+80;y,129);
	};
	-- LoadActor(THEME:GetPathG("Gameplay","difficulty"))..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,129);
	-- };
	Def.Quad{
		OffCommand=cmd(diffuse,color("#FFFFFF");FullScreen;diffusealpha,0;sleep,4.32;linear,.32;diffusealpha,1);
	};
};
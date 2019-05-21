return Def.ActorFrame {
	LoadActor("logo")..{
		OnCommand=cmd(stop;sleep,10.32;queuecommand,"Logo");
		LogoCommand=cmd(play);
		Condition=not IsHome();
	};
	Def.Quad{
		OnCommand=cmd(diffuse,color("#FFFFFF");FullScreen);
	};
	LoadActor("disney")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-4;y,SCREEN_CENTER_Y;sleep,4.68;linear,.32;diffusealpha,0);
	};
	LoadActor("bemani")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,5.32;linear,.48;diffusealpha,1;sleep,4.04;linear,.28;diffusealpha,0);
	};
	LoadActor("konami")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,10.32;linear,.08;diffusealpha,1;sleep,4.32;linear,.04;diffusealpha,0);
	};
	LoadActor("kobe")..{
		OnCommand=cmd(Center;diffusealpha,0;sleep,14.76;linear,1.68;diffusealpha,1);
	};
};
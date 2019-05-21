return Def.ActorFrame {
	LoadActor("cleared")..{
		OnCommand=cmd(x,SCREEN_CENTER_X+2;y,SCREEN_CENTER_Y+1;sleep,5);
	};
	Def.Quad{
		OnCommand=cmd(diffuse,color("#FFFFFF");FullScreen;diffusealpha,0;sleep,1.88;linear,.36;diffusealpha,1;sleep,1);
	};
};

return Def.ActorFrame {
	LoadActor( "../logobg" )..{
		OnCommand=cmd(FullScreen);
	};
	LoadActor( "../game_logo" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,114;zoomx,0;zoomy,0;sleep,.72;linear,.12;zoomx,.04;zoomy,1.13;linear,.28;zoomx,1.15;linear,.16;zoom,1;linear,.12;zoomx,.98;zoomy,1.09;linear,.04;zoomx,1.1;linear,.16;zoom,1;linear,.08;zoomx,1.06;zoomy,1.03;linear,.08;zoom,1;linear,.04;zoomx,1.02;zoomy,1;linear,.12;zoom,1);
	};
	LoadActor( "../copy" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-42);
	};
}
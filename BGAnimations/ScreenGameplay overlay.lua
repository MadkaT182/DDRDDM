return Def.ActorFrame {
	LoadActor("_stageframe")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+58);
	};
	LoadActor("_lifebar");
	LoadActor("_style")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-40;y,SCREEN_BOTTOM-46);
	};
	LoadActor(THEME:GetPathG("Gameplay","difficulty"))..{
		OnCommand=cmd(x,SCREEN_CENTER_X+56;y,SCREEN_BOTTOM-46);	
	};
};

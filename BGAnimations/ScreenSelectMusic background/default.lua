local t = Def.ActorFrame{
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#FFFFFF");rainbow;effectperiod,50,0,0);
	};
	LoadActor("tile")..{};
}
return t;
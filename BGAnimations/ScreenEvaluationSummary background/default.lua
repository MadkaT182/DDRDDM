local t = Def.ActorFrame{
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#6828C7"));
	};
	LoadActor("tile");
}
return t;
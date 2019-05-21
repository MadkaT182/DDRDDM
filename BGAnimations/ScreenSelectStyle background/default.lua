local t = Def.ActorFrame{
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#C93E91"));
	};
	LoadActor("tile");
}
return t;
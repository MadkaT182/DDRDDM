local t = Def.ActorFrame{
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#0D8C17"));
	};
	LoadActor("tile");
}
return t;
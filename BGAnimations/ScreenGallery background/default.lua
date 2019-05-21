local t = Def.ActorFrame{
	Def.Quad{
		OnCommand=cmd(FullScreen;diffusecolor,color("#0053F4"));
	};
	LoadActor("tile");
}
return t;
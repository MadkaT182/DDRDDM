local children = {
	LoadActor("_Title"..THEME:GetString( 'ScreenTitleMenu', Var("GameCommand"):GetText()))..{
		OnCommand=cmd();
	};
};

return Def.ActorFrame { children = children };
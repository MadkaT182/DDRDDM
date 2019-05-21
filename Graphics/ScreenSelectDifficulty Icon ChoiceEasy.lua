return Def.ActorFrame {
	InitCommand=cmd(Center);
	LoadActor("Diff/item_basic")..{
		OnCommand=cmd(x,-149;y,-98;zoom,0;sleep,.32;linear,.32;zoom,1);
		OffCommand=cmd(linear,.32;zoom,0);
		GainFocusCommand=cmd(bob;diffusealpha,1);
		LoseFocusCommand=cmd(stopeffect;diffusealpha,0);
	};
	LoadActor("Diff/item_another")..{
		OnCommand=cmd(x,-149;y,-24;zoom,0;sleep,.32;linear,.32;zoom,1);
		OffCommand=cmd(linear,.32;zoom,0);
		GainFocusCommand=cmd(diffusealpha,1;diffuse,0.25,0.25,0.25,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("Diff/item_maniac")..{
		OnCommand=cmd(x,-149;y,46;zoom,0;sleep,.32;linear,.32;zoom,1);
		OffCommand=cmd(linear,.32;zoom,0);
		GainFocusCommand=cmd(diffusealpha,1;diffuse,0.25,0.25,0.25,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("SelDifIco")..{
		OnCommand=cmd(x,129;y,-25);
		GainFocusCommand=cmd(diffusealpha,1);
		LoseFocusCommand=cmd(diffusealpha,0);
	};
	LoadActor("Diff/desc_basic")..{
		OnCommand=cmd(y,146;zoom,0;sleep,.32;linear,.32;zoom,1);
		OffCommand=cmd(linear,.32;zoom,0);
		GainFocusCommand=cmd(diffusealpha,1;zoomy,0;linear,.5;zoomy,1);
		LoseFocusCommand=cmd(stoptweening;diffusealpha,0);
	};
};
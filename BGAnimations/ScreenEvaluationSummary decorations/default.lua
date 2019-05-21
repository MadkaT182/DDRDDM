local MarvEnabled = PREFSMAN:GetPreference("AllowW1");
local MFix = 16;

if MarvEnabled ~= "AllowW1_Everywhere" then
	Mfix = 0;
end;

return Def.ActorFrame {
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+74);
	};
	LoadActor("max_lbl")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-112);
	};
	LoadFont("_system1")..{
		Text="MARVELOUS";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-72);
		Condition=MarvEnabled == "AllowW1_Everywhere"
	};
	LoadFont("_system1")..{
		Text="PERFECT";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-72+MFix);
	};
	LoadFont("_system1")..{
		Text="GREAT";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-56+MFix);
	};
	LoadFont("_system1")..{
		Text="GOOD";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-40+MFix);
	};
	LoadFont("_system1")..{
		Text="BOO";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-24+MFix);
	};
	LoadFont("_system1")..{
		Text="MISS";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-8+MFix);
	};
	LoadFont("_system1")..{
		Text="RANK";
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+104);
	};
	LoadActor("tot_lbl")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+176);
	};
	LoadActor("stats");
	LoadActor("grade");
};

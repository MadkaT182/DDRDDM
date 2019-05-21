local t = Def.ActorFrame{
	LoadActor("failbg")..{
		InitCommand=cmd(FullScreen;);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w,h);
		end;
	};
	LoadActor("failed")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP-40;accelerate,.16;y,SCREEN_CENTER_Y;decelerate,.28;y,SCREEN_HEIGHT*.2;accelerate,.4;y,SCREEN_CENTER_Y;decelerate,.28;y,SCREEN_HEIGHT*.3;accelerate,.24;y,SCREEN_CENTER_Y;decelerate,.16;y,SCREEN_HEIGHT*.4;accelerate,.12;y,SCREEN_CENTER_Y;decelerate,.04;y,SCREEN_HEIGHT*.48;accelerate,.04;y,SCREEN_CENTER_Y;sleep,1.48);
	};
	LoadActor("sound")..{
		StartTransitioningCommand=cmd(play);
	};
	Def.Quad{
		OnCommand=cmd(FullScreen;diffuse,color("#000000");diffusealpha,0;sleep,3.48;linear,.36;diffusealpha,1);
	};
}
return t;
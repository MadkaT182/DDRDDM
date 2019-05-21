local t = Def.ActorFrame{
	LoadActor(THEME:GetPathG("bgtiles/faces",""))..{
		InitCommand=cmd(FullScreen;);
		OnCommand=function(self)
			local w = DISPLAY:GetDisplayWidth() / self:GetWidth();
			local h = DISPLAY:GetDisplayHeight() / self:GetHeight();
			self:customtexturerect(0,0,w,h);
			self:texcoordvelocity(-0.125,-0.125);
			self:diffusealpha(.5);
		end;
	};
}
return t;
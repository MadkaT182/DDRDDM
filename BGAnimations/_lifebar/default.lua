local t = Def.ActorFrame {};

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar under")..{
			Name="LifeMeter Frame";
			InitCommand=cmd(y,SCREEN_TOP+24;valign,0);
			OnCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-169):zoomx(1) else self:x(SCREEN_CENTER_X+171):zoomx(-1) end end;
		};
	};
end;

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	for i = 1,27 do
		t[#t+1] = Def.Sprite{
			BeginCommand=cmd(y,SCREEN_TOP+45);
			InitCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-274+8*i) else self:x(SCREEN_CENTER_X+274-8*i) end end;
			LifeChangedMessageCommand=function(self,params)
				self:Load(THEME:GetCurrentThemeDirectory().."BGAnimations/_lifebar/LifeMeterBar pills 27x1.png")
				self:pause()

				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 7.16 / 27)) * 10
					self:setstate(-1 + i)
					if pills >= i then self:visible(true) else self:visible(false) end
				end;
			end;
		};
	end
end;

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar over")..{
			InitCommand=cmd(y,SCREEN_TOP+24;valign,0;diffuseshift;effectcolor1,1,0,0,0;effectcolor2,1,0,0,1;visible,false);
			OnCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-169):zoomx(1) else self:x(SCREEN_CENTER_X+171):zoomx(-1) end end;
			LifeChangedMessageCommand=function(self,params)
				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 7.16 / 27)) * 10
					if pills < 4 then self:visible(true) else self:visible(false) end
				end;
			end;
		};
	};
end;

for pn in ivalues(GAMESTATE:GetEnabledPlayers()) do
	t[#t+1] = Def.ActorFrame{
		LoadActor("LifeMeterBar over")..{
			InitCommand=cmd(y,SCREEN_TOP+24;valign,0;diffuse,color("#5088F8");playcommand,"Anim");
			OnCommand=function(self) if pn == PLAYER_1 then self:x(SCREEN_CENTER_X-169):zoomx(1) else self:x(SCREEN_CENTER_X+171):zoomx(-1) end end;
			AnimCommand=cmd(diffusealpha,1;zoom,1;linear,.5;diffusealpha,0;zoomx,1.1;queuecommand,"Repeat");
			RepeatCommand=cmd(sleep,0;queuecommand,"Anim");
			LifeChangedMessageCommand=function(self,params)
				if (params.Player == pn) then
					local life = string.format("%.1f",params.LifeMeter:GetLife() * 10)
					local pills = (string.format("%.1f",life * 7.16 / 27)) * 10
					if pills == 27 then self:visible(true) else self:visible(false) end
				end;
			end;
		};
	};
end;

return t;
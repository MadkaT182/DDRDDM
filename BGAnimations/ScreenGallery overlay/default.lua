local xPos = 1;
local yPos = 1;
local t = Def.ActorFrame {
	LoadFont("Common normal")..{
		OnCommand=cmd(settext,"X:"..xPos.." Y:"..yPos;Center;addy,SCREEN_HEIGHT/4);
		UpCommand=cmd(stoptweening;playcommand,"On");
		DownCommand=cmd(stoptweening;playcommand,"On");
		LeftCommand=cmd(stoptweening;playcommand,"On");
		RightCommand=cmd(stoptweening;playcommand,"On");
	};

	Def.ActorFrame{
		--OnCommand=cmd(x,SCREEN_CENTER_X-11;y,SCREEN_TOP-133);
		OnCommand=cmd(Center);
		LoadActor(THEME:GetPathG("Game","Gallery/case"));
		Def.Sprite{
			OnCommand=cmd(x,13;y,-2;playcommand,"Set");
			SetCommand=function(self)
				self:Load(THEME:GetPathG("Game","Gallery/puzz_"..yPos..xPos));
			end;
		};
		SetCommand=function(self)
			self:linear(1);
			self:y(SCREEN_CENTER_Y-7);
		end;
	};

	UpCommand=function(self)
		yPos = yPos - 1;
		if yPos <= 0 then
			yPos = 2
		end
	end;

	DownCommand=function(self)
		yPos = yPos + 1;
		if yPos >= 3 then
			yPos = 1
		end
	end;

	LeftCommand=function(self)
		xPos = xPos - 1;
		if xPos <= 0 then
			xPos = 5
		end
	end;

	RightCommand=function(self)
		xPos = xPos + 1;
		if xPos >= 6 then
			xPos = 1
		end
	end;

	MenuUpP1MessageCommand=cmd(playcommand,"Up");
	MenuDownP1MessageCommand=cmd(playcommand,"Down");
	MenuUpP2MessageCommand=cmd(playcommand,"Up");
	MenuDownP2MessageCommand=cmd(playcommand,"Down");
	MenuLeftP1MessageCommand=cmd(playcommand,"Left");
	MenuRightP1MessageCommand=cmd(playcommand,"Right");
	MenuLeftP2MessageCommand=cmd(playcommand,"Left");
	MenuRightP2MessageCommand=cmd(playcommand,"Right");
	MenuStartP1Command=cmd(playcommand,"Set");
	MenuStartP2Command=cmd(playcommand,"Set");

};
return t;
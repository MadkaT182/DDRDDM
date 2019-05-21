local cdo = false;
local t = Def.ActorFrame {};

t[#t+1] = Def.ActorFrame {
	BeginCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+2);
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	Def.ActorFrame{
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
			OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
		};
	};
	Def.Sprite{
		OnCommand=cmd(ztest,true);
		OffMessageCommand=function(self)
			local Song = GAMESTATE:GetCurrentSong();
			if Song then
				discimg = GetSongArt(Song:GetDisplayMainTitle());
				if discimg == "fallback" then
					if Song:HasJacket() then
						self:LoadBackground(Song:GetJacketPath());
						self:setsize(256,256);
						self:ztest(true);
						cdo = true;
					elseif Song:HasBackground() then
						self:LoadBackground(Song:GetBackgroundPath());
						self:setsize(256,256);
						self:ztest(true);
						cdo = true;
					else
						self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
						self:ztest(false);
						cdo = false;
					end;
				else
					self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/"..discimg));
					self:ztest(false);
					cdo = false;
				end;
				self:sleep(2.04);
				self:linear(.16);
				self:zoom(.95);
				self:sleep(.46);
				self:linear(1.68);
				self:y(SCREEN_BOTTOM+128);
			else
				--Not Song
			end;
		end;
	};
	Def.ActorFrame{
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"))..{
		SetMessageCommand=function(self,params)
			if cdo then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end;
		end;
		OffCommand=function(self)
			self:sleep(2.04);
			self:linear(.16);
			self:zoom(.95);
			self:sleep(.46);
			self:linear(1.68);
			self:y(SCREEN_BOTTOM+128);
		end;
		};
	};
};

t[#t+1] = Def.ActorFrame {
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	Def.ActorFrame{
		Def.Sprite{
			InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-75);
			OffCommand=cmd(sleep,2.56;linear,.36;Center);
			SetMessageCommand=function(self)
				local Song = GAMESTATE:GetCurrentSong();
				if Song then
					self:stoptweening();
					self:linear(.1);
					self:diffusealpha(0);
					self:sleep(0);
					self:y(-48);
					discimg = GetSongArt(Song:GetDisplayMainTitle());
					self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/banner/"..discimg));
					self:sleep(.16);
					self:linear(.2);
					self:diffusealpha(1);
					self:y(SCREEN_CENTER_Y-75);
				else
					self:stoptweening();
					self:linear(.1);
					self:diffusealpha(0);
				end
			end
		};
		Def.Sprite{
			InitCommand=cmd(x,SCREEN_CENTER_X-209;y,SCREEN_CENTER_Y+89);
			OffCommand=cmd(sleep,2.68;linear,.36;diffusealpha,0);
			SetMessageCommand=function(self)
				local Song = GAMESTATE:GetCurrentSong();
				if Song then
					self:stoptweening();
					self:linear(.16);
					self:zoomx(0);
					self:sleep(.24);
					discimg = GetSongArt(Song:GetDisplayMainTitle());
					self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/portrait/"..discimg));
					self:linear(.12);
					self:zoomx(1);
				else
					self:stoptweening();
					self:linear(.16);
					self:zoomx(0);
				end
			end
		};
		Def.Sprite{
			InitCommand=cmd(x,SCREEN_CENTER_X+191;y,SCREEN_CENTER_Y+121);
			OffCommand=cmd(sleep,2.48;linear,.6;x,SCREEN_CENTER_X);
			SetMessageCommand=function(self)
				local Song = GAMESTATE:GetCurrentSong();
				if Song then
					self:stoptweening();
					self:diffusealpha(0);
					self:x(SCREEN_RIGHT+96);
					discimg = GetSongArt(Song:GetDisplayMainTitle());
					self:Load(THEME:GetPathG("", "MusicWheelItem Song NormalPart/icon/"..discimg));
					self:sleep(.16);
					self:diffusealpha(1);
					self:linear(.2);
					self:x(SCREEN_CENTER_X+191);
				else
					self:stoptweening();
					self:diffusealpha(0);
				end
			end
		};
		LoadFont("Difficulty")..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+176;playcommand,"Update");
			OffCommand=cmd(diffusealpha,0);
			UpdateMessageCommand=function(self)
				for player in ivalues(GAMESTATE:GetHumanPlayers()) do
					local Song = GAMESTATE:GetCurrentSong();
					local Steps = GAMESTATE:GetCurrentSteps(player);
					if Song and Steps ~= nil then
						local diff = GAMESTATE:GetCurrentSteps(player):GetDifficulty();
						local meter = Steps:GetMeter();
						local fixmeter = 0;
						local finalmeter = "";
						if meter > 5 then
							fixmeter = 4;
							self:textglowmode('TextGlowMode_Inner');
							self:glowshift();
							self:effectcolor1(1,1,1,1);
							self:effectcolor2(1,1,1,0);
						else
							fixmeter = meter-1;
							self:stopeffect();
						end
						for i=0,fixmeter do
							finalmeter = finalmeter..i;
						end
						self:settext(finalmeter);
					else
						self:settext("");
					end
				end
			end;
			CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Update");
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Update");
		};
	};
};

return t;
--GetThemeCD(songtit);
local cdo = false;
local t = Def.ActorFrame{
	--CD Mask
	Def.ActorFrame{
		Name="CdMask";
		InitCommand=cmd();
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/cd_mask"))..{
			OnCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true);
		};
	};
	--CD
	Def.Sprite{
		Name="Disc";
		OnCommand=cmd(ztest,true;);
		SetMessageCommand=function(self, params)
			local Song = params.Song;
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
			else
				--Not Song
			end;
		end;
		-- CurrentSongChangedMessageCommand=cmd(rotationz,0;linear,.147;sleep,0;rotationz,360;linear,.367;rotationz,0);
	};
	--Overlay
	Def.ActorFrame{
		Name="CdOver";
		LoadActor(THEME:GetPathG("", "MusicWheelItem Song NormalPart/cd/overlay"))..{
		SetMessageCommand=function(self,params)
			if cdo then
				self:diffusealpha(1);
			else
				self:diffusealpha(0);
			end;
		end;
		};
	};
};

return t;
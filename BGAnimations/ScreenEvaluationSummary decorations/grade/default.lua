local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();

if GAMESTATE:GetPlayMode() ~= "PlayMode_Oni" then
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		local cstats = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetGrade();
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetStageAward();

		t[#t+1] = Def.ActorFrame {
			InitCommand=function(self)
				self:player(player);
				self:y(SCREEN_CENTER_Y+82);
			end;
			Def.Sprite{
				Texture=THEME:GetPathG("", "Grades/Dummy");
				InitCommand=function(self)
					self:x(player == PLAYER_1 and SCREEN_CENTER_X-160 or SCREEN_CENTER_X+160);
					if cstats then
						self:Load(THEME:GetPathG("", "Grades/"..cstats));
					end
				end;
				OnCommand=cmd(diffusealpha,0;zoomy,0;sleep,.04;linear,.12;zoomy,1;diffusealpha,1);
			};
		};
	end
end

return t;
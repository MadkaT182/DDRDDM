local t = Def.ActorFrame {};
local players = GAMESTATE:GetNumSidesJoined();

for player in ivalues(GAMESTATE:GetHumanPlayers()) do
	--Vars
	local Score = string.format("% 9d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetScore());
	local Total = string.format("% 9d",STATSMAN:GetAccumPlayedStageStats():GetPlayerStageStats(player):GetScore());
	local Combo = string.format("% 3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):MaxCombo());
	local Marvelous = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W1"));
	local Perfect = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W2"));
	local Great = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W3"));
	local Good = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W4"));
	local Ok = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_Held"));
	local Miss = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_Miss"));
	local Almost = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetTapNoteScores("TapNoteScore_W5"));
	local NG = string.format("%.3d",STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetHoldNoteScores("HoldNoteScore_LetGo"));

	local Per_Marvelous = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W1"));
	local Per_Perfect = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W2"));
	local Per_Great = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W3"));
	local Per_Good = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W4"));
	local Per_Boo = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_W5"));
	local Per_Miss = PercScore(STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetPercentageOfTaps("TapNoteScore_Miss"));

	local MarvEnabled = PREFSMAN:GetPreference("AllowW1");
	local MFix = 16;

	if MarvEnabled ~= "AllowW1_Everywhere" then
		Mfix = 0;
	end;

	t[#t+1] = Def.ActorFrame{
		--Stats BG
		InitCommand=function(self)
			self:y(SCREEN_CENTER_Y-60);
			self:x(player == PLAYER_1 and SCREEN_CENTER_X-160 or SCREEN_CENTER_X+160);
		end;

		--Combo
		LoadFont("_sc_blue")..{
			InitCommand=function(self)
				self:x(player == PLAYER_1 and 66 or -14);
				self:y(-52);
				self:horizalign(right);
				self:settext(Combo);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 67 or -13);
				self:y(-28+MFix);
				self:horizalign(right);
				self:settext(Marvelous);
				self:sleep(.319);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 0 or 69);
				self:y(-28+MFix);
				self:horizalign(right);
				self:settext(Per_Marvelous);
				self:sleep(.319);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 67 or -13);
				self:y(-12+MFix);
				self:horizalign(right);
				self:settext(Perfect);
				self:sleep(.319*2);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 0 or 69);
				self:y(-12+MFix);
				self:horizalign(right);
				self:settext(Per_Perfect);
				self:sleep(.319*2);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 67 or -13);
				self:y(4+MFix);
				self:horizalign(right);
				self:settext(Great);
				self:sleep(.319*3);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 0 or 69);
				self:y(4+MFix);
				self:horizalign(right);
				self:settext(Per_Great);
				self:sleep(.319*3);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 67 or -13);
				self:y(20+MFix);
				self:horizalign(right);
				self:settext(Good);
				self:sleep(.319*4);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 0 or 69);
				self:y(20+MFix);
				self:horizalign(right);
				self:settext(Per_Good);
				self:sleep(.319*4);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 67 or -13);
				self:y(36+MFix);
				self:horizalign(right);
				self:settext(Almost);
				self:sleep(.319*5);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 0 or 69);
				self:y(36+MFix);
				self:horizalign(right);
				self:settext(Per_Boo);
				self:sleep(.319*5);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 67 or -13);
				self:y(52+MFix);
				self:horizalign(right);
				self:settext(Miss);
				self:sleep(.319*6);
				self:diffusealpha(1);
			end;
		};
		LoadFont("_eval_norm")..{
			InitCommand=function(self)
				self:diffusealpha(0);
				self:x(player == PLAYER_1 and 0 or 69);
				self:y(52+MFix);
				self:horizalign(right);
				self:settext(Per_Miss);
				self:sleep(.319*6);
				self:diffusealpha(1);
			end;
		};
		--Score
		LoadFont("_sc_blue")..{
			InitCommand=function(self)
				self:x(player == PLAYER_1 and 98 or 50);
				self:y(220);
				self:horizalign(right);
				self:settext(Score);
			end;
		};
		LoadFont("_sc_blue")..{
			InitCommand=function(self)
				self:x(player == PLAYER_1 and 98 or 50);
				self:y(252);
				self:horizalign(right);
				self:settext(Total);
			end;
		};
	};

end

return t;
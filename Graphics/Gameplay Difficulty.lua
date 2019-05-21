local t = Def.ActorFrame {};
local sides = GAMESTATE:GetNumSidesJoined();
local difP1 = "";
local difP2 = "";

if GAMESTATE:IsSideJoined(PLAYER_1) then
	difP1 = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_1):GetDifficulty());
end;

if GAMESTATE:IsSideJoined(PLAYER_2) then
	difP2 = CustomDifficultyToLocalizedString(GAMESTATE:GetCurrentSteps(PLAYER_2):GetDifficulty());
end;

function LoadDiff(player)
	local difficultyStates = {
		Difficulty_Beginner	 = 0,
		Difficulty_Easy		 = 1,
		Difficulty_Medium	 = 2,
		Difficulty_Hard		 = 3,
		Difficulty_Challenge = 4,
		Difficulty_Edit		 = 5,
	};
	return difficultyStates[GAMESTATE:GetCurrentSteps(player):GetDifficulty()] or 5;
end

if sides == 1 or difP1 == difP2 then
	t[#t+1] = Def.ActorFrame {
		LoadActor("difflbl")..{
			InitCommand=cmd(pause;setstate,LoadDiff(GAMESTATE:GetMasterPlayerNumber()));
		};
	};
else
	--Both sides
	t[#t+1] = Def.ActorFrame {
		LoadActor("difflbl")..{
			InitCommand=cmd(pause;setstate,LoadDiff(PLAYER_1));
		};
		LoadFont("_system0")..{
			Text="/";
			InitCommand=cmd(x,56);
		};
		LoadActor("difflbl")..{
			InitCommand=cmd(x,112;pause;setstate,LoadDiff(PLAYER_2));
		};
	};
end

return t;
local path = "../"
local stages = Def.ActorFrame {};

for _, s in ipairs(Stage) do
	if PREFSMAN:GetPreference("SongsPerPlay") == GAMESTATE:GetCurrentStageIndex()+1 then
		stages[#stages+1] = LoadActor(THEME:GetPathB("_stageframe/_stage","Stage_final")) .. {
			SetCommand=function(self, params)
				self:visible( GAMESTATE:GetCurrentStage() == "Stage_Final" );
			end;
		}
	else
		--Regular stages
		stages[#stages+1] = LoadActor(THEME:GetPathB("_stageframe/_stage",s)) .. {
			SetCommand=function(self, params)
				self:visible( params.StageToShow == s );
			end;
		}
	end

	--Suffix
	stages[#stages+1] = LoadActor(THEME:GetPathB("_stageframe/_stage","Frame")) .. {
		SetCommand=function(self, params)
			self:x(100);
		end;
	}
end

return stages;

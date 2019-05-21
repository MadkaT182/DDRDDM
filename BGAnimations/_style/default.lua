local style = GAMESTATE:GetCurrentStyle():GetStyleType();
local vMode = false;

if style == "StyleType_OnePlayerOneSide" then
	vMode = "Single";
elseif style == "StyleType_TwoPlayersTwoSides" then
	vMode = "Versus";
elseif style == "StyleType_OnePlayerTwoSides" then
	vMode = "Double";
end

return Def.ActorFrame {
	LoadActor("gp_"..vMode)..{
		Condition=vMode;
	};
};
local t = Def.ActorFrame {};
local style = GAMESTATE:GetCurrentStyle();

if style then
	st = style:GetName();
	local stimg = "sin";

	if st == "versus" then
		stimg = "ver";
		elseif st == "double" then
		stimg = "dou";
	end;

	t[#t+1] = Def.ActorFrame {
		LoadActor("Style/icon_"..stimg)..{};
	};
end;

return t;
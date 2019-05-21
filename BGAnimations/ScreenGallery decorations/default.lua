local t = Def.ActorFrame {
	LoadActor("title")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,64);
	};
};
for j = 1,2 do
	for i = 1,5 do
		t[#t+1] = Def.ActorFrame {
			LoadActor("icon")..{
				OnCommand=cmd(x,SCREEN_CENTER_X-315+i*105;y,SCREEN_CENTER_Y-180+j*100);
			};
		};
	end;
end;
return t;
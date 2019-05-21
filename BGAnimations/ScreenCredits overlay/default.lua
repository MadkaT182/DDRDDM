return Def.ActorFrame {
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"director";sleep,1.433;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"takeo yakushiji";sleep,2.566;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"graphic designer";sleep,4.266;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"ken motomyra";sleep,5.333;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+98;settext,"terue hayashi\nshigeki hayashi\nyoshiaki koya\nshinji nakamura\nryo kakimoto";sleep,6.5;linear,10.333;y,SCREEN_TOP-98);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"program director";sleep,11.666;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"koichi yagi";sleep,12.766;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"programmer";sleep,14.466;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+57;settext,"yasuhito otsuka\nyukio toyama\ntoshihide kitamura";sleep,15.633;linear,9.067;y,SCREEN_TOP-57);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"sound director";sleep,19.533;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"masahiko kimura";sleep,20.633;linear,7.967;y,SCREEN_TOP-16);
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;sleep,22.3;linear,7.967;y,SCREEN_TOP-16);
		LoadFont("credit_2")..{
			OnCommand=cmd(settext,"music compose   arrange");
		};
		LoadActor("amp")..{
			OnCommand=cmd(x,49);
		};
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,"masahiko kimura\nhajime takai";sleep,23.466;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"recorded at";sleep,25.7;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+78;settext,"st.columbia akasaka\nlittle bach aoyama\nstudio you\nst.sonic garden";sleep,26.933;linear,9.633;y,SCREEN_TOP-78);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"recording coordination";sleep,30.266;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,"katsuhiko suzuki(kme)\nyouichi yamauchi(hot wave)";sleep,31.466;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"thanks to";sleep,33.666;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,"kazunari okido(kme)\nken okada(nippon columbia co.,ltd.)";sleep,34.866;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"product director";sleep,38.166;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"rieko taya";sleep,39.333;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"product designer";sleep,40.933;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,"hideki koide\nhideaki shinwaka";sleep,42.166;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"special thanks to";sleep,45.466;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+57;settext,"shinji sawa\nmizuhiro sato\nkanako hayai";sleep,46.6;linear,9.067;y,SCREEN_TOP-57);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"package illustrator";sleep,50.566;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"kenichi sudo";sleep,51.666;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+57;settext,'vocals on:\n\n"it'.."'"..'s a small world"';sleep,54.4;linear,9.067;y,SCREEN_TOP-57);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"suginami jido gassyodan";sleep,56.666;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,'"mickey mouse march"\n"mickey motion"';sleep,58.333;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"yuki heimer";sleep,60.066;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,'"the tiki tiki room"';sleep,61.766;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"lonnie hirsch";sleep,62.933;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,'"chip '.."'"..'n'.."'"..' dale'.."'"..'s vacation"';sleep,64.566;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"maki kimura";sleep,65.7;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,'"go go go"';sleep,67.366;linear,7.967;y,SCREEN_TOP-16);
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;sleep,68.533;linear,8.5;y,SCREEN_TOP-36);
		LoadFont("credit_1")..{
			OnCommand=cmd(settext,"mayumi gojo\nhajime takai");
		};
		LoadActor("cho")..{
			OnCommand=cmd(x,143;y,21);
		};
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,'"taiyo no rakuen"';sleep,70.833;linear,7.967;y,SCREEN_TOP-16);
	};
	Def.ActorFrame{
		OnCommand=cmd(x,SCREEN_CENTER_X-48;y,SCREEN_BOTTOM+36;sleep,71.966;linear,8.5;y,SCREEN_TOP-36);
		LoadFont("credit_1")..{
			OnCommand=cmd(settext,"yuki heimer\nmasahiko kimura");
		};
		LoadActor("cho")..{
			OnCommand=cmd(x,143;y,-20);
		};
		LoadActor("cho")..{
			OnCommand=cmd(x,175;y,21);
		};
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,'"mickey mouse ondo"';sleep,74.233;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"yuki kawamura";sleep,75.333;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,'"savana no mukou"';sleep,77;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadActor("courtesy")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+24;sleep,78.133;linear,8.367;y,SCREEN_TOP-24);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"disney interactive japan";sleep,81.566;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,"emiko tamamoto\ntomomi endo";sleep,82.7;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"walt disney records japan";sleep,84.966;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"hiroto sakamoto";sleep,86.133;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"telecom animation film co.,ltd.";sleep,87.767;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"keiko oyamada";sleep,88.934;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"kenji hachizaki";sleep,90.067;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+139;settext,"toshihiko masuda\nyuichiro yano\nteiichi takiguchi\nkouichi suenaga\nshoujiro nishimi\nhisao yokobori\nmasaya yasutome";sleep,91.2;linear,11.567;y,SCREEN_TOP-139);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"keiko yanagida";sleep,96.5;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+242;settext,"keiko yozawa\nkazuko hirai\nmiyuki goto\nnatsuko watanabe\nmiyoko shikibu\nkanako sato\nakihiko uda\nchie nishizawa\nyuka shibata\nnatsuko murakami\nayako hata\nkazumi inadome";sleep,97.6;linear,14.534;y,SCREEN_TOP-242);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,"tomoko yamamoto\nyoshihiro kasahara";sleep,105.9;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+118;settext,"eriko ishikawa\nsayuri nagashima\nmari hitokurri\nmidori suzuki\nmegumi kitajima\nsonomi kato";sleep,107.7;linear,10.834;y,SCREEN_TOP-118);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"osamu taniguchi";sleep,111.767;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"koji takeuchi";sleep,112.9;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"sound producer";sleep,115.634;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"tomoya tomita";sleep,116.8;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"producer";sleep,118.434;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+36;settext,"etsunobu ebisu\ntakeo yakushiji";sleep,119.567;linear,8.5;y,SCREEN_TOP-36);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"executive producer";sleep,121.8;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_1")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"shigeharu umezaki";sleep,123;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadFont("credit_2")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;settext,"developed by";sleep,125.734;linear,7.967;y,SCREEN_TOP-16);
	};
	LoadActor("konami")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+32;sleep,126.6;linear,8.566;y,SCREEN_TOP-32);
	};
	LoadActor("copy")..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM+16;sleep,130.2;linear,7.966;y,SCREEN_TOP-16);
	};
};

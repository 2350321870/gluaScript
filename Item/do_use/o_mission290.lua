function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
local	Tbt=LuaQueryTask("Tbaotuny")
local	level=LuaQuery("level")
	if(Tbt==0)then
		if(level<25)then
			Tbt=LuaRandom(47)+1
		elseif(level>=25 and level<30)then
			Tbt=LuaRandom(53)+1
		elseif(level>=30 and level<35)then
			Tbt=LuaRandom(60)+1
		elseif(level>=35 and level<45)then
			Tbt=LuaRandom(60)+1
		elseif(level>=45 and level<55)then
			Tbt=LuaRandom(88)+1
		else
			Tbt=LuaRandom(102)+1
		end
		LuaSetTask("Tbaotuny",Tbt)
	end
------------------------------------
Tbtpos={}
--Tbtpos[0]={szMapId,szMapName,pos_x,pos_y}
Tbtpos[1]={"lu_tyc","桃源村",126,215}
Tbtpos[2]={"lu_tyc","桃源村",258,215}
Tbtpos[3]={"lu_tyc","桃源村",336,227}
Tbtpos[4]={"lu_tyc","桃源村",438,185}
Tbtpos[5]={"lu_tyc","桃源村",594,161}
Tbtpos[6]={"lu_tyc","桃源村",654,197}
Tbtpos[7]={"lu_tyc","桃源村",534,227}
Tbtpos[8]={"lu_tyc","桃源村",516,161}
Tbtpos[9]={"lu_mwzl","迷雾之林",82,233}
Tbtpos[10]={"lu_mwzl","迷雾之林",124,246}
Tbtpos[11]={"lu_mwzl","迷雾之林",142,245}
Tbtpos[12]={"lu_mwzl","迷雾之林",190,296}
Tbtpos[13]={"lu_mwzl","迷雾之林",220,209}
Tbtpos[14]={"lu_mwzl","迷雾之林",256,263}
Tbtpos[15]={"lu_mwzl","迷雾之林",334,275}
Tbtpos[16]={"lu_mwzl","迷雾之林",346,191}
Tbtpos[17]={"lu_mwzl","迷雾之林",394,239}
Tbtpos[18]={"lu_mwzl","迷雾之林",430,173}
Tbtpos[19]={"lu_mwzl","迷雾之林",454,239}
Tbtpos[20]={"lu_mwzl","迷雾之林",478,275}
Tbtpos[21]={"lu_mwzl","迷雾之林",554,289}
Tbtpos[22]={"lu_jknj","建康南郊",124,409}
Tbtpos[23]={"lu_jknj","建康南郊",142,319}
Tbtpos[24]={"lu_jknj","建康南郊",196,295}
Tbtpos[25]={"lu_jknj","建康南郊",184,253}
Tbtpos[26]={"lu_jknj","建康南郊",142,229}
Tbtpos[27]={"lu_jknj","建康南郊",166,295}
Tbtpos[28]={"lu_jknj","建康南郊",166,379}
Tbtpos[29]={"lu_jknj","建康南郊",190,163}
Tbtpos[30]={"lu_jkdj","建康东郊",112,259}
Tbtpos[31]={"lu_jkdj","建康东郊",148,299}
Tbtpos[32]={"lu_jkdj","建康东郊",202,239}
Tbtpos[33]={"lu_jkdj","建康东郊",244,293}
Tbtpos[34]={"lu_jkdj","建康东郊",280,257}
Tbtpos[35]={"lu_jkdj","建康东郊",322,215}
Tbtpos[36]={"lu_jkdj","建康东郊",394,239}
Tbtpos[37]={"lu_jkdj","建康东郊",340,287}
Tbtpos[38]={"lu_jkdj","建康东郊",508,197}
Tbtpos[39]={"lu_jkdj","建康东郊",472,251}
Tbtpos[40]={"lu_jkdj","建康东郊",598,287}
Tbtpos[41]={"lu_wds","五斗山",158,393}
Tbtpos[42]={"lu_wds","五斗山",182,345}
Tbtpos[43]={"lu_wds","五斗山",302,297}
Tbtpos[44]={"lu_wds","五斗山",260,249}
Tbtpos[45]={"lu_wds","五斗山",590,105}
Tbtpos[46]={"lu_wds","五斗山",368,201}
Tbtpos[47]={"lu_wds","五斗山",482,153}
Tbtpos[48]={"lu_sz","山寨",174,283}
Tbtpos[49]={"lu_sz","山寨",276,283}
Tbtpos[50]={"lu_sz","山寨",276,211}
Tbtpos[51]={"lu_sz","山寨",336,229}
Tbtpos[52]={"lu_sz","山寨",318,277}
Tbtpos[53]={"lu_sz","山寨",396,295}
Tbtpos[54]={"lu_bfjy","北府军营",663,300}
Tbtpos[55]={"lu_bfjy","北府军营",579,372}
Tbtpos[56]={"lu_bfjy","北府军营",513,372}
Tbtpos[57]={"lu_bfjy","北府军营",411,390}
Tbtpos[58]={"lu_bfjy","北府军营",273,372}
Tbtpos[59]={"lu_bfjy","北府军营",135,258}
Tbtpos[60]={"lu_bfjy","北府军营",393,246}
Tbtpos[61]={"lu_wszb","渭水之滨",346,148}
Tbtpos[62]={"lu_wszb","渭水之滨",417,304}
Tbtpos[63]={"lu_wszb","渭水之滨",105,340}
Tbtpos[64]={"lu_wszb","渭水之滨",81,202}
Tbtpos[65]={"lu_fsda","淝水对岸",462,264}
Tbtpos[66]={"lu_fsda","淝水对岸",144,162}
Tbtpos[67]={"lu_fsda","淝水对岸",396,168}
Tbtpos[68]={"lu_fsda","淝水对岸",426,300}
Tbtpos[69]={"lu_fsda","淝水对岸",552,210}
Tbtpos[70]={"lu_fsda","淝水对岸",396,462}
Tbtpos[71]={"lu_fsda","淝水对岸",240,246}
Tbtpos[72]={"lu_fsda","淝水对岸",516,300}
Tbtpos[73]={"lu_xszl","西蜀竹林",542,218}
Tbtpos[74]={"lu_xszl","西蜀竹林",506,314}
Tbtpos[75]={"lu_xszl","西蜀竹林",182,326}
Tbtpos[76]={"lu_xszl","西蜀竹林",314,146}
Tbtpos[77]={"lu_xszl","西蜀竹林",482,290}
Tbtpos[78]={"lu_xszl","西蜀竹林",176,92}
Tbtpos[79]={"lu_xszl","西蜀竹林",386,244}
Tbtpos[80]={"lu_xszl","西蜀竹林",530,314}
Tbtpos[81]={"lu_fqcl","陷落关口",42,514}
Tbtpos[82]={"lu_fqcl","陷落关口",270,562}
Tbtpos[83]={"lu_fqcl","陷落关口",270,436}
Tbtpos[84]={"lu_fqcl","陷落关口",174,456}
Tbtpos[85]={"lu_fqcl","陷落关口",270,352}
Tbtpos[86]={"lu_fqcl","陷落关口",126,184}
Tbtpos[87]={"lu_fqcl","陷落关口",378,178}
Tbtpos[88]={"lu_fqcl","陷落关口",486,298}
Tbtpos[89]={"lu_thgj","太行古径",195,108}
Tbtpos[90]={"lu_thgj","太行古径",261,162}
Tbtpos[91]={"lu_thgj","太行古径",375,144}
Tbtpos[92]={"lu_thgj","太行古径",321,60}
Tbtpos[93]={"lu_thgj","太行古径",537,108}
Tbtpos[94]={"lu_thgj","太行古径",519,210}
Tbtpos[95]={"lu_thgj","太行古径",537,222}
Tbtpos[96]={"lu_thgj","太行古径",165,426}
Tbtpos[97]={"lu_thgj","太行古径",345,408}
Tbtpos[98]={"lu_dxlm","地下陵墓",156,198}
Tbtpos[99]={"lu_dxlm","地下陵墓",306,246}
Tbtpos[100]={"lu_dxlm","地下陵墓",426,282}
Tbtpos[101]={"lu_dxlm","地下陵墓",300,162}
Tbtpos[102]={"lu_dxlm","地下陵墓",552,402}
--...
-----
local szMapId=Tbtpos[Tbt][1]
local szMapName=Tbtpos[Tbt][2]
local px=Tbtpos[Tbt][3]
local py=Tbtpos[Tbt][4]

---------------------------------------------------
if(szMapId==MapName()) then
local cx=LuaQueryTemp("posx")
local cy=LuaQueryTemp("posy")
	if(cx>px-16 and cx<px+16 and cy>py-16 and cy<py+16) then
	    if(LuaQueryTask("Tyuanx_dm")==2) then
			LuaSay("宝物应当在这附近了，挖挖看吧")
			LuaSay("我挖呀.挖呀.挖.哇！")
		    LuaSay("获得物品@5灯谜钥匙@0，到活动使者那里使用钥匙打开灯谜游戏吧")
            LuaGive("o_mission291",1,"")
			LuaSetTask("Tbaotuny",0)
		else
		   	LuaSay("宝物应当在这附近了，挖挖看吧")
			LuaSay("我挖呀.挖呀.挖.哇！")
		    LuaSay("获得物品@5灯谜钥匙@0，拿着钥匙到活动使者那里打开灯谜游戏吧")
		    LuaGive("o_mission291",1,"")
		    LuaSetTask("Tyuanx_dm",2)
			LuaSetTask("Tbaotuny",0)
		end
			LuaOtherSendMenu()
		return 1
	else
		local dx=px-cx
		local dy=py-cy
		if(dx>0 and dy>0)then
		LuaShowNotify("向右"..floor(dx/8).."步，向下"..floor(dy/8).."步")
		elseif(dx>0 and dy<0)then
		LuaShowNotify("向右"..floor(dx/8).."步，向上"..(0-floor(dy/8)).."步")
		elseif(dx<0 and dy>0)then
		LuaShowNotify("向左"..(0-floor(dx/8)).."步，向下"..floor(dy/8).."步")
		else
		LuaShowNotify("向左"..(0-floor(dx/8)).."步，向上"..(0-floor(dy/8)).."步")
		end
		return 0
	end
else
	LuaShowNotify("这张藏宝图的藏宝地点在@2"..szMapName.."")
	return 0
end
end

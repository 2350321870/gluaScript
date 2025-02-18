tS_ewjl={
	--1 名称  2id  3需要元宝              
	{"@2二级材料@0","o_material_48",""}, --1  二级木
	{"@2三级材料@0","o_material_58",""},	--2   三级晶
	{"@2坐骑蛋@0","o_mission415",""},--	3						   
	{"@2还魂丹@0","o_state016y","@51元宝@0"},	--	4						   
	{"@2通宝@0","o_gold1y","@51元宝@0"},	--		5
	--以上为消耗2元宝额外奖励  1w铜币 	
	{"@2四级材料@0","o_material_23",""},-- 6   四级皮
	{"@2初级经验卷@0","o_state008y","@52元宝@0"},--		7	
	{"@2阎王之血(+500)@0","o_state053y","@52元宝@0"},--	8					   
	{"@2巫师水晶(+500)@0","o_state056y","@52元宝@0"},	--	9				   
	{"@2双防符[1小时]@0","o_state012y","@52元宝@0"},--	10					   
	{"@2双攻符[1小时]@0","o_state001y","@52元宝@0"},--	11					   
	{"@2力量符+50@0","o_state017y","@52元宝@0"},	--	12								   
	{"@2智慧符+50@0","o_state022y","@52元宝@0"},--	13									   
	{"@2敏捷符+50@0","o_state027y","@52元宝@0"},	--	14								   
	{"@2血池1@0","o_state065y","@53元宝@0"},--		15									   
	{"@2多倍贪婪金(1小时)@0","o_state034y","@53元宝@0"},--		16					   
	{"@2力量符+100@0","o_state018y","@54元宝@0"},--		17							   
	{"@2智慧符+100@0","o_state023y","@54元宝@0"},--		18							   
	{"@2敏捷符+100@0","o_state028y","@54元宝@0"},--19
	--以上为消耗4元宝	 4w铜币																   
	{"@2宠物食品[精]@0","o_food03y","@55元宝@0"},--	20							   
	{"@2魔池1@0","o_state068y","@55元宝@0"},	--			21							   						                   						   
	{"@2阎王之血(+1000)@0","o_state054y","@57元宝@0"},--	22							   
	--消耗6元宝  		
	{"@2中级经验卷@0","o_state010y","@58元宝@0"},--		23
	{"@2巫师水晶(+1000)@0","o_state057y","@59元宝@0"},--	24							   
	{"@2白银宝箱@0","o_box004y","@510元宝@0"},--			25								   
	{"@2白银宝箱@0","o_box004y","@510元宝@0"},--			26							   
	{"@2银票@0","o_gold2y","@510元宝@0"},--				27
	{"@2五级材料@0","o_material_33","@510元宝@0"},--		28		五级肉
	--消耗8元宝												   
	{"@2智慧符+200@0","o_state025y","@511元宝@0"},--		29								   
	{"@2力量符+200@0","o_state020y","@511元宝@0"},--		30								   
	{"@2敏捷符+200@0","o_state030y","@511元宝@0"},--		31								   
	{"@2智慧符+250@0","o_state026y","@515元宝@0"},--		32								   
	--消耗10元宝											   
	{"@2力量符+250@0","o_state021y","@515元宝@0"},--		33								   
	{"@2敏捷符+250@0","o_state031y","@515元宝@0"},--		34	
	{"@2高级级经验卷@0","o_state059y","@515元宝@0"},--		35
	{"@2小守财奴@0","o_state083y","@520元宝@0"},--		36							   						   
	--消耗12元宝											   
	}
function do_use()
if(LuaQueryTask("Tguaji")==0) then
	if(LuaQuery("level")<10) then
		LuaSay("毛主席说的好，自己动手,丰衣足食，@210级以上才能挂机@0，赶快努力升到10级吧@!")
	else
		LuaDoHook()
	end
elseif(LuaQueryTask("Tguaji")==1) then--挂机开始  但未结束
	--LuaDoHook()
	local q=LuaQueryTask("Tgj_time")-(GetCurrentTime()-LuaQueryTask("Tgj_kstime"))   --离挂机结束还差多少时间  秒
	local h=floor(q/3600)
	local f=floor((q-h*3600)/60) 
	local s=floor(q%60)
	if(h~=0 and f~=0 and s~=0) then
		LuaSay("@7你的挂机时间还没到@0，再等@5"..h.."小时"..f.."分钟"..s.."秒@0后点击@3挂机楔子@0获取挂机收益吧！（@1未领取收益前不能离开本地图@0，否则将视为@2自动放弃挂机收益@0，重置挂机系统），@7挂机过程中可以下线@0")
	elseif(h==0 and f~=0 and s~=0) then 
		LuaSay("@7你的挂机时间还没到@0，再等@5"..f.."分钟零"..s.."秒@0后点击@3挂机楔子@0获取挂机收益吧！（@1未领取收益前不能离开本地图@0，否则将视为@2自动放弃挂机收益@0，重置挂机系统），@7挂机过程中可以下线@0")
	elseif(h~=0 and f==0 and s~=0) then 
		LuaSay("@7你的挂机时间还没到@0，再等@5"..h.."小时零"..s.."秒@0后点击@3挂机楔子@0获取挂机收益吧！（@1未领取收益前不能离开本地图@0，否则将视为@2自动放弃挂机收益@0，重置挂机系统），@7挂机过程中可以下线@0")
	elseif(h~=0 and f~=0 and s==0) then 
		LuaSay("@7你的挂机时间还没到@0，再等@5"..h.."小时零"..f.."分钟@0后点击@3挂机楔子@0获取挂机收益吧！（@1未领取收益前不能离开本地图@0，否则将视为@2自动放弃挂机收益@0，重置挂机系统），@7挂机过程中可以下线@0")
	elseif(h==0 and f==0 and s~=0) then
		LuaSay("@7你的挂机时间还没到@0，再等@5"..s.."秒@0后点击@3挂机楔子@0获取挂机收益吧！（@1未领取收益前不能离开本地图@0，否则将视为@2自动放弃挂机收益@0，重置挂机系统），@7挂机过程中可以下线@0")
	elseif(h==0 and f~=0 and s==0) then
		LuaSay("@7你的挂机时间还没到@0，再等@5"..f.."分钟@0后点击@3挂机楔子@0获取挂机收益吧！（@1未领取收益前不能离开本地图@0，否则将视为@2自动放弃挂机收益@0，重置挂机系统），@7挂机过程中可以下线@0")
	elseif(h~=0 and f==0 and s==0) then
		LuaSay("@7你的挂机时间还没到@0，再等@5"..h.."小时@0后点击@3挂机楔子@0获取挂机收益吧！（@1未领取收益前不能离开本地图@0，否则将视为@2自动放弃挂机收益@0，重置挂机系统），@7挂机过程中可以下线@0")
	end
elseif(LuaQueryTask("Tguaji")==2) then --挂机结束 领奖
	LuaTaskKillAdd(LuaQueryStrTask("Tgj_gwID"),LuaQueryTask("Tgj_num"))  --设置挂机杀怪计数
	local m=LuaQueryTask("Tgj_tp")--查询当前挂机药丸种类
	LuaSay("恭喜你获得@2"..floor(LuaQueryTask("Tgj_num")*LuaQueryTask("Tgj_gwjy")).."@0挂机经验。") --单个经验*数量*基数
	LuaAddJx("combat_exp",floor(LuaQueryTask("Tgj_num")*LuaQueryTask("Tgj_gwjy")),"Tguaji")
	if(m==1 or m==10) then --消耗2通宝 或者1w铜币
		local p=LuaRandom(40)+1  --5个  5/40
		if(p<=5) then
			LuaSay("恭喜你获得挂机额外奖励"..tS_ewjl[p][1].."一个")
			LuaGive(tS_ewjl[p][2],1,"Tguaji")
		else
			LuaSay("哎，你人品不行啊，没有获得挂机额外奖励....")
		end
	elseif(m==2 or m==11) then --消耗4通宝或者4w
		local p=LuaRandom(60)+1 --19个可得到奖励  19/60
		if(p<=19) then
			if(p<=3 or p==6) then --商城没卖的
				LuaSay("恭喜你获得挂机额外奖励："..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p==6) then
					LocalMsg("恭喜玩家@3"..LuaQueryStr("name").."@0获得@54通宝挂机@0额外奖励：@2四级材料@0一个。")
				end
			else
				LuaSay("恭喜你获得挂机额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=16) then
					LocalMsg("恭喜玩家@3"..LuaQueryStr("name").."@0获得@54通宝挂机@0额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个。")
				end
			end
		else
			LuaSay("哎，你人品不行啊，没有获得挂机额外奖励....")
		end
	elseif(m==3) then --消耗6通宝
		local p=LuaRandom(60)+1  --22个可得到奖励  22/60
		if(p<=22) then
			if(p<=3 or p==6) then --商城没卖的
				LuaSay("恭喜你获得挂机额外奖励："..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("恭喜你获得挂机额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=20) then
					LocalMsg("恭喜玩家@3"..LuaQueryStr("name").."@0获得@56通宝挂机@0额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个。")
				end
			end
		else
			LuaSay("哎，你人品不行啊，没有获得挂机额外奖励....")
		end
	elseif(m==4) then --消耗8通宝  
		local p=LuaRandom(60)+1  --28个可得到奖励  28/60
		if(p<=28) then
			if(p<=3 or p==6) then --商城没卖的
				LuaSay("恭喜你获得挂机额外奖励："..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("恭喜你获得挂机额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=22) then
					LocalMsg("恭喜玩家@3"..LuaQueryStr("name").."@0获得@58通宝挂机@0额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个。")
				end
			end
		else
			LuaSay("哎，你人品不行啊，没有获得挂机额外奖励....")
		end
	elseif(m==5) then --消耗10通宝
		local p=LuaRandom(60)+1  --32个可得到奖励  32/60
		if(p<=32) then
			if(p<=3 or p==6) then --商城没卖的
				LuaSay("恭喜你获得挂机额外奖励："..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("恭喜你获得挂机额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(p>=23) then
					LocalMsg("恭喜玩家@3"..LuaQueryStr("name").."@0获得@510通宝挂机@0额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个。")
				end
			end
		else
			LuaSay("哎，你人品不行啊，没有获得挂机额外奖励....")
		end
	elseif(m==6 or m==7) then --消耗12通宝  
		local p=LuaRandom(60)+1  --36个可得到奖励  36/60
		if(p<=36) then
			if(p<=3 or p==6) then --商城没卖的
				LuaSay("恭喜你获得挂机额外奖励："..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
			else
				LuaSay("恭喜你获得挂机额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个")
				LuaGive(tS_ewjl[p][2],1,"Tguaji") 
				if(m==6) then --12通宝
					if(p>=24) then
						LocalMsg("恭喜玩家@3"..LuaQueryStr("name").."@0获得@512通宝挂机@0额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个。")
					end
				elseif(m==7) then --40通宝
					if(p>=32) then
						LocalMsg("恭喜玩家@3"..LuaQueryStr("name").."@0获得@540通宝挂机@0额外奖励：价值"..tS_ewjl[p][3].."的"..tS_ewjl[p][1].."一个。")
					end
				end
			end	
		else
			LuaSay("哎，你人品不行啊，没有获得挂机额外奖励....")
		end
	end
	LuaDeleteBuff("550")  --删除玩家buff
	LuaDelTask("Tgj_tp") --挂机药丸种类
	LuaDelTask("Tgj_gwID") --删除怪物id
	LuaDelTask("Tgj_gwjy") --挂机怪物经验（一个）
	LuaDelTask("Tgj_num") --挂机怪物数量
	LuaDelTask("Tguaji")  --挂机标记
	LuaDelTask("Tgj_bfID")  --挂机buffid
	LuaOtherSendMenu()
	LuaLogRecord("挂机","o_state100y","物品","消耗",1)
	return 1
end
LuaOtherSendMenu()
return 0 
end
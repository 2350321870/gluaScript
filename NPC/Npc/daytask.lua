function do_task(id, answer)

local level = LuaQuery("level")

if (answer == "0") then
		LuaSay("以下是今日任务！")
		if(LuaQueryTask("Tyaopin")==0)then
			AddMenuItem("每日药品派送", "sysinfo DayTask Tyaopin", "每日任务")
		end
		if(level>=19)then
			if(LuaQueryTask("T101")==0)then
				AddMenuItem("@2[宠]@0神奇的咒语", "sysinfo DayTask T101", "每日任务")
			end
			if(LuaQueryTask("T103")==0)then
				AddMenuItem("@2[宠]@0宠物金丹", "sysinfo DayTask T103", "每日任务")
			end
			if(LuaQueryTask("open") ==0 and LuaQueryTask("T105")==0)then
				AddMenuItem("@2[宠]@0祭拜阿猛", "sysinfo DayTask T105", "每日任务")
			end
		end
		if(level>=20)then
			if(LuaQueryTask("Teveryday_lx")==0)then
				AddMenuItem("连续登陆奖励", "sysinfo DayTask Teveryday_lx", "每日任务")
			end
			if(LuaQueryTask("everyday_GD")==0 or LuaQueryTask("everyday_SJ")==0 or LuaQueryTask("everyday_YB")==0)then
				AddMenuItem("每日登陆奖励", "sysinfo DayTask Teveryday", "每日任务")
			end
			if(LuaQueryTask("T423")==99 and LuaQueryTask("T302") == 0)then
				AddMenuItem("每日信使", "sysinfo DayTask T302", "每日任务")
			end
		end
		if(level>=25)then			--千里行商未加入列表，原因是可以无限制次数的做
			if(LuaQueryTask("Tcoc")==0)then
				AddMenuItem("商贾向背", "sysinfo DayTask Tcoc", "每日任务")
			end
		end
		if(level>=30)then			--富甲天下，手机军姿未加入，原因同上
			if(LuaQueryTask("SPEAK")==0)then
				AddMenuItem("真心话大冒险", "sysinfo DayTask SPEAK", "每日任务")
			end
			if(LuaQueryTask("T270")==0)then
				AddMenuItem("追杀犯人", "sysinfo DayTask T270", "每日任务")
			end
			if(GetCurrentHour()>=9 and GetCurrentHour()<10) then
				if(LuaQueryTask("T216") == 0)then
					AddMenuItem("@2[活]@0过关斩将", "sysinfo DayTask T216", "每日任务")
				end
			end
			if(GetCurrentHour()>=10 and GetCurrentHour()<12)then
				if(LuaQueryTask("T_newycb")==0 and LuaQueryTask("xbdotime")==0)then
					AddMenuItem("@2[活]@0寻宝大行动", "sysinfo DayTask T_newycb", "每日任务")
				end
			end
			if(GetCurrentHour()>=9 and GetCurrentHour()<10)  then
				if(LuaQueryTask("T271")==0)then
					AddMenuItem("@2[活]@0赏金猎人", "sysinfo DayTask T271", "每日任务")
				end
			end
			if(GetCurrentHour()>=12 and GetCurrentHour()<14) then
				if(LuaQueryTask("TpotatoScore")==0)then
					AddMenuItem("@2[活]@0土豆战争", "sysinfo DayTask TpotatoScore", "每日任务")
				end
			end
			if(GetCurrentHour()>=16 and GetCurrentHour()<18)then
				if(LuaQueryTask("Tfkdcg")==0)then
					AddMenuItem("@2[活]@0疯狂大采购", "sysinfo DayTask Tfkdcg", "每日任务")
				end
			end
			if(GetCurrentHour()>=20 and GetCurrentHour()<21)then
				if(LuaQueryTask("Tbzyhdotime")<10 and LuaQueryTask("Tbzyh")==0)then
					AddMenuItem("@2[活]@0捕捉冤魂", "sysinfo DayTask Tbzyh", "每日任务")
				end
			end
			if(LuaQueryTask("T515")==0)then
				AddMenuItem("世界寻宝", "sysinfo DayTask T515", "每日任务")
			end
		end
		if(level>=35)then
			if(LuaQueryTask("T272")==0)then
				AddMenuItem("挑战排行榜", "sysinfo DayTask T272", "每日任务")
			end
			if(LuaQueryTask("T932")==0)then
				AddMenuItem("排行十大", "sysinfo DayTask T932", "每日任务")
			end
		end
		if(level>=40)then
			if(LuaQueryTask("T200")==0)then
				AddMenuItem("扶持弱小", "sysinfo DayTask T200", "每日任务")
			end
		end
		if(level>=45)then
			if(LuaQueryTask("Twenda")==0)then
				AddMenuItem("问答挑战", "sysinfo DayTask Twenda", "每日任务")
			end
		end
		if(level>=55)then
			if(LuaQueryTask("Txhuanxing")==0)then
				AddMenuItem("环形任务", "sysinfo DayTask Txhuanxing", "每日任务")
			end
		end
		
elseif (answer == "T101") then
		LuaSay("@5地点：建康城@0*@3接取NPC：驯兽师")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "神奇的咒语")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T103") then
		LuaSay("@5地点：建康城@0*@3接取NPC：驯兽师")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "宠物金丹")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T105") then
		LuaSay("@5地点：建康城@0*@3接取NPC：驯兽师")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "祭拜阿猛")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "Teveryday_lx") then
		LuaSay("@5地点：宫殿@0*@3接取NPC：司马道子")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "连续登陆奖励")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "Teveryday") then
		LuaSay("@5地点：宫殿@0*@3接取NPC：司马道子")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "每日登陆奖励")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T302") then
		LuaSay("@5地点：北府军营@0*@3接取NPC：驿站小吏")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "每日信使")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "Tcoc") then
		LuaSay("@5地点：建康城@0*@3接取NPC：钱庄老板")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "商贾向背")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "SPEAK") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "真心话大冒险")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T216") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "过关斩将")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T270") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：苻坚")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "追杀犯人")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T_newycb") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：王振恶")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "寻宝大行动")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T271") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "赏金猎人")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "TpotatoScore") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "土豆战争")
		AddMenuItem("返回公告", "sysinfo BACK", "")		
elseif (answer == "Tfkdcg") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "疯狂大采购")
		AddMenuItem("返回公告", "sysinfo BACK", "")	
elseif (answer == "Tbzyh") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "捕捉冤魂")
		AddMenuItem("返回公告", "sysinfo BACK", "")	
elseif (answer == "T272") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "挑战排行榜")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T932") then
		LuaSay("@5地点：宫殿@0*@3接取NPC：司马道子")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "排行十大")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T200") then
		LuaSay("该任务你尚未完成！")
		LuaSay("@5地点：洛阳城@0*@3接取NPC：活动使者")
		AddMenuItem("返回公告", "sysinfo BACK", "")	
elseif (answer == "Twenda") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：苻坚")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "问答挑战")
		AddMenuItem("返回公告", "sysinfo BACK", "")	
elseif (answer == "Txhuanxing") then
		LuaSay("@5地点：云中城@0*@3接取NPC：拓跋圭")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "环形任务")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "T515") then
		LuaSay("@5地点：洛阳城@0*@3接取NPC：王镇恶")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "世界寻宝")
		AddMenuItem("返回公告", "sysinfo BACK", "")
elseif (answer == "Tyaopin") then
		LuaSay("@5地点：建康城南@0*@3接取NPC：药品商人")
		AddMenuItem("返回每日任务", "sysinfo DayTask 0", "每日药品派送")
		AddMenuItem("返回公告", "sysinfo BACK", "")
end
LuaOtherSendMenu()
return 1
end
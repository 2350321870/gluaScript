NPCINFO = {
serial= "182" ,
icon= 2545 ,
NpcMove=2545,
name= "冰雨使者" , 
iconaddr=1, 
butt="30|10|72", 
name_color ="CEFFCE" , 
lastsay="一直向前走是走不完的殊途",
LuaType=1,
}
function do_talk(answer)
local level= LuaQuery("level")
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	
	AddTopSayMenuItem("@7喜庆活动","")	
    if(LuaQueryStr("country_id")=="100" or true)then
		
		AddTopSayMenuItem("@4装备补偿","Bc_1")	
		AddTopSayMenuItem("[补偿]@3元宝金币","Bc_94")
		--AddTopSayMenuItem("@3物品铜币2","Bc_4")
	end

-----------------------------------聊天部分-------------------------------	
	
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end

if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("冰雨赠送活动介绍","liaotian","0")
end

return 1

---------------------------------------------
elseif(answer=="liaotian") then
	LuaSay("统一online内测中 欢迎各位玩家做做任务 发现@2问题@0向群主@3反馈@0 QQ：2350321870") 
elseif(answer=="1111")then
	LuaSay("暂无合区内容")
	
	
---------------------菜单建立部分-------------------------------------


elseif(answer=="Bc_1")then
	if(level>=15)then
		if(LuaQueryTask("Bc_1")==0 or true)then
			if(LuaFreeBag()>=12)then
				if(level>=50)then
					LuaGive("e_falchion153",1,3,"Bc_1")
					LuaGive("e_shield153",1,3,"Bc_1")
					LuaGive("e_sword153",1,3,"Bc_1")
					LuaGive("e_knife153",1,3,"Bc_1")
					LuaGive("e_book153",1,3,"Bc_1")
					LuaGive("e_pen153",1,3,"Bc_1")
					LuaGive("e_head153",1,3,"Bc_1")		--善战冠
					LuaGive("e_clothes153",1,3,"Bc_1")	--善战袍
					LuaGive("e_pants153",1,3,"Bc_1")		--善战护腿
					LuaGive("e_shoes153",1,3,"Bc_1")		--善战靴	
					LuaGive("e_earring153",1,3,"Bc_1")	--善战耳坠
					LuaGive("e_necklace153",1,3,"Bc_1")
				elseif(level>=40)then
					
					LuaGive("e_falchion151",1,2,"Bc_1")
					LuaGive("e_shield151",1,2,"Bc_1")
					LuaGive("e_sword151",1,2,"Bc_1")
					LuaGive("e_knife151",1,2,"Bc_1")
					LuaGive("e_book151",1,2,"Bc_1")
					LuaGive("e_pen151",1,2,"Bc_1")
					LuaGive("e_head151",1,2,"Bc_1")		--强者冠
					LuaGive("e_clothes151",1,2,"Bc_1")	--强者袍
					LuaGive("e_pants151",1,2,"Bc_1")		--强者护腿
					LuaGive("e_shoes151",1,2,"Bc_1")		--强者靴	
					LuaGive("e_earring151",1,2,"Bc_1")	--强者耳坠
					LuaGive("e_necklace151",1,2,"Bc_1")
				else
					
					LuaGive("e_falchion166",1,2,"Bc_1")
					LuaGive("e_shield166",1,2,"Bc_1")
					LuaGive("e_sword166",1,2,"Bc_1")
					LuaGive("e_knife166",1,2,"Bc_1")
					
					LuaGive("e_book166",1,2,"Bc_1")
					LuaGive("e_pen166",1,2,"Bc_1")
					
					LuaGive("e_head166",1,2,"Bc_1")		--强者冠
					LuaGive("e_clothes166",1,2,"Bc_1")	--强者袍
					LuaGive("e_pants166",1,2,"Bc_1")		--强者护腿
					LuaGive("e_shoes166",1,2,"Bc_1")		--强者靴	
					LuaGive("e_earring166",1,2,"Bc_1")	--强者耳坠
					LuaGive("e_necklace166",1,2,"Bc_1")
				end
				LuaSetTask("Bc_1",99)
				if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_94")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
					LuaSetTask("Customer",99)
					UpdateMenu()
				end
			else
				LuaSay("提示：你的背包空间不足11格，请先清理背包再来领取哦@!")
			end
		else
			LuaSay("您的补偿已经领取过了，给您带来的不便表示深深的歉意")
		end
	else
		LuaSay("你的等级还没有到@315级@0哦加油升级吧")
	end
	

elseif(answer=="Bc_94")then
	if(LuaQuery("level")>=15)then
		if(LuaQueryTask("Bc_94")==0)then
			LuaSay("欢迎参加统一内测 您将获得@2金币1500@0 和 @2元宝1500！@0")
			LuaAddYB(1,1500)
			LuaSay("获得系统赠送@2元宝1500@0")
			LuaAddYB(2,1500)
			LuaSay("获得系统赠送@2金币1500@0")
            --LuaGive("coin",1000000,"Bc_94")
            --LuaAddJx("combat_exp",50000000,"Bc_94")
			LuaSetTask("Bc_94",99)
			if(LuaQueryTask("Bc_94")==99)then
				LuaSetTask("Customer",99)
				UpdateMenu()
			end
		else
			LuaSay("您的奖励已经领取，欢迎帮忙内测和反馈错误哦！")
		end
	else
		LuaSay("你的等级还没有到@315级@0哦加油升级吧")
	end

	
	
 --[[elseif(answer=="Bc_3")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_3")==0)then
			LuaGive("coin",10000,"Bc_3")
			LuaSetTask("Bc_3",99)
		else
			LuaSay("您的补偿已经领取过了，给您带来的不便表示深深的歉意")
		end
	else
		LuaSay("你的等级还没有到@315级@0哦加油升级吧")
	end]]

	
	
elseif(answer=="Bc_4")then
LuaSay("得到奖励物品，这其中包括叛国铜币1W铜币")
	if(LuaQuery("level")>=20)then
		if(LuaFreeBag()>=4)then
			LuaSay("得到奖励物品，这其中包括叛国铜币1W铜币")
			LuaGive("o_state061j",3,"Bc_4")
			LuaGive("o_gendery",3,"Bc_4")
			if(level>=50)then
				LuaGive("o_present031",10,"Bc_4")
				LuaGive("o_ybsc002j",50,"Bc_4")
				LuaGive("coin",400000,"Bc_4")
				LuaGive("coin",10000,"Bc_4")
			elseif(level>=40)then
				LuaGive("o_present031",6,"Bc_4")
				LuaGive("o_ybsc002j",40,"Bc_4")
				LuaGive("coin",300000,"Bc_4")
				LuaGive("coin",10000,"Bc_4")
			elseif(level>=30)then
				LuaGive("o_present031",4,"Bc_4")
				LuaGive("o_ybsc002j",20,"Bc_4")
				LuaGive("coin",200000,"Bc_4")
				LuaGive("coin",10000,"Bc_4")
			end
				LuaSetTask("Bc_4",99)
			if(LuaQueryTask("Bc_4")==99)then
				LuaSetTask("Customer",99)
				UpdateMenu()
			end
		else
			LuaSay("提示：你的背包空间不足4格，请先清理背包再来领取哦@!")
		end
	else
			LuaSay("你的等级还没有到@320级@0哦加油升级吧！")
	end
end
LuaSendMenu()
return 1
end 
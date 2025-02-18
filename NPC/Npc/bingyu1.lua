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
if(answer=="ask")then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	--local havetask3=0	--灰色菜单
	local havetask4=0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7喜庆活动","")
    if(LuaQuery("level")>=1)then
		
		--AddTopSayMenuItem("@4装备补偿","Bc_1")
		AddTopSayMenuItem("[补偿]@3元宝金币","Bc_2578")
		AddTopSayMenuItem("[补偿]@3物品铜币[lv20]","Bc_4")
	    AddTopSayMenuItem("[抽奖]@3轩辕神剑问世[lv20]","wycj")
		AddTopSayMenuItem("[公告]@2查看公告", "sysinfo BACK", "")
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


--[[elseif(answer=="Bc_1")then
	if(LuaCheckCreateTime("2012-5-21-20-30-0")>0)then
		if(LuaQueryTask("Bc_1")==0)then
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
				if(LuaQueryTask("Bc_1")==99 and  LuaQueryTask("Bc_2578")==99 and  LuaQueryTask("Bc_4")==99 and  LuaQueryTask("Bc_5")==99)then
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
		LuaSay("此角色是在2012年5月21日20点30分之后创建的，不能领取此项补偿")
	end]]
	
	
	
elseif(answer=="Bc_2578")then
local level= LuaQuery("level")
	if(level>=1)then
		if(LuaQueryTask("Bc_2578")==0)then			
			LuaAddYB(1,500)
			LuaSay("获得@2元宝500@0")
			LuaAddYB(2,500)
			LuaSay("获得@2金币500@0")
			--LuaGive("e_moyu001",5,"Bc_2578")
			--LuaAddJx("combat_exp",10000000000000,"Bc_2578")
			LuaSetTask("Bc_2578",99)
			if(LuaQueryTask("Bc_2578")==99)then
				LuaSetTask("Customer",99)
				UpdateMenu()
			end
		else
			LuaSay("您的奖励已经领取，欢迎帮忙内测和反馈错误哦！")
		end
	else
		LuaSay("此角色是在2018年5月21日20点30分之后创建的，不能领取此项补偿")
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
		LuaSay("此角色是在2012年5月21日20点30分之后创建的，不能领取此项补偿")
	end]]
	
	
	
--[[elseif(answer=="Bc_4")then
	if(LuaQuery("level")>=30)then
		if(LuaQueryTask("Bc_4")==0)then
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
			LuaSay("您的奖励已经领取，欢迎帮忙内测和@3反馈错误@0哦！")
		end
    else
		LuaSay("此角色是在2018年5月21日20点30分之后创建的，不能领取此项补偿")
	end]]
---------------------------------物品铜币-----------------------------------------------
elseif(answer=="Bc_4")then
	local level= LuaQuery("level")
	local taskbc=LuaQueryTask("Bc_4")
	if(level>=20)then
		if(LuaFreeBag()>=4)then
			LuaSay("20,30,40,50可以领取一次,得到奖励物品,铜币")
			if(level>=50 and taskbc<50)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_present031",10,"Bc_4")
				LuaGive("o_ybsc002j",50,"Bc_4")
				LuaGive("coin",400000,"Bc_4")
				LuaSetTask("Bc_4",50)
			elseif(level>=40 and taskbc<40)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_gendery",1,"Bc_4")
				LuaGive("o_present031",6,"Bc_4")
				LuaGive("o_ybsc002j",40,"Bc_4")
				LuaGive("coin",300000,"Bc_4")
				LuaSetTask("Bc_4",40)
			elseif(level>=30 and taskbc<30)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_present031",4,"Bc_4")
				LuaGive("o_ybsc002j",20,"Bc_4")
				LuaGive("coin",200000,"Bc_4")
				LuaSetTask("Bc_4",30)
			elseif(level>=20  and taskbc<20)then
				LuaGive("o_state061j",3,"Bc_4")
				LuaGive("o_present031",2,"Bc_4")
				LuaGive("o_ybsc002j",10,"Bc_4")
				LuaGive("coin",100000,"Bc_4")
				LuaSetTask("Bc_4",20)
			elseif(taskbc<50)then
				LuaSay("当前等级段已领取过！")
			else
				LuaSay("已领取所有阶段奖励")
				LuaSetTask("Bc_4",99)
				UpdateMenu()
			end
		else
			LuaSay("提示：你的背包空间不足4格，请先清理背包再来领取哦@!")
		end
	else
		LuaSay("你的等级还没有到@320级@0哦加油升级吧！")
	end
	---------------------------------轩辕抽奖-----------------------------------------------
elseif(answer=="wycj")then
		if(LuaQuery("level")>=20)then
			LuaSay("活动使者：@3抽奖抽奖咯，有几率出轩辕神剑！@0")
			AddMenuItem("@7请选择","")
			AddMenuItem("@3我要抽奖[50元宝]","wycj1")
			AddMenuItem("@2抽奖活动介绍","js")
		else
			LuaSay("活动使者：武器太过强大,达到99级再来领取！")
		end

elseif(answer=="js")then
LuaSay("提示：有概率抽出@2强化石@03个 @2拆解符@03个3个 和辅助道具 有几率抽出绝世神兵@3轩辕神剑@0 在抽的时候不要忘记清理背包哟 ")

elseif(answer=="wycj1")then
LuaSetTask("wycj",1)
if(LuaQueryTask("wycj")==1)then
	if(LuaQueryMoney()>=50) then
		LuaSay("活动使者：消耗50元宝,转盘开始转动啦！期待着大奖吧......")
		LuaSay("活动使者：停......")
		LuaAddYB(1,-50)
		local r = LuaRandom(300)	
		--if(r>=200)then
			--LuaGive("e_horse089",1,5)
		--else
		--	LuaGive("e_xysj2",1,5)
		--end
            if(r==0)then
            	LuaGive("e_xysj",1,"wycj")                      
				LuaNotice("@2"..LuaQueryStr("name").."@0玩@3轩辕大抽奖@0活动，人品爆发得到了@3轩辕神剑1")
			elseif(r==1)then
				LuaGive("e_xysj2",1,5)
				LuaNotice("@2"..LuaQueryStr("name").."@0玩@3轩辕大抽奖@0活动，人品爆发得到了@3轩辕神剑2")
			elseif( r>=50 and r<90)then
				LuaGive("o_state070j",5,"wycj")--------魔池3------------33  
				LuaGive("o_state001j",5,"wycj")--------双攻符-----------2
			elseif( r>=90 and r<180)then
				LuaGive("o_state067j",5,"wycj")--------血池3------------24  
				LuaGive("o_state012j",5,"wycj")--------双防符-----------2 
			elseif( r>=180 and r<230)then
				LuaGive("o_box002",5,"wycj")-----------幸运宝盒
			elseif( r>=230 and r<250)then
				 LuaGive("o_ybsc002j",3,"wycj")---------强化石-----------20
			elseif( r>=250 and r<270)then
				LuaGive("o_ybsc001j",3,"wycj")---------拆解符-----------20
			else
				LuaSay("提示：你啥也没抽到，赠送您经验")	
				local level=LuaQuery("level")
    			local jingyan=level^2*250+level*5000	
				if(LuaQuery("level")<=80)then
					LuaAddJx("combat_exp",jingyan,"wycj")	
				end				
			end			
			--DelItem("o_mission252",6)
			--LuaSetTask("wycj",99)
	else
		LuaSay("活动使者：你没有足够的元宝抽奖！")
	
    end

end

end
LuaSendMenu()
return 1
end 
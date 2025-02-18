NPCINFO = {
serial= "34" ,
base_name="wqdhuoji",
icon= 2505, 
NpcMove=2505, 
name= "武器商人【商】" , 
--level=10 ,
iconaddr=1, 
butt="40|10|63", 
name_color = "CEFFCE" , 
lastsay="镶嵌升级乃兵器之王道",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=13,
{"e_falchion004" , 2000  , 8 },
{"e_falchion007" , 2000  , 8 },
{"e_falchion010" , 2000  , 8 },
{"e_pen003" , 2000  , 8 },
{"e_pen004" , 2000  , 8 },
{"e_pen006" , 2000  , 8 },
{"e_sword005" , 2000  , 8 },
{"e_sword009" , 2000  , 8 },
{"e_sword012" , 2000  , 8 },
{"e_book001" , 2000  , 8 },
{"e_book003" , 2000  , 8 },
{"e_knife003", 2000  , 8 },
{"e_knife006", 2000  , 8 },
} 
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
		local level= LuaQuery("level")
		local T230 = LuaQueryTask("T230")
		AddTopSayMenuItem("@7任务列表","")
		AddTopSayMenuItem("@3买卖","buy1")

		if(LuaQueryTask("bao_C")~=0)then
			AddTopSayMenuItem("@2矿精【隐藏】","T231")
			havetask =1
		end
--		if(T230 ==0 and level >=10)  then
--			AddTopSayMenuItem("升级装备【教程】","T230")
--			havetask =1
--		end
--		if(T230>0 and T230<99)  then
--			AddTopSayMenuItem("@2升级装备【教程】","T230")
--			havetask =2
--		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_3")==1 or LuaQueryTask("TfindNPC_3")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_3")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
		end
		if((LuaQueryTask("Tsnpc_21")==1 or LuaQueryTask("Tsnpc_21")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_21")
			if(LuaQueryTask("Tsnpc_21")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_21")==1 or LuaQueryTask("Tenpc_21")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_21")
			if(LuaQueryTask("Tenpc_21")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265B")==0)  then
			AddTopSayMenuItem("@2初临建康【剧情】","T265B")
			havetask =2
		end
		if(LuaQueryTask("Tcoc")==9)then
			AddTopSayMenuItem("@2商贾向背【每日】","Tcoc")
			havetask =2
		end
		AddTopSayMenuItem("前往崤山矿场","Cm1")
--		if(T230 ==99 and level<20)  then
--			AddTopSayMenuItem("升级装备【教程】","T230")
--		end

	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end	 
	return 1

elseif(answer=="liaotian") then
	LuaSay("武器商人：想要让你的武器变的更加绚丽吗？那就好好了解一下@2装备镶嵌、加星@0吧。")	
elseif(answer=="buy1") then
    DoBuy()			   


elseif(answer=="Tcoc")then---------------------商贾向背5 Tcoc===9
	if(LuaQueryTask("Tcoc")==9)then
		LuaSay("武器商人:我一直有这个想法,只是没表明,我非常赞成组建商会.")
		LuaSetTask("Tcoc",10)
		LuaSetTask("T955",10)
		AddLog("商贾向背【每日】",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_mp4",2,"Tcoc")
		end
	end
	UpdateMenu()
elseif(answer=="Tlvdep") then
	AddMenuItem("请选译","")
	AddMenuItem("说明","Tlvdepintro")
	AddMenuItem("降低装备等级需求","Tlvdepyes")
	elseif(answer=="Tlvdepintro") then
	LuaSay("每次可以降低装备等级需求1级,每次耗费一定的银票,耗费量是原等级需求与要降到的等级的差.")
	LuaSay("如原等级60,第1次耗费1张银票,第2次耗费2张...同一装备目前最多降20级")
	elseif(answer=="Tlvdepyes") then
	LuaItemLevelDep()

elseif(answer=="T230") then
	if(LuaQueryTask("T230") == 0) then
             LuaSay("武器商人：我来教你升级装备吧。选中你背包中的@2百茗裤@0，点击@2升级@0，就会弹出一个@2升级界面@0。")
             LuaSay("武器商人：选中@3升级@0按钮，按@3确定键@0即可升级。实践下吧，将我给你的@2百茗裤@0升级到@2绝尘裤@0。")
             LuaGive("o_material_11",4)
             LuaGive("o_material_20",4)
             LuaGive("e_pants002",1,"T230")
             LuaGive("coin",400,"T230")
             LuaSetTask("T230",1)
             AddLog("升级装备",236)
             UpdateMenu()
       elseif(LuaQueryTask("T230") == 1) then
			if(LuaItemCount("e_pants003") >0 ) then
			LuaSay("武器商人：孺子可教也，这么快就学会了升级。")
			AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T230jl")
			else
			   LuaSay("武器商人：你还没有将@2百茗裤@0升级为@2绝尘裤@0呢。")
			   LuaSay("武器商人：选中你背包中的@2百茗裤@0，点击@25升级@0，会弹出一个@2升级界面@0。")
			   LuaSay("武器商人：点击@2升级@0选项就可以升级装备了。")
		    end
       elseif(LuaQueryTask("T230") == 99) then
              LuaSay("武器商人：选中你背包中的@2装备@0，点击@2升级@0，会弹出一个@2升级界面@0。")
             LuaSay("武器商人：选中@3升级@0按钮，按@3确定键@0即可升级成更高等级的装备。")
	      LuaSay("提示：该任务已完成")
	   end
	   elseif(answer=="T230jl") then
           if(LuaQueryTask("T230") == 1) then
               LuaAddJx("combat_exp",27000,"T176")
			   LuaAddAchievementSchedule("Task_num",1)
               LuaSetTask("T230",99)
               DelLog("236")
               UpdateMenu()
	       end

elseif(answer=="T265B") then                       -----初临建康 
                 if(LuaQueryTask("T265B") ==0) then
    			LuaSay("武器商人：哟！大侠手中的武器乃是极品呀，我这的货可比不上，赠你200铜吧@!")
			LuaSetTask("T265B",99)
			LuaGive("coin",200,"T265B")
			--LuaDelTask("265B")
			UpdateMenu()
			UpdateNPCMenu("xiean")
		end


elseif(answer=="Cm1") then 
	local level= LuaQuery("level")
	if(level>=10 and LuaQueryTempStr("online")==LuaQueryStr("country_id"))then
	ChangeMap("lu_mine01")
	else
	LuaSay("初级采集场需本国人员10级才能进入.")
	end


elseif(answer=="T231") then                                                 
		if(LuaQueryStrTask("231Taskday")~=GetCurrentDay()) then
			LuaSetTask("231dotime",0)
		end
		if(LuaItemStatusNormalCount("o_mission145")>=1)then
			if(LuaQueryTask("231dotime")<10) then
				LuaSay("武器店伙计：看少侠包袱沉甸且带有微光，莫非有什么宝贝？")
				LuaSay(""..LuaQueryStr("name").."：实不相瞒，小人这里有一块发光的石头，苦于不知道有什么用处，大哥你见多识广，帮我看看吧!")
				LuaSay("武器店伙计：吖！此矿名为@3矿精@0，是打造武器的绝佳材料，我乃打造出生，少侠能否卖给我？")
				AddMenuItem("@7买卖选项","")
				AddMenuItem("@3卖","231yes")
				AddMenuItem("不卖","231no")
				AddLog("矿精【隐藏】",231)
				UpdateMenu()
			else
				LuaSay("提示：老身还没把这些矿石打造完，你明天再来吧")
				LuaDelTask("bao_C")
				UpdateMenu()
			end
		else
			LuaSay("武器店伙计：糊弄一个老头子是没有意思的，带上你的矿精再来找我吧！")
		end
		
			
		   elseif(answer=="231yes")then
			LuaSay("武器店伙计：多谢少侠，日后必当重谢")
			LuaSetTask("T231",1)
			LuaSetTask("231Taskday",GetCurrentDay())
			LuaAddTask("231dotime",1)
			AddLog("矿精【隐藏】",231)
			AddMenuItem("@7任务完成","")
			AddMenuItem("@3领取奖励","T231jl")
		  elseif(answer=="231no")then
			LuaSay("武器店伙计：只有武器打造者才能将矿精的作用发挥出来，你要是想留着就留着吧!")
			LuaDelTask("bao_C")
			UpdateMenu()

	    	    elseif(answer=="T231jl")then
			local level= LuaQuery("level")
				if(level>80)then
		level=80
	end
			if(LuaItemStatusNormalCount("o_mission145")>=1)then
		         if(LuaQueryTask("T231")==1) then
				 LuaDelTask("T231")
				 DelItem("o_mission145",1)
				 local jingyan
				 if(level<20)then
					jingyan=(21037+level^2*20)
				 elseif(level<30)then
					jingyan=(33000+level^2*20)
				 elseif(level<40)then
					jingyan=(43682+level^2*30)
				 elseif(level<50)then
					jingyan=(53682+level^2*30)
				 elseif(level<60)then
					jingyan=(64682+level^2*30)
				 else
					jingyan=(84682+level^2*40)
				 end
				 LuaAddJx("combat_exp",jingyan,"T231")
				 DelLog("231")
				 LuaDelTask("bao_C")
				 UpdateMenu()
			 end
			else
				LuaSay("@5提示：你没有携带矿精")
			end
--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_3")==1)then
					LuaSay("武器商人：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_3",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_3")==2)then
					LuaSay("武器商人：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_3",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("武器商人：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("武器商人：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")
		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end



elseif(answer=="Tsnpc_21")then
	if(LuaQueryTask("Tsnpc_21")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("武器商人：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_21",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_21")==2)then
		LuaSay("武器商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_21")then
	if(LuaQueryTask("Tenpc_21")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我告诉你多多关注兵器的质量")
		LuaSay("武器商人：我这里出产的兵器请大人放心好了。")
		LuaSetTask("Tenpc_21",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_21")==2)then
		LuaSay("武器商人：放大人放心我这里的兵器，去回复大人吧")
	end


end
LuaSendMenu()
return 1
end


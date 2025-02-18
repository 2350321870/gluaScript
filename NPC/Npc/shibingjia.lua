NPCINFO = {
serial="19" ,
base_name="shibingjia" ,
icon=2569,
NpcMove=2569 ,
name="士兵甲" ,
iconaddr=1 ,
butt="10|10|61" ,
name_color="CEFFCE" ,
lastsay="新手可到此进行免费治疗" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then
    havetask =0
    local level= LuaQuery("level")
    local T84= LuaQueryTask("T84")
		AddTopSayMenuItem("@7任务列表","")
		if(level<=15)then
			AddTopSayMenuItem("@3加血加蓝@0","Tzhiliao02")
		end
		if(LuaQueryTask("T85") <99)  then
		AddTopSayMenuItem("行伍教化【教程】","T85")               
		havetask =1
		end
		
		if(T84 ==0)  then
			AddTopSayMenuItem("使用装备【教程】","T84")         --使用装备
			havetask =1
		end
--		if(LuaQueryTask("T81")==0  and LuaQueryTask("T92")==99 and level<13)  then
--			AddTopSayMenuItem("消灭土甲虫【循环】","T81")
--			havetask =1
--		end
-----------------------------------------------------------------------
		if(LuaQueryTask("T92")==2) then
			AddTopSayMenuItem("@2真正的历练【剧情】","T92")
			havetask =4
		end
--		if(LuaQueryTask("T81")==1) then
--			AddTopSayMenuItem("@2消灭土甲虫【剧情】","T81")
--			havetask =4
--		end
------------------------------------------------------------------------
		if(LuaQueryTask("T92")==1) then
			AddTopSayMenuItem("@2真正的历练【剧情】","T92")
			havetask =2
		end
		if(T84 ==1)  then
			AddTopSayMenuItem("@2使用装备【教程】","T84")
			havetask =2
		end
		if((LuaQueryTask("Tsnpc_6")==1 or LuaQueryTask("Tsnpc_6")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_6")
			havetask=2
		end
		if((LuaQueryTask("Tenpc_6")==1 or LuaQueryTask("Tenpc_6")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_6")
			havetask=2
		end

		if(T84 ==99 and level<20)  then
			AddTopSayMenuItem("@9使用装备【教程】","T84")
		end
		if(LuaQueryTask("T92")==99 and level<20)  then
			AddTopSayMenuItem("@9使用快捷键【教程】","Tkjljn")
		end
------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1
------------------------------------------------
elseif(answer=="liaotian") then
  LuaSay("士兵甲：按@2确定键@0后，按@21键@0可查看@3自身档案@0，按@22键@0可进入@3装备界面@0，可@2配置属性点@0与@2查看自身属性装备@0。")

elseif(answer=="Tzhiliao02") then
	if((LuaQuery("max_hp") >LuaQuery("hp")) or (LuaQuery("max_mp") >LuaQuery("mp"))) then
		if(LuaQuery("hp")>0) then
              maxhp=LuaQuery("max_hp")
	      maxmp=LuaQuery("max_mp")
	      LuaSet("hp",maxhp)
	      LuaSet("mp",maxmp)
              FlushMyInfo("0")
	      LuaSay("士兵甲：经过治疗，你已变的生龙活虎。@3王主簿@0处可以购买补血补蓝的药物哦。")
	      else
		LuaSay("士兵甲：角色已死亡，无法治疗。")
	      end
	 else
	LuaSay("士兵甲：你正处于满血满魔状态，不需要治疗。@3王主簿@0处可以购买补血补蓝的药物哦。")
	end

elseif(answer=="T84") then                        ----------使用装备任务
	 if(LuaQueryTask("T84") == 0) then
           LuaSay("士兵甲：宝刀赠英雄，我这有祖传宝刀一柄，名为“钢炎”，今日便赠送于你，装备上让我瞧瞧你的风采吧。")
           LuaSay("士兵甲：点击@2确认键@0后再按@23键@0，这时出现@2背包界面@0，选中@2钢炎@0后点击@2使用@0就装备好了。")
           LuaSay("士兵甲：很简单吧，装备好了@2钢炎@0再来找我！")
	       LuaSetTask("T84",1)
           AddLog("使用装备【剧情】",84)
	   LuaGive("e_falchion002",1,1,"T82")
	   UpdateMenu()
           UpdateTopSay("装备了钢炎再来找我")
      elseif(LuaQueryTask("T84") == 1) then
         if(EquipInfo(1)=="钢炎") then
           LuaSay("士兵甲：小英雄真是睿智！顺便告诉你一个小秘密，@2按确认键后再按5键@0可@2进行世界传送@0哦。")            
           LuaSay("@7温馨提示@0：装备是您闯荡世界不可或缺的帮手，快把已经可以穿上的装备都穿上吧。@!")  
	       AddMenuItem("@7任务完成","")
           AddMenuItem("领取奖励","T84jl","")
         else
           LuaSay("士兵甲：你还没有将@2钢炎@0装备上呢，点击@2确认键@0后再按@23键@0，这时出现@2背包界面@0，选中@2钢炎@0后点击使用就装备好了。")
           UpdateTopSay("装备了钢炎再来找我")
          end
      elseif(LuaQueryTask("T84") == 99)then
	  LuaSay("士兵甲：点击@2确认键@0后再按@23键@0，这时出现@2背包界面@0，选中@2武器@0后点击@2使用@0就装备好了。")
	  LuaSay("提示：该任务已完成")
	  end
      elseif(answer=="T84jl") then 
          if(LuaQueryTask("T84") < 99) then
           LuaSetTask("T84",99)
           LuaAddJx("combat_exp",8400,"T84")
	   LuaAddAchievementSchedule("Task_num",1)
	   LuaGive("coin",640,"T10")
	   DelLog("84")
           UpdateMenu()
           end

elseif(answer=="T92") then                                                 -------真正的历练
		if(LuaQueryTask("T92")==1) then
		LuaSay("士兵甲：王主簿所言甚是，迷雾之林的土甲虫甚是凶残，去消灭4只土甲虫来锻炼自己吧！")
 		LuaSay("士兵甲：按@2确认键@0后再按@24键@0，在技能界面中选择要使用的技能，再按@21379@0中的一个键，就将@2攻击技能@0放入@2快捷键@0了。")
		LuaSay("士兵甲：使用快捷键，就可以使用技能来消灭怪物了。另外，快捷键有三栏，可用@3星号键@0切换。@!快试试吧，杀怪可是训练你PK的绝好机会哦")
		AddMenuItem("@7了解用快捷键技能","")
		AddMenuItem("如何用快捷键","Tkjljn")
		AddMenuItem("清楚了，不用了解","fangqi")
		LuaSetTask("T92",2)
                LuaSetTask("task_kill/mon_004/T92",1)
		UpdateTopSay("消灭4只土甲虫再来找我")
		AddLog("真正的历练【循环】",92)
		UpdateMenu()
		UpdateNPCMenu("wangzhubu")
		elseif(LuaQueryTask("T92")==2) then
			local a=LuaQueryTask("task_kill/mon_004/T92")-1
			if(LuaQueryTask("task_kill/mon_004/T92")>=5) then
			LuaSay("士兵甲：做得好！经历过血与火的磨练才能算是一名真正的军人。")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T92jl")
			else 
			LuaSay("士兵甲：你才消灭了@2"..a.."只@0土甲虫，消灭了4只土甲虫再来找我，它们就在这@4迷雾之林@0中。")
 			LuaSay("士兵甲：是否需要再了解一下@2如何使用快捷键释放技能@0？")
			AddMenuItem("@7了解用快捷键技能","")
			AddMenuItem("如何用快捷键","Tkjljn")
			AddMenuItem("清楚了，不用了解","fangqi")
			end
		end 
			  elseif(answer=="T92jl")then	
		        if(LuaQueryTask("T92")==2) then			
				LuaAddJx("combat_exp",7500,"T92")
				LuaAddAchievementSchedule("Task_num",1)
				LuaDelTask("task_kill/mon_004/T92")
				DelLog("92")
				LuaSetTask("T92",99)
				UpdateMenu()
				end
				UpdateNPCMenu("wangzhubu")

     elseif(answer=="fangqi") then
        LuaSay("士兵甲：嗯，很好！既然已经知道如何使用快捷键释放技能，我就不罗嗦了。@!")
     elseif(answer=="Tkjljn") then
        LuaSay("士兵甲：按@2确认键@0后再按@24键@0，弹出界面后就是技能树！灰色的是你没学的技能！发亮的是能用的技能！")
        LuaSay("士兵甲：@2选中一个技能@0以后，再按@21、3、7、9@0中的任意一个键，就将@2这个技能@0放入@2快捷键@0了。")
        LuaSay("士兵甲：@2退出技能界面@0后，按设置好的技能快捷键，就可以@2使用各种酷炫技能@0进行攻击了。")
        LuaSay("士兵甲：另外，可以@2用同样的方法@0@3设置药物到快捷键@0方便使用。@3快捷键@0有@2三栏@0，可以按@3星号键@0切换，快试试吧。@!")



elseif(answer=="T81") then                                                 -------消灭土甲虫
		if(LuaQueryTask("T81")==0) then
		LuaSay("士兵甲：我军到此本是为了消灭异族祸害，但见这迷雾之林土甲虫之害亦甚巨。")
		LuaSay("士兵甲：有劳英雄消灭@28只土甲虫@0再来找在下，在下会给你应得的奖励。土甲虫就在这@4迷雾之林@0中。")
                LuaSetTask("T81",1)
                LuaSetTask("task_kill/mon_004/T81",1)
		UpdateTopSay("消灭8只土甲虫")
		AddLog("消灭土甲虫【循环】",81)
		UpdateMenu()
		elseif(LuaQueryTask("T81")==1) then
			local b=LuaQueryTask("task_kill/mon_004/T81")-1
			if(LuaQueryTask("task_kill/mon_004/T81")>=9) then
			LuaSay("士兵甲：做得好！宝剑尚需千锤百炼，阁下更需再接再厉啦。")
			AddMenuItem("@7任务完成","")
		        AddMenuItem("领取奖励","T81jl")
			else 
			LuaSay("士兵甲：你才消灭了@2"..b.."只@0土甲虫，消灭了8只土甲虫再来找我，它们就在@4这迷雾之林@0中。")
			UpdateTopSay("消灭8只土甲虫再来找我")
			end
		end 
			  elseif(answer=="T81jl")then	
			  local level= LuaQuery("level")
			  	if(level>80)then
		level=80
	end
		        if(LuaQueryTask("T81")==1) then			
			if(LuaQueryTask("task_kill/mon_004/T81")>=9) then
				local jingyan=(7000+level^2*30)
				LuaAddJx("combat_exp",jingyan,"T81")
				if(LuaQueryTask("T81_a")==0) then
					LuaAddAchievementSchedule("Task_num",1)
					LuaSetTask("T81_a",99)
				end
				LuaDelTask("task_kill/mon_004/T81")
				DelLog("81")
				LuaDelTask("T81")
				UpdateMenu()
				end
				end

elseif(answer=="T85") then                     -----行伍教化1
       if(LuaQueryTask("T85")==0) then
	    LuaSay("士兵甲：本官在此教化万民，记住，按@3取消键@0后按@3#键@0可以@2自动寻路@0，按@37键@0可以打开@2帮助界面@0。")
	    LuaSay("士兵甲：按@3确定键@0后再按@32键@0可以查看@2装备信息@0，按@33键@0可以打开@2背包界面@0。现在我来考考你！")
		LuaSay("士兵甲：如何@3自动寻路？") --自动寻路
		AddMenuItem("@7答案选项","")
		AddMenuItem("不能自动寻路","NO_11")
		AddMenuItem("按取消键后再按#键","N11_ANSWER")
		AddMenuItem("按确认键后再按#键","NO_11")
		AddMenuItem("按确认键后再按1键","NO_11")

       elseif(LuaQueryTask("T85") == 1 ) then         --指南
	    LuaSay("士兵甲：如何@3获取帮助信息？")
	    AddMenuItem("@7答案选项","")
	    AddMenuItem("按取消键后再按#键","NO_21")
	    AddMenuItem("按确定键后按3键","NO_21")
	    AddMenuItem("按确定键后按8键","NO_21")
	    AddMenuItem("按取消键后再按7指南","N21_ANSWER")
	    
        elseif(LuaQueryTask("T85") == 2 ) then       --查看装备
        LuaSay("士兵甲：如何@3查看装备？")
        AddMenuItem("@7答案选项","")
	    AddMenuItem("按确认键再按3键","NO_31")
	    AddMenuItem("按取消键再按#键","NO_31")
	    AddMenuItem("按确认键再按2键","N31_ANSWER")
	    AddMenuItem("按取消键再按3键","NO_31")

        elseif(LuaQueryTask("T85") == 3 ) then       --打开背包
	    LuaSay("士兵甲：如何@3打开背包？")
	 AddMenuItem("@7答案选项","")
		AddMenuItem("按取消键再按3键","NO_41","")
	    AddMenuItem("按确认键再按3键","N41_ANSWER","")
	    AddMenuItem("按确认键再按2键","NO_41","")
	    AddMenuItem("按取消键再按#键","NO_41","")
		end

	   elseif(answer=="NO_11") then                                           
           LuaSetTask("T85",0)
          LuaSay("士兵甲：不会吧，这么简单的问题也答错？重新再答！")

	   elseif(answer=="N11_ANSWER") then
			if(LuaQueryTask("T85")<1) then
           LuaSetTask("T85",1)
           LuaAddJx("combat_exp",2000,"T85")
           LuaSay("士兵甲：这么简单的问题你答对了也没什么稀奇的，我再问你")
           DoTalk("T85")
           end
		elseif(answer=="NO_21") then                                            
             LuaSetTask("T85",1)
	         LuaSay("士兵甲：你答错了，重新再答！")

		elseif(answer=="N21_ANSWER") then
            if(LuaQueryTask("T85")<2) then
		     LuaSetTask("T85",2)
           LuaAddJx("combat_exp",2000,"T85")
           LuaSay("士兵甲：看来你还是有两下子嘛，我再问你")
           DoTalk("T85")
           end

		elseif(answer=="NO_31") then                                            
             LuaSetTask("T85",2)
	          LuaSay("士兵甲：这个问题确实有一点难度啊，给你机会重新选择。")

		elseif(answer=="N31_ANSWER") then
           if(LuaQueryTask("T85")<3) then
                LuaSetTask("T85",3)
           LuaAddJx("combat_exp",2000,"T85")
           LuaSay("士兵甲：你真是聪明啊，这个也知道啊，再问你一个问题。")
           DoTalk("T85")
           end

		elseif(answer=="NO_41") then                                                
                 LuaSetTask("T85",3)
                 LuaSay("士兵甲：这个问题确实很有难度啊，给你机会重新选择。")

		elseif(answer=="N41_ANSWER") then
                 if(LuaQueryTask("T85")<99) then
                 LuaSetTask("T85",99)
	             LuaSay("士兵甲：你真是太聪明了，居然全部都知道。")
	             LuaGive("coin",500,"T85")
                 LuaAddJx("combat_exp",4000,"T85")
				 LuaAddAchievementSchedule("Task_num",1)
                 UpdateMenu()
                 end


elseif(answer=="Tsnpc_6")then
	if(LuaQueryTask("Tsnpc_6")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是当朝大人给你的秘密信件，我只是个马夫")
		LuaSay("士兵甲：有劳大哥了")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_6",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_6")==2)then
		LuaSay("士兵甲：大哥你回去复命吧，我收到信了")
	end
elseif(answer=="Tenpc_6")then
	if(LuaQueryTask("Tenpc_6")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主明鉴，说信件可能会被抢劫，拖我给你带话，加紧防御工事")
		LuaSay("士兵甲：不用他说我也知道啊，保卫老百姓的安全是我们的责任啊")
		LuaSetTask("Tenpc_6",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_6")==2)then
		LuaSay("士兵甲：回去告诉你们大人，就说我知道了")
	end


end
LuaSendMenu()
return 1
end
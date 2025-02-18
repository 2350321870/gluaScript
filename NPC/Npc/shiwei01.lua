NPCINFO = {
serial= "28" ,
base_name="shiwei01" ,
icon= 2569,
NpcMove=2569,
name= "侍卫甲" , 
iconaddr=1, 
butt="10|10|64",
name_color = "CEFFCE" ,
lastsay="想要进入宫殿，就得给钱",
LuaType=1,
}
function do_talk(answer) 
	name=LuaQueryStr("name")
if (answer=="ask") then
		havetask =0 
	AddTopSayMenuItem("@7任务列表","","0")
	if(LuaPartyLevel() > 0 and LuaPartyServer() == 1) then
	  if(LuaQueryTask("T250") <= 1 )  then
	  AddTopSayMenuItem("声望兑换@3帮派声望","T250")
	  elseif(LuaQueryTask("T250")<13)  then
	  AddTopSayMenuItem("进行黑市比武","kshsbw")
	  elseif(LuaQueryTask("T250") >= 13)  then
	  AddTopSayMenuItem("完成黑市比武","wchsbw")
	  end
	end
--	if(LuaQueryTask("T1000A") == 0)  then
--	AddTopSayMenuItem("侍卫通传","T1000A")
--	end
	if(LuaPartyLevel() > 0)  then
	AddTopSayMenuItem("声望兑换@3黄金装备","swdhzb")
	end

if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end	 
return 1
elseif(answer=="liaotian") then 
     LuaSay("侍卫甲：守这宫殿大门可真是无聊。幸亏本侍卫心思灵巧会搞些新花样，咱可比那零零狗强多啦！")
	
elseif(answer=="swdhzb") then
	LuaSay("提示：稍后开放，敬请期待")

elseif(answer=="T250") then
	LuaSay("侍卫甲：帮派声望，是与个人声望息息相关的，只要不惜抛弃个人声望，就可以为帮派声望做出贡献。")
	if(LuaPartyLevel() > 0 and LuaPartyServer() == 1 and LuaQueryTask("repute") >= 5) then
	LuaSay("侍卫甲：兑换帮派声望，不可以直接换，而是需要参加我们的地下比武，并赢得胜利才能换。")
	LuaSay("侍卫甲：这里汇集了天下间最厉害的角色，甚至有西域的红毛鬼，东土的倭鬼和黑不溜秋的昆仑奴，阁下可愿意？")
	LuaSetTask("T250",1)
	AddMenuItem("@7黑市比武","")
	AddMenuItem("参加黑市比武","kshsbw")
	AddMenuItem("还是算了","")
	UpdateMenu()
	elseif(LuaPartyServer() == 0) then
	LuaSay("你不是在本服务器创建的帮派，不能进行兑换。")
	else
	LuaSay("你的个人声望不足5，还不能参加我们的比赛。")
	end

elseif(answer=="kshsbw") then
	local x=LuaRandom(4)
		if(x == 0) then
		xname = "红毛鬼"
		elseif(x == 1) then
		xname = "东倭鬼"
		elseif(x == 2) then
		xname = "昆仑奴"
		elseif(x == 3) then
		xname = "蒙面客"
		end
	    local rn=LuaRandom(3)
		if(rn == 1) then
			local pn=xname
			local nn=name
		else
			local pn=name
			local nn=xname
		end
	if(LuaQueryTask("T250") == 1) then
	LuaPartyMsg("黑市比武播音员：各位观众，我们欢迎下面这位参赛选手@3"..name.."@0进入比赛，挑战四大金刚！",0)
	LuaSetTask("T250",6)
	end
	 local r=LuaRandom(6)
	 if(r == 0) then
	   LuaSay("黑市比武播音员：哇塞，@3"..pn.."@0趁@3"..nn.."@0分心之际，给其一个左勾拳，看来很疼啊。")
	 elseif(r == 1) then
	   LuaSay("黑市比武播音员：wo靠，@3"..pn.."@0忒狠了，给@3"..nn.."@0一记[猴子摘桃]，咿呀，还是两个！")
	 elseif(r == 2) then
	   LuaSay("黑市比武播音员：威武，@3"..pn.."@0趁@3"..nn.."@0分心之际，给其一个左勾拳，看来很疼啊。")
	 elseif(r == 3) then
	   LuaSay("黑市比武播音员：残忍，实在是太残忍了，@3"..pn.."@0飞起一个佛山无影脚，@3"..nn.."@0凌空摔下！")
	 elseif(r == 4 or r == 5) then
	   LuaSay("黑市比武播音员：有没有搞错？@3"..pn.."@0使出了失传已久的还我漂漂拳，让@3"..nn.."@0的猪头样变样了！")
	 end
	if(LuaQueryTask("T250") >= 3 and LuaQueryTask("T250") < 12) then
		if(rn == 1) then
			LuaAddTask("T250",-1)
			LuaSay("侍卫甲：你目前的比赛成绩是积分"..(LuaQueryTask("T250")-6).."点。")
		else
			LuaAddTask("T250",1)
			LuaSay("侍卫甲：你目前的比赛成绩是积分"..(LuaQueryTask("T250")-6).."点。达到6点即可获得5点个人声望兑换帮派声望的机会。")
		end
	elseif(LuaQueryTask("T250") == 2) then
	LuaSay("侍卫甲：很抱歉，你目前的比赛成绩是积分已经是-4点，请重头再来吧。")
	LuaSetTask("T250",0)
	elseif(LuaQueryTask("T250") == 12) then
	LuaSay("黑市比武播音员："..name.."终于祭出了自己的绝招【温柔一刀】，让四大金刚在绵绵的情意中呕吐而死！胜利了！")
	LuaPartyMsg(""..name.."：感谢CCTV和MTV能给我这个机会在这里展示我的绝招！感谢亲爱的帮主和成员们对我的爱，我爱你们！",0)
	LuaAddTask("T250",1)
	end
	UpdateMenu()
	
elseif(answer=="wchsbw") then
       if(LuaQueryTask("T250") > 12) then
		LuaPartyMsg("侍卫甲："..name.."在黑市比武赛中以一敌四，以个人声望5点为代价为帮派带来了1点的贡献！",0)
		LuaSay("侍卫甲：恭喜你在黑市比武赛中以一敌四，以个人声望5点为代价为帮派带来了1点的贡献！")
		LuaSetTask("T250",0)
		if(LuaQueryTask("T250")==0) then
		LuaAdd("repute",-5)
		LuaPartyRepute(1,"兑换")
		end
	    UpdateMenu()
	   end
	   
elseif(answer=="T1000A") then
    if(LuaQueryTask("T1000A") ==0) then
	LuaSay(""..name.."：这位官爷，在下有要事入宫面圣，还望行个方便！")
	LuaSay("侍卫甲：尔等没有烦恼，可是我兄弟繁多，怎么也得意思意思吧？")
	AddMenuItem("打赏200铜币","YES","")
	AddMenuItem("贿赂20000铜币","NO","")
    end
    
elseif(answer=="YES") then
        if(LuaItemCount("coin") >= 200  ) then
		LuaGive("coin",-200,"T1000A")    
		LuaSetTask("T1000A",1)
		LuaSay("侍卫甲：兄弟，你是懂规矩的，对吧？呵呵，你懂就好啊！")
		UpdateMenu()
	    else
		LuaSay(""..name.."：呃……在下携带铜币不足@3200@0，打扰了。")
	    end
	    
elseif(answer=="NO") then
	if(LuaItemCount("coin") >= 20000  ) then
		LuaGive("coin",-20000,"T1000A")    
		LuaSetTask("T1000A",99)
		LuaSetTask("T1000B",99)
		LuaSay(""..name.."：小小意思，不成敬意，还望大哥与众兄弟以后能行个方便！")
		LuaSay("侍卫甲：哎呀！阁下出手不凡，来日绝非池中之物，兄弟们甚为仰慕啊！以后出入宫殿不再为难阁下了！")
		UpdateMenu()
	else
		LuaSay(""..name.."：呃……在下携带铜币不足@320000@0，打扰了。")
	end
	
	
end 
LuaSendMenu()
return 1
end 
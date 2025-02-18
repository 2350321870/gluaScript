NPCINFO = {
serial= "91" ,
base_name="vipgly",
icon= 2550 ,
NpcMove=2550,
name= "vip管理员" , 
iconaddr=1, 
butt="30|10|65", 
name_color ="CEFFCE" , 
lastsay="竭诚为您服务",
LuaType=1,
have_vip_item =1,
shopxh = 11,     ---vip专属道具出售
}
 function do_talk(answer)                          
 if (answer=="ask") then
	havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
        if(level>=20) then
        AddTopSayMenuItem("@3钥匙换经验","Tkeychange")
        end
	AddTopSayMenuItem("@3VIP特有商城","vipsc")
	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end 
	return 1

elseif(answer=="vipsc") then
	DoBuy() 

elseif(answer=="Tkeychange") then		--钥匙兑换经验
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(GetCurrentDay()~=LuaQueryStrTask("Tkeychangeday")) then	--基础兑换次数:1~5次:,1次1把钥匙；6~10:2；11~15:3；16~20:4.超过20,不能换取
	LuaSetTask("Tkeychangetime",0)
	end
	LuaSay("你是否想要成为誉满全服的10大高手呢？是否还在为升级缓慢而苦恼呢？")
	LuaSay("每天可以最多换取20次,1~5次耗费1把钥匙,6~10耗费2把钥匙,11~15耗费3把钥匙,16~20耗费4把钥匙")
	if(LuaQueryTask("Tkeychangetime")<20) then
	AddMenuItem("@7是否换取","")
	AddMenuItem("钥匙兑换经验","yescgexp")
	AddMenuItem("不兑换","nocgexp")
	else
	LuaSay("提示：你今天已经达到了兑换上限20次，不能再兑换。")
	end
	elseif(answer=="yescgexp") then
	Tkeychangetime=LuaQueryTask("Tkeychangetime")
	local exp=120000+level^2*85+level*12000
	LuaSay("提示：这是你今天的@3第"..(Tkeychangetime+1).."次@0兑换，耗费@2"..(floor(Tkeychangetime/5)+1).."把钥匙。")
	if(Tkeychangetime<5) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>0) then
		  if(keynumy>0) then
		  DelItem("o_key002y",1)
		  else
		  DelItem("o_key002j",1)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("提示：你没有@2幸运钥匙@0，不能兑换。")
		end
	elseif(Tkeychangetime<10) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>=2) then
		  if(keynumy>=2) then
		  DelItem("o_key002y",2)
		  elseif(keynumy>=1) then
		  DelItem("o_key002y",1)
		  DelItem("o_key002j",1)
		  else
		  DelItem("o_key002j",2)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("提示：你@2幸运钥匙@0不足2把，不能兑换。")
		end
	elseif(Tkeychangetime<15) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>=3) then
		  if(keynumy>=3) then
		  DelItem("o_key002y",3)
		  elseif(keynumy>=2) then
		  DelItem("o_key002y",2)
		  DelItem("o_key002j",1)
		  elseif(keynumy>=1) then
		  DelItem("o_key002y",1)
		  DelItem("o_key002j",2)
		  else
		  DelItem("o_key002j",3)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("提示：你@2幸运钥匙@0不足3把，不能兑换。")
		end
	elseif(Tkeychangetime<20) then
		local keynumy=LuaItemCount("o_key002y")
		local keynumj=LuaItemCount("o_key002j")
		local keynum=keynumy+keynumj
		if(keynum>=4) then
		  if(keynumy>=4) then
		  DelItem("o_key002y",4)
		  elseif(keynumy>=3) then
		  DelItem("o_key002y",3)
		  DelItem("o_key002j",1)
		  elseif(keynumy>=2) then
		  DelItem("o_key002y",2)
		  DelItem("o_key002j",2)
		  elseif(keynumy>=1) then
		  DelItem("o_key002y",1)
		  DelItem("o_key002j",3)
		  else
		  DelItem("o_key002j",4)
		  end
		LuaSetTask("Tkeychangeday",GetCurrentDay())
		LuaAddTask("Tkeychangetime",1)
		LuaAddJx("combat_exp",exp,"Tkeychange")
		else
		LuaSay("提示：你@2幸运钥匙@0不足4把，不能兑换。")
		end
	end
	elseif(answer=="nocgexp") then
		LuaSay("每日可是只有20次机会哦，机会难得啊。")		



end
LuaSendMenu()
return 1
end
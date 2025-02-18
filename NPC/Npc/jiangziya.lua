NPCINFO = { 
serial="112" ,
base_name="jiangziya" ,
icon=2572,
NpcMove=2572 ,
name="姜子牙" ,
iconaddr=1 ,
butt="10|15|60" ,
lastsay="汲取日月之精华幻化成仙矣！",
LuaType=1,
} 
function do_talk(answer) 

if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	local tt=LuaQueryTask("T870")%2
	AddTopSayMenuItem("@7任务列表","")
	if(tt==0)then
	AddTopSayMenuItem("@3闭关修炼","T870")
        else
	AddTopSayMenuItem("@3幻化成仙","T870")
	end
	AddTopSayMenuItem("@3修炼说明","xlsm")
return 1
--------------------------------------------------------------------------------------------------------------------		
elseif(answer=="T870") then
	local tt=LuaQueryTask("T870")%2
	local level= LuaQuery("level")
	if(GetCurrentDay()==LuaQueryStrTask("T870day") ) then
            if(LuaQueryTask("T870")<6)then     
	        if(tt==0)then
		   LuaSay("姜子牙；你开启了闭关修炼，一小时内不能离开本地图，否则领取修炼得重新开始！")
		   LuaSetTask("T870time",LuaQuery("onlinetime"))
		   LuaAddTask("T870",1)
		   UpdateMenu()
		else
		  local XLtimes=LuaQuery("onlinetime")-LuaQueryTask("T870time")
		  local XL=floor(XLtimes/60)
		 if(XLtimes>3600 or XLtimes<0)then
		     LuaSay("姜子牙：年轻人定力不错，这是你修炼获得的奖励，如果你运气好也许意外奖励！")
		     LuaAddJx("combat_exp",floor(level/5-1)*50000,"T870") 
                     LuaAddTask("T870",1)	
		     LuaSetTask("XLtimes",0)
		     if(LuaRandom(100) == 77) then
			LuaSay("姜子牙：我看你资质不错，今就额外指条明路给你，如予贫道一个@3青纱券@0，即可助阁下飞升！")
                        AddMenuItem("请选择","")
			AddMenuItem("送上@8青纱券","ssdzqsj","")
			AddMenuItem("放弃这次机会","fq","")
			end
		     UpdateMenu()
		  else
		   LuaSay("你当前修炼时间为"..XL.."分钟,不足1小时，修炼时间切不可离开本图，否则修炼时间将重算！")
		  end

		end
	    else
	      LuaSay("姜子牙：年轻人，你已经用完3次时间了，明天再来吧！")
	    end
         else
	    LuaSay("姜子牙：新的一天开始了，我帮你打通任脉，你又可以有三次修炼时间了。")
            LuaSetTask("T870day",GetCurrentDay())
	    LuaSetTask("T870",0)
	    UpdateMenu()
	end 	
	
elseif(answer=="ssdzqsj") then
	if(LuaItemStatusNormalCount("o_zhaiquan1y") > 0) then
		LuaNotice("姜子牙:今@2"..LuaQueryStr("name").."@0顿悟大道得以飞升，甘露普降，为帮派带来20万收益！")
		AddMoneyToPartyBank(200000)
		LuaAddPartyMoney(0,20)
		DelItem("o_zhaiquan1y",1)
		LuaSet("hp",0)
                FlushMyInfo("0")
		LuaSay("姜子牙：阁下已获大道，飞升吧！")
		UpdateMenu()

	else
		LuaSay("姜子牙：阁下不够虔诚，并无青纱券。机会不可多得，去吧……")
	end
elseif(answer=="fq")then
     LuaSay("姜子牙：这百年一遇的机会，你这无知小儿竟然放弃，真是愚昧。")
--------------------------------------------------------------------------------------------------------------------
  elseif(answer=="xlsm")then 
     LuaSay("姜子牙：只要在贫道这修炼一小时者，小老儿便会给予他丰厚的奖励，当然这是有前提的。")
     LuaSay("姜子牙：一，闭关期间不能出本地图，二，一天只能修行三次。")
     LuaSay("姜子牙：修炼期间只算上线时间，如在修炼期间离开本图，修炼时间将会重新计算！切记不可偷奸耍滑。")
   
end 
LuaSendMenu()
return 1
end 



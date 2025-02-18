NPCINFO = {
serial="184" ,
base_name="mengjinggly" ,
icon=2563,
NpcMove=2563,
name="梦境使者" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="更多玩法，尽在梦境" ,
LuaType=1,
}
function do_talk(answer)
if (answer=="ask") then 
    havetask =0
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7梦境系统","")
	AddTopSayMenuItem("@3梦境规则","mjgz")
	AddTopSayMenuItem("@3梦境之拯救可人【活动】","Tdreamzjkr")
	if((LuaQueryTask("Tsnpc_18")==1 or LuaQueryTask("Tsnpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_18")
		havetask=2
	end
	if((LuaQueryTask("Tenpc_18")==1 or LuaQueryTask("Tenpc_18")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_18")
		havetask=2
	end
	AddTopSayMenuItem("聊天","liaotian",""..havetask.."")   
	return 1

elseif(answer=="liaotian") then
	 LuaSay("梦境使者：更多精彩玩法尽在梦境系统，18级以后，就可以挑战梦境了")

elseif(answer=="mjgz") then
	 LuaSay("梦境使者：进入梦境后，将会得到虚拟的等级、金钱、装备等。离开梦境后，会重新载入你的真实数据。")
	 LuaSay("梦境使者：在梦境中得到的任何东西，离开梦境后，都会消失。不过你可以凭借在梦境中的成绩，获取丰厚奖励。")
	if(LuaQuery("level")<18) then
	 LuaSay("@3温馨提示：梦境需要@418级以上@0的玩家才能进入，努力升级吧！@!")
	 end
elseif(answer=="Tdreamzjkr")then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(GetCurrentDay()~=LuaQueryStrTask("Tdreamzjkrday") ) then
		LuaDelTask("Tdreamzjkr")
		end
	if(LuaQuery("level")>18)then
	if( GetCurrentHour()>=14 and GetCurrentHour()<16)then
	if(LuaQueryTask("Tdreamzjkr")==0) then
	   if(LuaDreamQuery("T"..LuaQueryStr("id").."")==0) then
           LuaSay("梦境使者：善良的可人每日都被噩梦困扰，真是可怜，难得有勇士挺身相助。")
           LuaSay("梦境使者：梦境正常死亡后，将重新进入真实环境，你需要再重头开始拯救哦。")
           LuaSay("梦境使者：拯救成功后，可以获得高额经验、金钱奖励。@!")
           AddMenuItem("@7拯救可人","")
           AddMenuItem("@3接受","jieshou")
           AddMenuItem("@3放弃","fangqi")
    	   else
    	   LuaSetTask("Tdreamzjkr",99)
    	   LuaSetTask("Tdreamzjkrday",GetCurrentDay())
	   LuaDreamDel("T"..LuaQueryStr("id").."") 
     	   LuaSay("提示：你成功的拯救了可人")
     	   LuaGive("coin",5000,"Tdreamzjkr")
           LuaAddJx("combat_exp",100000+level^2*400+level*12000,"Tdreamzjkr")
    	   end
    	else
    	LuaSay("梦境使者：你今天已经完成了该活动，明天再来吧！")
    	end
	else
		LuaSay("梦境使者：该活动已结束或还未开始，每天@114:00~16:00@0即可参与！")
	end
	else
		LuaSay("梦境使者：该活动需要等级大于18级的玩家才可参与哦！")
	end

        elseif(answer=="jieshou") then
		if(LuaQueryTask("T116") == 1) then
		LuaSetTask("T116A",99)
		end
    		if(LuaQueryStr("MobieType") == "S62")then
    			LuaEnterDream("lu_dreamzjkr",909,149,1)
		elseif(LuaQueryStr("MobieType") == "S20")then
			LuaEnterDream("lu_dreamzjkr",909,149,4)
		else
			LuaEnterDream("lu_dreamzjkr",909,149,3)
		end

        elseif(answer=="fangqi") then
            LuaSay("提示：拯救被困梦境的可人，赢取丰厚的奖励。")
    		
   

elseif(answer=="Tsnpc_18")then
	if(LuaQueryTask("Tsnpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的加急信件，看上去很慌张")
		LuaSay("梦境使者：我先看看")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_18")==2)then
		LuaSay("梦境使者：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_18")then
	if(LuaQueryTask("Tenpc_18")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你说他上次做了一个很奇怪的梦")
		LuaSay("梦境使者：日有所思，夜有所梦，就是梦最好的解释")
		LuaSetTask("Tenpc_18",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_18")==2)then
		LuaSay("梦境使者：回去找你家主子领赏吧")
	end		


end
LuaSendMenu()
return 1
end
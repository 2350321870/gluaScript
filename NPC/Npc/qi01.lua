NPCINFO = {
serial= "43" ,--NPC id
base_name="qi01",
icon= 2533, 
NpcMove=2533, --动作的BIN文件名
name= "大旗" , --NPC名
--level=10 ,--级别
iconaddr=1, --资源文件所放的位置,1:为服务器.0为客户端
butt="15|15|65", --碰撞 碰撞区长|碰撞区宽|角色高，碰撞区宽和长由美术直接给出。
--name_color = "CEFFCE" , --名字色彩
lastsay="要想从此过，留下买路钱！",
LuaType=1,
}

function do_talk(answer)
if (answer=="ask") then 		
		local T41 = LuaQueryTask("T41")
		if(T41 ==1 or T41 ==3 ) then
			AddTopSayMenuItem("@2抢夺大旗【剧情】@0","T41") 
			end 
		return 1	
	
elseif(answer=="T41") then 
		if(LuaQueryTask("T41") == 1 ) then
				LuaSay(""..LuaQueryStr("name").."：真是容易啊，看来是手到擒来") 
				LuaSay(""..LuaQueryStr("name").."：啊，不好，中毒了") 
				LuaSay("提示：大旗上沾满了毒药，你正处于全身无力状态,生命垂危") 
				LuaSay(""..LuaQueryStr("name").."：还是保命要紧，我还是回去告诉@3士兵丁@0吧") 
				LuaSetTask("T41",2) 
				UpdateTopSay("快快回去找士兵丁吧") 
				AddLog("抢夺大旗【剧情】",41) 
				local maxhp=LuaQuery("max_hp")
	            LuaSet("hp",maxhp/10)
                FlushMyInfo("0x4")                 ------------------刷新生命值
                UpdateMenu()
				UpdateNPCMenu("shibingding")
		end 
		if(LuaQueryTask("T41") == 3 ) then
				LuaSay(""..LuaQueryStr("name").."：这个大旗可真是结实啊，看来得花一点时间") 
				LuaSay("提示：你成功的割下了大旗的一角") 
				LuaSay(""..LuaQueryStr("name").."：哈哈，终于成功了，看这些@3土匪@0怎么嚣张") 
				LuaSetTask("T41",4) 
				LuaGive("o_mission056",1)
				UpdateTopSay("") 
				AddLog("抢夺大旗【剧情】",41) 
                UpdateMenu()
				UpdateNPCMenu("shibingding")
		end 	

end
LuaSendMenu()
return 1
end	
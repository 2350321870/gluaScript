function OnDie()
if(LuaQueryTask("T73")==1) then	
   if (LuaItemCount("o_mission001") ==0) then
    LuaGive("o_mission001",1)
    if(LuaItemCount("o_mission001")==1) then
    CheckNpcStatusByMonItemID("T73","o_mission001")
    LuaSay("异族勇士："..LuaQueryStr("name").."，你别高兴得太早了，我只是我们族里面最弱的一个！你这是在自寻死路！")
    LuaSay("你已经成功击杀BOSS异族力士，得到了@2力士之证@0，回去交给@4迷雾之林@0@3田伍长@0吧")
    issay = 1
    end
   end
end
if(QueryAchievement("Tcj3_011")==0) then
	LuaSay("恭喜你杀死BOSS@3异族力士@0，获得成就@3侠义！异族力士@0！")
	LuaGiveAchievement("Tcj3_011",99)
	issay = 1
end
if(LuaQueryTask("Txhuanxing001")==1)then
	LuaSay("提示：你成功的击杀了异族勇士")
	LuaSetTask("Txhuanxing001",2)
 	issay = 1
end
if (issay == 1) then
    LuaOtherSendMenu()
end
return 1
end
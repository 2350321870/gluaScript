ans = {} 	
function OnEnter()
ans.rtype = 0
if(LuaQueryTask("Tbossta")==1)then
	LuaSay("60分钟之内消灭掉一个BOSS即可进入下一关！多人组队，只有最后一刀砍死BOSS的人才能进入下一关！如果实力够强，可以杀光所有BOSS！")
	LuaSay("离开或被踢出BOSS塔将不能再次参与挑战！")
	ans.rtype = 1
else
	LuaSay("你还没有消灭掉BOSS哦！你可以单挑BOSS！也可以组队，多人杀BOSS，只有最后一刀砍死BOSS的人才能进入下一关！")
end
LuaOtherSendMenu()
return ans.rtype
end
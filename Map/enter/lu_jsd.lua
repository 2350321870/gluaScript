ans = {} 	
function OnEnter()
if(LuaQueryStr("MobieType") ~= "S20")then
	LuaSay("@1温馨提示@0：如果你发现没boss，请稍安勿躁。boss被杀后要等数分钟才会刷出来，点击左上角的PK键，你可以发现boss身上出现一个数字，按下这个数字对应的键，你就能锁定boss了！把握时机将其击杀哦@!") 
else	
	LuaSay("@1温馨提示@0：如果你发现没boss，请稍安勿躁。boss被杀后要等数分钟才会刷出来，按下星号键，你可以发现boss身上出现一个数字，按下这个数字对应的键，你就能锁定boss了！把握时机将其击杀哦@!") 
end
ans.rtype = 1
LuaOtherSendMenu()
return ans.rtype
end
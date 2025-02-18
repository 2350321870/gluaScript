NPCINFO = {
name="人参",
butt="0|0|24",
isboss = 2,
serial= "999" ,
icon= 10521,
NpcMove= 10521, 
iconaddr= 1, 
maxnum= 1,
booty= "o_drug_hp1",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
if(LuaQueryTask("T133")==2) then
	if(LuaItemCount("o_mission067")==0)  then
	       LuaGive("o_mission067",1)
		  if(LuaItemCount("o_mission067")==1) then
		   LuaSay("你挖到了1个人参，快拿去给翠儿吧")
		  end
	end
elseif(LuaQueryTask("T711")==2) then
	if(LuaItemCount("o_mission067")==0)  then
	       LuaGive("o_mission067",1)
		  if(LuaItemCount("o_mission067")==1) then
		   LuaSay("你挖到了1个人参，快拿去给陷落关口的无忌吧")
		  end
	end
else
	LuaSay("农夫：没有我的允许不许挖人参！")
end
LuaOtherSendMenu()
return 1
end
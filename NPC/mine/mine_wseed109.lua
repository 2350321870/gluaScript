NPCINFO = {
name="草药",
butt="0|0|42",
isboss = 2, 
serial= "980",
icon= 10502,
NpcMove= 10502, 
iconaddr= 1,
maxnum= 1,
booty= "o_material_38",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
if(LuaQueryTask("T103")==1)then
	if(LuaItemCount("o_mission371")<3)  then
		LuaGive("o_mission371",1)
		if(LuaItemCount("o_mission371")==1) then
		LuaSay("你采集到了1个草药")
		LuaOtherSendMenu()
		elseif(LuaItemCount("o_mission371")==2) then
		LuaSay("你又采集到1个草药，已经集齐了2个草药")
		LuaOtherSendMenu()
		elseif(LuaItemCount("o_mission371")==3) then
		LuaSay("你又采集到1个草药，已经集齐3个草药，可以回复@4建康城@0里的@3驯兽师@0了")
		LuaOtherSendMenu()
		end
	else
	    LuaSay("你已经集齐3个草药，可以回复@4建康城@0里的@3驯兽师@0了")
	    LuaOtherSendMenu()
	end
end
	if(LuaQuery("level")<10 and LuaQueryTask("Tcj1")~=99)then
		local r=LuaRandom(3)
		if(r==0)then
		LuaGive("o_drug_hp1",1,"Tcj1")
		elseif(r==1)then
		LuaGive("coin",100,"Tcj1")
		elseif(r==2)then
		LuaGive("o_material_38",1,"Tcj1")
		end
		LuaSetTask("Tcj1",99)
	else
	    if(LuaQuery("level")<10)then
		LuaSay("想采到更好的东西，就努力升到10级去采集场和矿场采集吧！@!")
	    end
	end
	LuaOtherSendMenu()
return 1
end
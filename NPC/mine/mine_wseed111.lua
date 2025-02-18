NPCINFO = {
name="经验树",
butt="0|0|42",
isboss = 2, 
serial= "982",
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
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
  if(level<30) then
  lv_exp=90000
  elseif(level>=30 and level<40) then
  lv_exp=120000
  elseif(level>=40 and level<50) then
  lv_exp=150000
  elseif(level>=50 and level<60) then
  lv_exp=200000
  elseif(level>=60 and level<70) then
  lv_exp=400000
  elseif(level>=70 and level<80) then
  lv_exp=700000                                                              
  elseif(level>=80 and level<90) then
  lv_exp=1000000
  elseif(level>=90 and level<100) then
  lv_exp=1500000
  end
  local num=lv_exp+LuaRandom(100)+level^2
if(LuaQueryTask("FBTG")==10 and LuaQueryTask("FBTGJL")==10)then
	LuaAddJx("combat_exp",num,"FBTGJL2")
	LuaSetTask("FBTG",11)
elseif(LuaQueryTask("FBTG")==11)then
	LuaAddJx("combat_exp",num,"FBTGJL2")
	LuaSetTask("FBTG",12)
elseif(LuaQueryTask("FBTG")==12)then
	LuaAddJx("combat_exp",num,"FBTGJL2")
	LuaSetTask("FBTG",13)
elseif(LuaQueryTask("FBTG")==13)then
	LuaAddJx("combat_exp",num,"FBTGJL2")
	LuaSetTask("FBTG",14)
	LuaSay("你已经挖@34次@0了！还能再挖@32次@0了！挖满@36次@0后再挖将会被自动传送出去！")
elseif(LuaQueryTask("FBTG")==14)then
	LuaAddJx("combat_exp",num,"FBTGJL2")
	LuaSetTask("FBTG",15)
elseif(LuaQueryTask("FBTG")==15)then
	LuaAddJx("combat_exp",num,"FBTGJL2")
	LuaSetTask("FBTG",99)
	LuaSay("你已经挖满@36次@0了！不能再挖了！再挖将会被自动传送出去！")
elseif(LuaQueryTask("FBTG")==99)then
	LuaSay("你已经挖满@36次@0了！不能再挖了！再挖将会被自动传送出去！")
	ChangeMap("lu_jkc")
end

  
LuaOtherSendMenu()
return 1
end
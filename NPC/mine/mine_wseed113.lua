NPCINFO = {
name="元宝树",
butt="0|0|45",
isboss = 2, 
serial= "984",
icon= 10529,
NpcMove= 10529, 
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
	    YB_item={}
		YB_item[1]={"coin","铜币",1,30,"运气不好，没挖到什么"}
		YB_item[2]={"o_state016j","还魂丹",2,42,"运气一般"}
		YB_item[3]={"o_state091j","免战牌【10分钟】",2,52,"运气一般"}
		YB_item[4]={"o_state065j","血池1",1,59,"运气一般"}
		YB_item[5]={"o_state068j","魔池1",1,66,"运气一般"}
		YB_item[6]={"o_ybsc002j","强化石",1,72,"运气很不错啊"}
		YB_item[7]={"o_ybsc002j","强化石",1,77,"运气很不错啊"}
		YB_item[8]={"o_ybsc002j","强化石",1,80,"运气很不错啊"}
		YB_item[9]={"o_ybsc001j","拆解符",1,83,"运气很不错啊"}
		YB_item[10]={"o_ybsc002j","强化石",1,86,"运气很不错啊"}
		YB_item[11]={"o_box004j","白银宝箱",1,91,"运气很不错啊"}
		YB_item[12]={"o_box005j","黄金宝箱",1,93,"运气相当不错啊"}
		YB_item[13]={"o_key002j","幸运钥匙",1,97,"运气相当不错啊"}
		YB_item[14]={"o_changeclass1y","转职信物",1,98,"恭喜你人品爆发"}
		YB_item[15]={"o_resetpoint1y","洗点卷",1,100,"运气相当不错啊"}
  local r=LuaRandom(100)
  if(r<30) then
  num=1
  elseif(r>=30 and r<42) then
  num=2
  elseif(r>=42 and r<52) then
  num=3
  elseif(r>=52 and r<59) then
  num=4
  elseif(r>=59 and r<66) then
  num=5
  elseif(r>=66 and r<72) then
  num=6
  elseif(r>=72 and r<77) then
  num=7
  elseif(r>=77 and r<80) then
  num=8
  elseif(r>=80 and r<83) then
  num=9
  elseif(r>=83 and r<86) then
  num=10
  elseif(r>=86 and r<91) then
  num=11
  elseif(r>=91 and r<93) then
  num=12
  elseif(r>=93 and r<97) then
  num=13
  elseif(r>=97 and r<98) then
  num=14
  elseif(r>=98 and r<100) then
  num=15
  end
  if(num>=1 and LuaRandom(3)~=0)then
  	num= 1
  end
if(LuaQueryTask("FBTG")==10 and LuaQueryTask("FBTGJL")==10)then
    LuaSay(""..(YB_item[num][5]).."")
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL4")
	LuaSetTask("FBTG",11)
elseif(LuaQueryTask("FBTG")==11)then
 	LuaSay(""..(YB_item[num][5]).."")
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL4")
	LuaSetTask("FBTG",12)
elseif(LuaQueryTask("FBTG")==12)then
 	LuaSay(""..(YB_item[num][5]).."")
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL4")
	LuaSetTask("FBTG",13)
elseif(LuaQueryTask("FBTG")==13)then
 	LuaSay(""..(YB_item[num][5]).."")
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL4")
	LuaSetTask("FBTG",14)
	LuaSay("你已经挖@34次@0了！还能再挖@32次@0了！挖满@36次@0后再挖将会被自动传送出去！")
elseif(LuaQueryTask("FBTG")==14)then
 	LuaSay(""..(YB_item[num][5]).."")
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL4")
	LuaSetTask("FBTG",15)
elseif(LuaQueryTask("FBTG")==15)then
 	LuaSay(""..(YB_item[num][5]).."")
    LuaGive(YB_item[num][1],YB_item[num][3],"FBTGJL4")
	LuaSetTask("FBTG",99)
	LuaSay("你已经挖满@36次@0了！不能再挖了！再挖将会被自动传送出去！")
elseif(LuaQueryTask("FBTG")==99)then
	LuaSay("你已经挖满@36次@0了！不能再挖了！再挖将会被自动传送出去！")
	ChangeMap("lu_jkc")
end


LuaOtherSendMenu()
return 1
end
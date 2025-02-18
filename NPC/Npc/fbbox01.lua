NPCINFO = {
serial= "517" ,
base_name="fbbox01",
icon= 2581,
NpcMove=2581,
--name= "木箱" ,
iconaddr=1, 
butt="10|10|28", 
LuaType=1,
lastsay="木箱",
}
function do_talk(answer)
equipinfo={}
equipinfo[1]={"e_falchion016",2,"@5[虎纹刀]@1[拾取绑定]@053级@3战士右手@0攻击:251@5[随机附加属性]"}
equipinfo[2]={"e_sword018",2,"@5[血魔剑]@1[拾取绑定]@054级@3侠客右手@0攻击:202@5[随机附加属性]"}
equipinfo[3]={"e_staff017",2,"@5[破空杖]@1[拾取绑定]@053级@3侠客右手@0攻击:202@5[随机附加属性]"}
equipinfo[4]={"e_falchion015",2,"@5[开山刀]@1[拾取绑定]@050级@3战士右手@0攻击:238@5[随机附加属性]"}
equipinfo[5]={"e_sword017",2,"@5[龙泉剑]@1[拾取绑定]@051级@3侠客右手@0攻击:192@5[随机附加属性]"}
equipinfo[6]={"e_staff016",2,"@5[法明杖]@1[拾取绑定]@050级@3侠客右手@0攻击:192@5[随机附加属性]"}
account=6
if (answer=="ask")then
	AddTopSayMenuItem("木箱:","")
	AddTopSayMenuItem("打开查看","open")
	if(LuaPublicQuery("fbdata/fb01/e1")~=0)then
	AddTopSayMenuItem("拾取","get")
	end
	--AddTopSayMenuItem("测试","test")
	return 1
elseif(answer=="test") then
	LuaSay("当前副本人数"..LuaQueryPersonInMap("lu_fb1").."")
elseif(answer=="open")then
	local kb1=LuaPublicQuery("fbdata/fb01/kb1")
	if(kb1==1)  then
		if(LuaPublicQuery("fbdata/fb01/e1")==0)then
		local account=6
		local re=LuaRandom(account)+1
			LuaPublicSet("fbdata/fb01/e1",re)
			LuaPublicSet("fbdata/fb01/rt1",GetCurrentTime()+5)--放开5秒延迟
			LocalMsg(equipinfo[re][3])--ShowEquip2Team
			LocalMsg("需求者请在60秒内进行掷点")--ShowRoll
		end
			AddMenuItem("是否需要?","")
			AddMenuItem("查看","look")
			AddMenuItem("投骰子","roll")
			AddMenuItem("放弃","giveup")
	elseif(kb1==2)then
		LuaSay("掷点已结束,最大掷点者可拾取")
	elseif(kb1==3)then
		LuaSay("装备已被拾取")
	else
		LuaSay("必须打败牛A才能开启!")
	end
elseif(answer=="look")then
	LuaSay(equipinfo[LuaPublicQuery("fbdata/fb01/e1")][3])
	--AddMenuItem("是否需要?","")
	--AddMenuItem("查看","look")
	--AddMenuItem("投骰子","roll")
	--AddMenuItem("放弃","giveup")
elseif(answer=="roll")then
	--roll点方法:队伍每人roll一次,若roll出点和前面的人相同则内部自动重roll,将结果队内消息放出,数据库只保存最高ROLL值的玩家id或name
	local r1=LuaPublicQuery("fbdata/fb01/r1")--所存ID与ROLL点，底2位存点数高位存角色IDxx--靠靠ID是字符没法用，已掷过的标记在角色上了
	local r2=LuaPublicQuery("fbdata/fb01/r2")
	local r3=LuaPublicQuery("fbdata/fb01/r3")
	local r4=LuaPublicQuery("fbdata/fb01/r4")
	local r5=LuaPublicQuery("fbdata/fb01/r5")
	if(LuaQueryTask("fb01r1")==0)then--未掷
		if(GetCurrentTime()-LuaPublicQuery("fbdata/fb01/rt1")<60)then
			local roll=LuaRandom(99)+1
			while
			(roll==r1 or roll==r2 or roll==r3 or roll==r4 or roll==r5)
			do
			local roll=LuaRandom(99)+1
			end
			if(r1==0)then	LuaPublicSet("fbdata/fb01/r1",roll)
			else
				if(r2==0)then	LuaPublicSet("fbdata/fb01/r2",roll)
				else
					if(r3==0)then	LuaPublicSet("fbdata/fb01/r3",roll)
					else
						if(r4==0)then	LuaPublicSet("fbdata/fb01/r4",roll)
						else
							if(r5==0)then	LuaPublicSet("fbdata/fb01/r5",roll)
							else
							--LocalMsg("呔!大胆包天竟敢作弊,哼!")
							end
						end
					end
				end
			end
			local rm=LuaPublicQuery("fbdata/fb01/rollmax1")--最大roller&roll
			if(rm<roll)then
				LuaPublicSet("fbdata/fb01/rollmax1",roll)
				LuaSetTask("fb01r1",roll)
			end
			LocalMsg(LuaQueryStr("name").."掷出@2"..roll.."@0点")--Msg2Team/Map
			local p=LuaPublicQuery("fbdata/fb01/p1")+1--已掷点人数
			LuaPublicAdd("fbdata/fb01/p1",1)
			if(p>=LuaQueryPersonInMap("lu_fb1"))then--地图外队友不参与ROLL点,if地图内人员全ROLL则可捡取,范围判断就算了
				LuaPublicSet("fbdata/fb01/kb1",2)--最大掷点人可以拾取了
			end
		else
		LuaSay("60秒掷点时限已过,除非全队放弃,否则你没有权限获得装备")
		end
	else
		LuaSay("你已经掷过了")
	end
	UpdateMenu()
elseif(answer=="get")then
	if(LuaPublicQuery("fbdata/fb01/kb1")==2)then
		if(LuaPublicQuery("fbdata/fb01/rollmax1")==LuaQueryTask("fb01r1") or LuaPublicQuery("fbdata/fb01/rollmax1")==0)then--角色掷点最大拾或全队放弃任一人拾
			LuaSay("想要吗,想要你就说嘛,不说我怎知道你想要呢?你想要我给你的,你想要我不会不给你的,你不想我不会硬要给你的.现在我数一二三,你想要吗")
			LuaGive(equipinfo[LuaPublicQuery("fbdata/fb01/e1")][1],1,equipinfo[LuaPublicQuery("fbdata/fb01/e1")][2],"Tfb01")
			LocalMsg(LuaQueryStr("name").."获得装备")
			LuaPublicSet("fbdata/fb01/kb1",3)--3装备已取
		else
		LuaSay("你的掷点不是最大的")
		end
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==1)then
		AddMenuItem("是否需要?","")
		AddMenuItem("投骰子","roll")
		AddMenuItem("放弃","giveup")
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==3)then
		LuaSay("装备已被拾取")
	else
		LuaSay("必须打败牛A才能开启!")
	end
	UpdateMenu()
elseif(answer=="giveup")then--主动放弃存0早点结束掷点
	local p=LuaPublicQuery("fbdata/fb01/p1")+1--已掷点人数
	LuaPublicAdd("fbdata/fb01/p1",1)
	LuaSetTask("fb01r1",-1)--放弃
	LocalMsg(LuaQueryStr("name").."放弃")
	if(p==LuaQueryPersonInMap("lu_fb1"))then--地图外队友不参与ROLL点,if地图内人员全ROLL则可捡取,范围判断就算了
		LuaPublicSet("fbdata/fb01/kb1",2)--最大掷点人3装备可取
	end
	UpdateMenu()

end
LuaSendMenu()
return 1
end    	
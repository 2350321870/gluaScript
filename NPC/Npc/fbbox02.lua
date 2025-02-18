NPCINFO = {
serial= "518" ,
base_name="fbbox02",
icon= 2581,
NpcMove=2581,
--name= "铁箱" ,
iconaddr=1, 
butt="10|10|28", 
LuaType=1,
lastsay="",
}
function do_talk(answer)
equipinfo={}
equipinfo[1]={"e_pants018",2,"@5[天师胫甲]@1[拾取绑定]@052级防御:36@5[随机附加属性]"}
equipinfo[2]={"e_pants019",2,"@5[白鸟胫甲]@1[拾取绑定]@055级防御:39@5[随机附加属性]"}
equipinfo[3]={"e_pants020",2,"@5[天尊胫甲]@1[拾取绑定]@058级防御:43@5[随机附加属性]"}
equipinfo[4]={"e_shoes009",2,"@5[冲轭靴]@1[拾取绑定]@049级敏捷:27@5[随机附加属性]"}
equipinfo[5]={"e_shoes010",2,"@5[赤铜履]@1[拾取绑定]@055级敏捷:30@5[随机附加属性]"}
account=5
if (answer=="ask")then
	AddTopSayMenuItem("木箱:","")
	AddTopSayMenuItem("打开查看","open")
	if(LuaPublicQuery("fbdata/fb01/e2")~=0)then
		AddTopSayMenuItem("拾取","get")
	end
	--AddTopSayMenuItem("测试","test")
return 1
elseif(answer=="test") then
	LuaSay("当前副本人数"..LuaQueryPersonInMap("lu_fb1").."")
elseif(answer=="open")then
	local kb2=LuaPublicQuery("fbdata/fb01/kb2")
	if(kb2==1 )  then
		if(LuaPublicQuery("fbdata/fb01/e2")==0)then
			local account=5
			local re=LuaRandom(account)+1
			LuaPublicSet("fbdata/fb01/e2",re)
			LuaPublicSet("fbdata/fb01/rt2",GetCurrentTime()+5)--放开5秒延迟
			LocalMsg(equipinfo[re][3])--ShowEquip2Team
			LocalMsg("需求者请在60秒内进行掷点")--ShowRoll
		end
		AddMenuItem("是否需要?","")
		AddMenuItem("查看","look")
		AddMenuItem("投骰子","roll")
		AddMenuItem("放弃","giveup")
	elseif(kb2==2)then
		LuaSay("掷点已结束,最大掷点者可拾取")
	elseif(kb2==3)then
		LuaSay("装备已被拾取")
	else
		LuaSay("必须打败牛C才能开启!")
	end
elseif(answer=="look")then
	LuaSay(equipinfo[LuaPublicQuery("fbdata/fb01/e2")][3])
	--AddMenuItem("是否需要?","")
	--AddMenuItem("查看","look")
	--AddMenuItem("投骰子","roll")
	--AddMenuItem("放弃","giveup")
elseif(answer=="roll")then
	--roll点方法:队伍每人roll一次,若roll出点和前面的人相同则内部自动重roll,将结果队内消息放出,数据库只保存最高ROLL值的玩家id或name
	local r21=LuaPublicQuery("fbdata/fb01/r21")--所存ID与ROLL点，底2位存点数高位存角色IDxx--靠靠ID是字符没法用，已掷过的标记在角色上了
	local r22=LuaPublicQuery("fbdata/fb01/r22")
	local r23=LuaPublicQuery("fbdata/fb01/r23")
	local r24=LuaPublicQuery("fbdata/fb01/r24")
	local r25=LuaPublicQuery("fbdata/fb01/r25")
	if(LuaQueryTask("fb01r2")==0)then--未掷
		if(GetCurrentTime()-LuaPublicQuery("fbdata/fb01/rt2")<60)then
			local roll=LuaRandom(99)+1
			while
				(roll==r21 or roll==r22 or roll==r23 or roll==r24 or roll==r25)
			do
				roll=LuaRandom(99)+1
			end
			if(r21==0)then	LuaPublicSet("fbdata/fb01/r21",roll)
			else
				if(r22==0)then	LuaPublicSet("fbdata/fb01/r22",roll)
				else
					if(r23==0)then	LuaPublicSet("fbdata/fb01/r23",roll)
					else
						if(r24==0)then	LuaPublicSet("fbdata/fb01/r24",roll)
						else
							if(r25==0)then	LuaPublicSet("fbdata/fb01/r25",roll)
							else
							--LocalMsg("呔!大胆包天竟敢作弊,哼!")
							end
						end
					end
				end
			end
			local rm=LuaPublicQuery("fbdata/fb01/rollmax2")
			if(rm<roll)then
			LuaPublicSet("fbdata/fb01/rollmax2",roll)
			LuaSetTask("fb01r2",roll)
			end
			LocalMsg(LuaQueryStr("name").."掷出@2"..roll.."@0点")--Msg2Team/Map
			local p=LuaPublicQuery("fbdata/fb01/p2")+1--已掷点人数
			LuaPublicAdd("fbdata/fb01/p2",1)
			if(p>=LuaQueryPersonInMap("lu_fb1"))then--地图外队友不参与ROLL点,if地图内人员全ROLL则可捡取,范围判断就算了
				LuaPublicSet("fbdata/fb01/kb2",2)--最大掷点人可以拾取了
			end
		else
			LuaSay("60秒掷点时限已过,除非全队放弃,否则你没有权限获得装备")
		end
	else
		LuaSay("你已经掷过了")
	end
	UpdateMenu()
elseif(answer=="get")then
	if(LuaPublicQuery("fbdata/fb01/kb2")==2)then
		if(LuaPublicQuery("fbdata/fb01/rollmax2")==LuaQueryTask("fb01r22") or LuaPublicQuery("fbdata/fb01/rollmax2")==0)then--角色掷点最大拾或全队放弃任一人拾
			LuaSay("想要吗,想要你就说嘛,不说我怎知道你想要呢?你想要我给你的,你想要我不会不给你的,你不想我不会硬要给你的.现在我数一二三,你想要吗")
			LuaGive(equipinfo[LuaPublicQuery("fbdata/fb01/e2")][1],1,equipinfo[LuaPublicQuery("fbdata/fb01/e2")][2],"Tfb01")
			LocalMsg(LuaQueryStr("name").."获得装备")
			LuaPublicSet("fbdata/fb01/kb2",3)
		else
			LuaSay("你的掷点不是最大的")
		end
	elseif(LuaPublicQuery("fbdata/fb01/kb2")==1)then
		AddMenuItem("是否需要?","")
		AddMenuItem("投骰子","roll")
		AddMenuItem("放弃","giveup")
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==3)then
		LuaSay("装备已被拾取")
	else
		LuaSay("必须打败牛C才能开启!")
	end
	UpdateMenu()
elseif(answer=="giveup")then--主动放弃存0早点结束掷点
	local p=LuaPublicQuery("fbdata/fb01/p2")+1--已掷点人数
	LuaPublicAdd("fbdata/fb01/p2",1)
	LuaSetTask("fb01r22",-1)--放弃
	LocalMsg(LuaQueryStr("name").."放弃")
	if(p==LuaQueryPersonInMap("lu_fb1"))then--地图外队友不参与ROLL点,if地图内人员全ROLL则可捡取,范围判断就算了
		LuaPublicSet("fbdata/fb01/kb2",2)--最大掷点人可以拾取了
	end
	UpdateMenu()

end
LuaSendMenu()
return 1
end
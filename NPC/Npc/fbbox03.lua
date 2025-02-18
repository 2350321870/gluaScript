NPCINFO = {
serial= "519" ,
base_name="fbbox03",
icon= 2581,
NpcMove=2581,
--name= "金箱" ,
iconaddr=1, 
butt="10|10|28", 
LuaType=1,
lastsay="",
}
function do_talk(answer)
equipinfo={}
equipinfo[1]={"e_clothes018",2,"@5[白鸟道袍]@1[拾取绑定]@052级@3战士右手@0防御:49@5[随机附加属性]"}
equipinfo[2]={"e_clothes019",2,"@5[天师御衣]@1[拾取绑定]@055级@3侠客右手@0防御:55@5[随机附加属性]"}
equipinfo[3]={"e_clothes020",2,"@5[天尊御衣]@1[拾取绑定]@058级@3侠客右手@0防御:60@5[随机附加属性]"}
equipinfo[4]={"e_head018",2,"@5[赤羽胄]@1[拾取绑定]@052级增加MP上限:275@5[随机附加属性]"}
equipinfo[5]={"e_head019",2,"@5[玄铁盔]@1[拾取绑定]@055级增加MP上限:290@5[随机附加属性]"}
equipinfo[6]={"e_head020",2,"@5[凤铭帽]@1[拾取绑定]@058级增加MP上限:305@5[随机附加属性]"}
account=6
if (answer=="ask")then
	AddTopSayMenuItem("木箱:","")
	AddTopSayMenuItem("打开查看","open")
	if(LuaPublicQuery("fbdata/fb01/e3")~=0)then
	AddTopSayMenuItem("拾取","get")
	end
	--AddTopSayMenuItem("测试","test")
return 1
elseif(answer=="test") then
	LuaSay("当前副本人数"..LuaQueryPersonInMap("lu_fb1").."")
elseif(answer=="open")then
	local kb3=LuaPublicQuery("fbdata/fb01/kb3")
	if(kb3==1 )  then
		if(LuaPublicQuery("fbdata/fb01/e3")==0)then
		local account=6
		local re=LuaRandom(account)+1
			LuaPublicSet("fbdata/fb01/e3",re)
			LuaPublicSet("fbdata/fb01/rt3",GetCurrentTime()+5)--放开5秒延迟
			LocalMsg(equipinfo[re][3])--ShowEquip2Team
			LocalMsg("需求者请在60秒内进行掷点")--ShowRoll
		end
			AddMenuItem("是否需要?","")
			AddMenuItem("查看","look")
			AddMenuItem("投骰子","roll")
			AddMenuItem("放弃","giveup")
	elseif(kb3==2)then
		LuaSay("掷点已结束,最大掷点者可拾取")
	elseif(kb3==3)then
		LuaSay("装备已被拾取")
	else
		LuaSay("必须打败牛二才能开启!")
	end
elseif(answer=="look")then
	LuaSay(equipinfo[LuaPublicQuery("fbdata/fb01/e3")][3])
	--AddMenuItem("是否需要?","")
	--AddMenuItem("查看","look")
	--AddMenuItem("投骰子","roll")
	--AddMenuItem("放弃","giveup")
elseif(answer=="roll")then
	--roll点方法:队伍每人roll一次,若roll出点和前面的人相同则内部自动重roll,将结果队内消息放出,数据库只保存最高ROLL值的玩家id或name
	local r31=LuaPublicQuery("fbdata/fb01/r31")--所存ID与ROLL点，底2位存点数高位存角色IDxx--靠靠ID是字符没法用，已掷过的标记在角色上了
	local r32=LuaPublicQuery("fbdata/fb01/r32")
	local r33=LuaPublicQuery("fbdata/fb01/r33")
	local r34=LuaPublicQuery("fbdata/fb01/r34")
	local r35=LuaPublicQuery("fbdata/fb01/r35")
	if(LuaQueryTask("fb01r3")==0)then--未掷
		if(GetCurrentTime()-LuaPublicQuery("fbdata/fb01/rt3")<60)then
			local roll=LuaRandom(99)+1
			while
			(roll==r31 or roll==r32 or roll==r33 or roll==r34 or roll==r35)
			do
			local roll=LuaRandom(99)+1
			end
			if(r31==0)then	LuaPublicSet("fbdata/fb01/r31",roll)
			else
				if(r32==0)then	LuaPublicSet("fbdata/fb01/r32",roll)
				else
					if(r33==0)then	LuaPublicSet("fbdata/fb01/r33",roll)
					else
						if(r34==0)then	LuaPublicSet("fbdata/fb01/r34",roll)
						else
							if(r35==0)then	LuaPublicSet("fbdata/fb01/r35",roll)
							else
							--LocalMsg("呔!大胆包天竟敢作弊,哼!")
							end
						end
					end
				end
			end
			local rm=LuaPublicQuery("fbdata/fb01/rollmax3")
			if(rm<roll)then
				LuaPublicSet("fbdata/fb01/rollmax3",roll)
				LuaSetTask("fb01r3",roll)
			end
			LocalMsg(LuaQueryStr("name").."掷出@2"..roll.."@0点")--Msg2Team/Map
			local p=LuaPublicQuery("fbdata/fb01/p3")+1--已掷点人数
			LuaPublicAdd("fbdata/fb01/p3",1)
			if(p>=LuaQueryPersonInMap("lu_fb1"))then--地图外队友不参与ROLL点,if地图内人员全ROLL则可捡取,范围判断就算了
				LuaPublicSet("fbdata/fb01/kb3",2)--最大掷点人可以拾取了
			end
		else
			LuaSay("60秒掷点时限已过,除非全队放弃,否则你没有权限获得装备")
		end
	else
		LuaSay("你已经掷过了")
	end
	UpdateMenu()
elseif(answer=="get")then
	if(LuaPublicQuery("fbdata/fb01/kb3")==2)then
		if(LuaPublicQuery("fbdata/fb01/rollmax3")==LuaQueryTask("fb01r33") or LuaPublicQuery("fbdata/fb01/rollmax3")==0)then--角色掷点最大拾或全队放弃任一人拾
			LuaSay("想要吗,想要你就说嘛,不说我怎知道你想要呢?你想要我给你的,你想要我不会不给你的,你不想我不会硬要给你的.现在我数一二三,你想要吗")
			LuaGive(equipinfo[LuaPublicQuery("fbdata/fb01/e3")][1],1,equipinfo[LuaPublicQuery("fbdata/fb01/e3")][2],"Tfb01")
			LocalMsg(LuaQueryStr("name").."获得装备")
			LuaPublicSet("fbdata/fb01/kb3",3)
		else
			LuaSay("你的掷点不是最大的")
		end
	elseif(LuaPublicQuery("fbdata/fb01/kb3")==1)then
		AddMenuItem("是否需要?","")
		AddMenuItem("投骰子","roll")
		AddMenuItem("放弃","giveup")
	elseif(LuaPublicQuery("fbdata/fb01/kb1")==3)then
		LuaSay("装备已被拾取")
	else
		LuaSay("必须打败牛二才能开启!")
	end
	UpdateMenu()
elseif(answer=="giveup")then--主动放弃存0早点结束掷点
	local p=LuaPublicQuery("fbdata/fb01/p3")+1--已掷点人数
	LuaPublicAdd("fbdata/fb01/p3",1)
	LuaSetTask("fb01r3",-1)--放弃
	LocalMsg(LuaQueryStr("name").."放弃")
	if(p==LuaQueryPersonInMap("lu_fb1"))then--地图外队友不参与ROLL点,if地图内人员全ROLL则可捡取,范围判断就算了
		LuaPublicSet("fbdata/fb01/kb3",2)--最大掷点人可以拾取了
	end
	UpdateMenu()

end
LuaSendMenu()
return 1
end  		
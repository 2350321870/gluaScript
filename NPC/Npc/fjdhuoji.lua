NPCINFO = {
serial= "33" ,
base_name="fjdhuoji",
icon= 2506, 
NpcMove=2506, 
name= "防具商人【商】" , 
--level=10 ,
iconaddr=1, 
butt="19|15|63", 
name_color = "CEFFCE" , 
lastsay="防御的关键是镶嵌",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=13,
{"e_head006" , 2000  , 8 },
{"e_head009" , 2000  , 8 },
{"e_head013" , 2000  , 8 },
{"e_shield001" , 2000, 8 }, 
{"e_shield003" , 2000 , 8 },  
{"e_clothes006" , 2000 , 8 },
{"e_clothes009" , 2000  , 8 },
{"e_clothes013" , 2000  , 8 },
{"e_pants006" , 2000  , 8 },
{"e_pants009" , 2000  , 8 },
{"e_pants013" , 2000  , 8 },
{"e_shoes005" , 2000  , 8 },
{"e_shoes007" , 2000  , 8 },
} 

function do_talk(answer)
 if (answer=="ask") then
 		havetask =0
		local level= LuaQuery("level")
		local Tbaitan=LuaQueryTask("Tbaitan")
		AddTopSayMenuItem("@7任务列表","")
		AddTopSayMenuItem("@3买卖","list")
		if(LuaQueryTask("bao_D")~=0)then
			AddTopSayMenuItem("@2古董【隐藏】","T220")
			havetask =1
		end
		if(level>14 and Tbaitan==0)then
			AddTopSayMenuItem("摆摊【教程】","Tbaitan")
 			havetask =1
		elseif(Tbaitan>0 and Tbaitan<99)then
			AddTopSayMenuItem("@2摆摊【教程】","Tbaitan")
			havetask =2
		end
		if((LuaQueryTask("Tsnpc_20")==1 or LuaQueryTask("Tsnpc_20")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_20")
			if(LuaQueryTask("Tsnpc_20")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_20")==1 or LuaQueryTask("Tenpc_20")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_20")
			if(LuaQueryTask("Tenpc_20")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_6")==1 or LuaQueryTask("TfindNPC_6")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_6")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
		end
		if(LuaQueryTask("T265")==1 and LuaQueryTask("T265A")==0)  then
			AddTopSayMenuItem("@2初临建康【剧情】","T265A")
			havetask =2
		end
		if(level>=20)then
		AddTopSayMenuItem("@7绑定装备","Tequipbind")
		AddTopSayMenuItem("@7装备解绑","Tequipbind_out")
		AddTopSayMenuItem("@7洗装备属性","TCleanMagic")
		AddTopSayMenuItem("@7降低装备等级需求","Tlvdep")
		end
		if(LuaQueryTask("Tcoc")==5)then
			AddTopSayMenuItem("@2商贾向背【每日】","Tcoc")
			havetask =2
			end
		if(Tbaitan==99 and level<20)then
			AddTopSayMenuItem("@9摆摊【教程】","Tbaitan")
		end

if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1
elseif(answer=="liaotian") then
	LuaSay("防具商人：@2国债@0实乃挣钱之首选，咱这样的小买卖还真挣不了几个钱。")
elseif(answer=="Tequipbind_out") then
	LuaSay("提示:装备解绑功能暂未开放，敬请期待！")
elseif(answer=="Tequipbind") then
	local level= LuaQuery("level")
	LuaSay("提示:将你想要绑定的装备佩戴后,选择菜单就可以进行绑定了,@2绑定后将无法再解除绑定,操作请慎重!")
	LuaSay("提示:绑定装备需要花费一定数量的道具。")
	AddMenuItem("请选择要绑定的装备","")
	if(level>20)then
	AddMenuItem("@5查看价目及说明","vlist")
	end	
	AddMenuItem("武器","equip1")
	AddMenuItem("副手","equip2")
	AddMenuItem("头盔","equip3")
	AddMenuItem("衣服","equip4")
	AddMenuItem("裤子","equip5")
	AddMenuItem("鞋子","equip6")
	AddMenuItem("耳环","equip8")
	AddMenuItem("项链","equip9")

elseif(answer=="vlist")then	
	local level= LuaQuery("level")
	LuaSay("提示:这里，公平交易，童叟无欺，看清楚了再消费。绑定是需要一定的消费的。")
	if(level>20)then
	LuaSay("提示:只提供绑定服务,一旦绑定不可解绑,绑定装备需@25个@8银票.@0白色装备不能绑定")
	end
	LuaSay("提示:一旦绑定不可解绑,绑定后装备的NPC回收价值将降为原来的1%.")
	if(LuaQueryTask("ebintrok")<99)then
	AddMenuItem("看明白了吗?","")
	AddMenuItem("没有","ebintrno")
	AddMenuItem("是的,看明白了","ebintrok")
	end
	elseif(answer=="ebintrno")then
	LuaSay("提示:没看明白我不能提供绑定装备服务!")
	elseif(answer=="ebintrok")then
	LuaSetTask("ebintrok",99)
	LuaSay("提示:好了,我现在对你开放装备绑定服务,你可以在我这绑定不想交易的装备,但是不提供解绑服务!")
	UpdateMenu()

elseif(answer=="equip1" or answer=="equip2" or answer=="equip3" or answer=="equip4"
		or answer=="equip5" or answer=="equip6" or answer=="equip8" or answer=="equip9") then
	local e_pos
	if(answer=="equip1")then	e_pos=1		--为重复利用后面代码,合在一起,再分一下装备位参数
	elseif(answer=="equip2")then	e_pos=2
	elseif(answer=="equip3")then	e_pos=3
	elseif(answer=="equip4")then	e_pos=4
	elseif(answer=="equip5")then	e_pos=5
	elseif(answer=="equip6")then	e_pos=6
	elseif(answer=="equip8")then	e_pos=8
	elseif(answer=="equip9")then	e_pos=9
	end
	local h=LuaQueryEquipStone(e_pos)
	local color="@1"
	if(EquipInfo(e_pos)~="")then
		if(h==1)then	color="@7"
		elseif(h==2)then	color="@5"
		elseif(h==3)then	color="@3"
		end	
		if(h>0)then
			LuaSay("只提供绑定服务,@2一旦绑定不可解绑,绑定后价值将降为原来的1%@0,绑定需@25个@8银票.@0白色装备不能绑定")
			AddMenuItem("确定要绑定"..color..EquipInfo(e_pos).."@0吗?","")--名称:m/h
			AddMenuItem("我再想想","no")
			AddMenuItem("@1确定,我要绑定","eb"..e_pos.."")
		else
			LuaSay("提示:该装备不能绑定")
		end
	else
		LuaSay("提示:该装备位上没有任何装备")
	end
elseif(answer=="eb1" or answer=="eb2" or answer=="eb3" or answer=="eb4"
		or answer=="eb5" or answer=="eb6" or answer=="eb8" or answer=="eb9") then
	local e_pos
	if(answer=="eb1")then		e_pos=1
	elseif(answer=="eb2")then	e_pos=2
	elseif(answer=="eb3")then	e_pos=3
	elseif(answer=="eb4")then	e_pos=4
	elseif(answer=="eb5")then	e_pos=5
	elseif(answer=="eb6")then	e_pos=6
	elseif(answer=="eb8")then	e_pos=8
	elseif(answer=="eb9")then	e_pos=9
	end
	if(EquipInfo(e_pos)~="")then--还是得重判断下,以免中途有变
		if(LuaQueryEquipStone(e_pos)>0)then
			if(LuaItemStatusNormalCount("o_gold2y")>=5)then
				local be=LuaBindEquip(e_pos)
				if(be==1)then
				LuaSay("绑定成功!消耗@8银票@25个")
				DelItem("o_gold2y",5)
				LuaLogRecord("绑定装备","o_gold2y","元宝","消耗",50)
				elseif(be==2)then
				LuaSay("该装备已有绑定属性,无需再绑定")
				else
				LuaSay("该装备不能绑定属性")
				end
			else	LuaSay("提示:物品不足,绑定装备需消耗@8银票@25个")
			end
		else
		LuaSay("提示:白色装备不能绑定")
		end	
	else
	LuaSay("提示:该装备位上没有任何装备")
	end

elseif(answer=="TCleanMagic")then        ---------增值洗装备
	local level= LuaQuery("level")
	LuaSay("提示:将你想要清洗属性的装备佩戴后,选择菜单就可以进行属性的清洗了,清洗后将@3消除全部属性和镶嵌材料,保留相应孔数。")
	LuaSay("提示:洗装备需要花费一定的数量的道具。")
	AddMenuItem("请选择要洗属性的装备","")
	if(level>20)then
	AddMenuItem("@5查看价目及说明","vlist1")
	end
	AddMenuItem("武器","equip11")
	AddMenuItem("副手","equip21")
	AddMenuItem("头盔","equip31")
	AddMenuItem("衣服","equip41")
	AddMenuItem("裤子","equip51")
	AddMenuItem("鞋子","equip61")
	AddMenuItem("耳环","equip81")
	AddMenuItem("项链","equip91")

elseif(answer=="vlist1")then
	LuaSay("以下是价目表,公平交易,看清楚了,再消费。")
	LuaSay("@7绿装@2[1/1]@0:洗属性需@25个@9通宝")
	LuaSay("@5蓝装@2[1/2]@0:洗属性需@22个@8银票")
	LuaSay("@5蓝装@2[2/2]@0:洗属性需@24个@8银票")
	LuaSay("@3金装@2[1/3]@0:洗属性需@21个@7青纱券")
	LuaSay("@3金装@2[2/3]@0:洗属性需@22个@7青纱券")
	LuaSay("@3金装@2[3/3]@0:洗属性需@24个@7青纱券")
	if(LuaQueryTask("cmintrok")<99)then
	AddMenuItem("看明白了吗?","")
	AddMenuItem("没有","ceintrono")
	AddMenuItem("是的,看明白了","ceintrook")
	end
	elseif(answer=="ceintrono")then
	LuaSay("没看明白我不能提供清洗装备属性服务,否则你老问客服这个那个,客服就悲剧了.")
	elseif(answer=="ceintrook")then
	LuaSetTask("cmintrok",99)
	LuaSay("好了,我现在对你清洗装备属性服务,你可以去掉不想要的装备附加属性重新镶别的.")
	UpdateMenu()


elseif(answer=="equip11" or answer=="equip21" or answer=="equip31" or answer=="equip41"
		or answer=="equip51" or answer=="equip61" or answer=="equip81" or answer=="equip91") then
	local e_pos
	if(answer=="equip11")then	e_pos=1		--为重复利用后面代码,合在一起,再分一下装备位参数
	elseif(answer=="equip21")then	e_pos=2
	elseif(answer=="equip31")then	e_pos=3
	elseif(answer=="equip41")then	e_pos=4
	elseif(answer=="equip51")then	e_pos=5
	elseif(answer=="equip61")then	e_pos=6
	elseif(answer=="equip81")then	e_pos=8
	elseif(answer=="equip91")then	e_pos=9
	end
	if(EquipInfo(e_pos)~="")then
	local m=LuaQueryEquipMagic(e_pos)
	local h=LuaQueryEquipStone(e_pos)
	local color
	local need
	local needs
		if(m==1 and h==1)then
		color="@7"	need=5	needs="@9通宝@0"	--5元宝
		elseif(m==1 and h==2)then
		color="@5"	need=2	needs="@8银票@0"	--20元宝
		elseif(m==2 and h==2)then
		color="@5"	need=4	needs="@8银票@0"	--40元宝
		elseif(m==1 and h==3)then
		color="@3"	need=1	needs="@7青纱券@0"	--100元宝
		elseif(m==2 and h==3)then
		color="@3"	need=2	needs="@7青纱券@0"	--200元宝
		elseif(m==3 and h==3)then
		color="@3"	need=4	needs="@7青纱券@0"	--400元宝
		else
			need=0
		end
		if(need~=0)then
		LuaSay(""..color..EquipInfo(e_pos)..":["..m.."/"..h.."].@0清洗属性需@2"..need.."个"..needs..".")
		AddMenuItem("确定要洗"..color..EquipInfo(e_pos)..":["..m.."/"..h.."]@0吗?","")--名称:m/h
		AddMenuItem("我再想想","no")
		AddMenuItem("确定我要清洗","ecm"..e_pos.."")
		else
		LuaSay("提示:该装备不需要清洗")
		end

	else
	LuaSay("提示:该装备位上没有任何装备")
	end
elseif(answer=="ecm1" or answer=="ecm2" or answer=="ecm3" or answer=="ecm4"
		or answer=="ecm5" or answer=="ecm6" or answer=="ecm8" or answer=="ecm9") then
	local e_pos
	if(answer=="ecm1")then		e_pos=1
	elseif(answer=="ecm2")then	e_pos=2
	elseif(answer=="ecm3")then	e_pos=3
	elseif(answer=="ecm4")then	e_pos=4
	elseif(answer=="ecm5")then	e_pos=5
	elseif(answer=="ecm6")then	e_pos=6
	elseif(answer=="ecm8")then	e_pos=8
	elseif(answer=="ecm9")then	e_pos=9
	end
	if(EquipInfo(e_pos)~="")then--还是得重判断下,以免中途有变
		local m=LuaQueryEquipMagic(e_pos)
		if(m==0)then
		LuaSay("提示:该装备已没有可清洗的属性")
		else		
			local h=LuaQueryEquipStone(e_pos)
			if(h==1)then
				if(m==1)then
					if(LuaItemStatusNormalCount("o_gold1y")>=5)then
					if(LuaCleanMagic(e_pos)==0)then--1/1:5
					LuaSay("清洗属性成功")
					DelItem("o_gold1y",5)
					LuaLogRecord("清洗属性","o_gold1y","元宝","消耗",5)
					end
					else	LuaSay("提示:物品不足,请按价目表准备物品")
					end
				else
				LuaSay("提示:该装备不需要清洗")
				end
			elseif(h==2)then
				if(m==1)then
					if(LuaItemStatusNormalCount("o_gold2y")>=2)then
					if(LuaCleanMagic(e_pos)==0)then--1/2:20
					LuaSay("清洗属性成功")
					DelItem("o_gold2y",2)
					LuaLogRecord("清洗属性","o_gold2y","元宝","消耗",20)
					end
					else	LuaSay("提示:物品不足,请按价目表准备物品")
					end
				elseif(m==2)then
					if(LuaItemStatusNormalCount("o_gold2y")>=4)then
					if(LuaCleanMagic(e_pos)==0)then--2/2:40
					LuaSay("清洗属性成功")
					DelItem("o_gold2y",4)
					LuaLogRecord("清洗属性","o_gold2y","元宝","消耗",40)
					end
					else	LuaSay("提示:物品不足,请按价目表准备物品")
					end
				else
				LuaSay("提示:该装备不需要清洗")
				end
			elseif(h==3)then
				if(m==1)then
					if(LuaItemStatusNormalCount("o_zhaiquan1y")>=1)then
					if(LuaCleanMagic(e_pos)==0)then--1/3:100
					DelItem("o_zhaiquan1y",1)
					LuaSay("清洗属性成功")
					LuaLogRecord("清洗属性","o_zhaiquan1y","元宝","消耗",100)
					end
					else	LuaSay("提示:物品不足,请按价目表准备物品")
					end
				elseif(m==2)then
					if(LuaItemStatusNormalCount("o_zhaiquan1y")>=2)then
					if(LuaCleanMagic(e_pos)==0)then--2/3:200
					DelItem("o_zhaiquan1y",2)
					LuaSay("清洗属性成功")
					LuaLogRecord("清洗属性","o_zhaiquan1y","元宝","消耗",200)
					end
					else	LuaSay("提示:物品不足,请按价目表准备物品")
					end
				elseif(m==3)then
					if(LuaItemStatusNormalCount("o_zhaiquan1y")>=4)then
					if(LuaCleanMagic(e_pos)==0)then--3/3:400
					DelItem("o_zhaiquan1y",4)
					LuaSay("清洗属性成功")
					LuaLogRecord("清洗属性","o_zhaiquan1y","元宝","消耗",400)
					end
					else	LuaSay("提示:物品不足,请按价目表准备物品")
					end
				else
				LuaSay("提示:该装备不需要清洗")
				end
			else		
				LuaSay("提示:该装备不需要清洗")
			end
		end
	else
	LuaSay("提示:该装备位上没有任何装备")
	end


elseif(answer=="Tbaitan") then
	local Tbaitan=LuaQueryTask("Tbaitan")
	if(Tbaitan==0)then
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("防具商人：点击菜单然后点击背包键打开背包，点击物品@22次@0，再@2点击6摆摊@0，@2输入售价@0就能摆摊了。")
			LuaSay("防具商人：任何地方都可以摆摊，摆摊时用户可以去做任何事情，摆摊的人头顶会有个“摊”字。你还要学会@2收摊@0。")
			LuaSay("防具商人：打开@2背包内的摆摊行囊@0，点击选中已经摆摊的物品，@2再次点击@0@2点击收回@0就可以了。简单吧@!")
		else
			LuaSay("防具商人：确定键再按3打开背包，方向键移动选中物品，@2按确定@0再@2按摆摊@0，@2输入售价@0就能摆摊了。")
			LuaSay("防具商人：任何地方都可以摆摊，摆摊时用户可以去做任何事情，摆摊的人头顶会有个“摊”字。你还要学会@2收摊@0。")
			LuaSay("防具商人：打开@2背包内的摆摊行囊@0，方向键移动选中已经摆摊的物品，@2按确定@0再@2按收回@0就可以了。简单吧@!")
		end
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","Tbaitanjl")
	elseif(Tbaitan==99)then
		if(LuaQueryStr("MobieType") ~= "S20")then
			LuaSay("防具商人：点击菜单然后点击背包键打开背包，点击物品@22次@0，再@2点击6摆摊@0，@2输入售价@0就能摆摊了。")
			LuaSay("防具商人：任何地方都可以摆摊，摆摊时用户可以去做任何事情，摆摊的人头顶会有个“摊”字。你还要学会@2收摊@0。")
			LuaSay("防具商人：打开@2背包内的摆摊行囊@0，点击选中已经摆摊的物品，@2再次点击@0@2点击收回@0就可以了。简单吧@!")
		else
			LuaSay("防具商人：确定键再按3打开背包，方向键移动选中物品，@2按确定@0再@2按摆摊@0，@2输入售价@0就能摆摊了。")
			LuaSay("防具商人：打开@2背包内的摆摊行囊@0，方向键移动选中已经摆摊的物品，@2按确定@0再@2按收回@0，就能@2收摊@0@!")
			LuaSay("提示：该任务已完成")
		end	
	end
elseif(answer=="Tbaitanjl")then
		local Tbaitan=LuaQueryTask("Tbaitan")
		if(Tbaitan==0)then
		LuaAddJx("combat_exp",41000,"Tbaitan")
		LuaAddAchievementSchedule("Task_num",1)
		LuaSetTask("Tbaitan",99)	
		UpdateMenu()
		end

elseif(answer=="Tcoc")then---------------------商贾向背3 Tcoc===5
	if(LuaQueryTask("Tcoc")==5)then
	LuaSay("防具商人:平时承蒙钱庄的大哥照顾,组建商会我双手赞成.")
	LuaSetTask("Tcoc",6)
	LuaSetTask("T955",6)
		AddLog("商贾向背【每日】",955)
		if(LuaQuery("level")>=25)then
		LuaGive("coin",700,"Tcoc")
		else
		LuaGive("coin",400,"Tcoc")
		LuaGive("o_drug_hp4",2,"Tcoc")
		end
	end
	UpdateMenu()

elseif(answer=="T265A") then                       -----初临建康 
                 if(LuaQueryTask("T265A") ==0) then
    			LuaSay("防具商人：防具乃是生命之保障，切不可小视！赠你200铜，在我这挑几件防具吧@!")
			LuaSetTask("T265A",99)
			LuaGive("coin",200,"T265A")
			UpdateMenu()
			UpdateNPCMenu("xiean")
		end

elseif(answer=="Tlvdep") then
	AddMenuItem("请选译","")
	AddMenuItem("说明","Tlvdepintro")
	AddMenuItem("降低装备等级需求","Tlvdepyes")
	elseif(answer=="Tlvdepintro") then
	LuaSay("每次可以降低装备等级需求1级,每次耗费一定的银票,耗费量是原等级需求与要降到的等级的差.")
	LuaSay("如原等级60,第1次耗费1张银票,第2次耗费2张...同一装备目前最多降20级")
	elseif(answer=="Tlvdepyes") then
	LuaItemLevelDep()



	-----------------------------------------
elseif(answer=="T220")then
	if(LuaQueryTask("T220")==0)then
		if(LuaQueryStrTask("220Taskday")~=GetCurrentDay()) then
		      	LuaSetTask("220dotime",0)
		end
		if(LuaItemStatusNormalCount("o_mission018")>=1)then
			if(LuaQueryTask("220dotime")<10) then
				LuaSay(""..LuaQueryStr("name").."：大哥，我这里有@3破旧古董@0一个，不知道有什么用啊")
				LuaSay("防具商人：这个玩意本身无用，被人玩弄而已，这几天听说天涯海角的幸运老人在收集这东西，你可以过去看看。")
				LuaSay("防具商人：幸运老人可是好人，没准他一高兴给你100W呢！")
				LuaSetTask("T220",1)
				AddLog("古董【隐藏】",220)
				UpdateMenu()
			else
				LuaSay("提示：不知道这是干嘛的，明天再来看看，或许能想起些什么。")
				LuaDelTask("bao_D")
				UpdateMenu()
			end
		else
			LuaSay("防具商人：欺负一个NPC你过意的去吗，你没有破旧古董的呢")
		end
		elseif(LuaQueryTask("T220")==1)then
			LuaSay("防具商人：从种子商人那里千里行商去天涯海角的幸运老人那里去看看，他也许对这些东西感兴趣。")
		end


--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_6")==1)then
					LuaSay("防具商人：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_6",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_6")==2)then
					LuaSay("防具商人：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_6",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("防具商人：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("防具商人：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end

	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end

elseif(answer=="Tsnpc_20")then
	if(LuaQueryTask("Tsnpc_20")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的信件，他还常念叨着你为国家贡献大呢")
		LuaSay("防具商人：我看看再说")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_20",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_20")==2)then
		LuaSay("防具商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_20")then
	if(LuaQueryTask("Tenpc_20")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我告诉你多多造一些防具，冬天快要到了")
		LuaSay("防具商人：我们国家储备丰富，冬天够用的。")
		LuaSetTask("Tenpc_20",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_20")==2)then
		LuaSay("防具商人：回去找你家主子领赏吧")
	end	

end
LuaSendMenu()
return 1
end

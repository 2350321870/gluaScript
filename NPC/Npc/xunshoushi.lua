NPCINFO = {
serial="33" ,
base_name="xunshoushi" ,
icon=2552,
NpcMove=2552,
name="驯兽师【宠】" ,
iconaddr=1 ,
butt="10|10|63" ,
lastsay="我是专门搞畜牧业的人" ,
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=6,
{"o_cwmbs" , 0  , 8 },
{"o_cwgm" , 0  , 8 },
{"e_pet01" , 0  , 8 },
{"e_pet02" , 0  , 8 },
{"e_pet03" , 0  , 8 },
{"e_pet04" , 0  , 8 },
}

	tCost1={
	{"","","","","",""},
	{"","","","","",""},
	{"@34级晶","","o_material_59","",1,""},
	{"@34级晶","","o_material_59","",2,""},
	{"@35级晶","","o_material_60","",1,""},
	{"@35级晶","@3银票","o_material_60","o_gold2y",2,2},
	{"@36级晶","@3银票","o_material_61","o_gold2y",1,5},
	{"@37级晶","@3青纱券","o_material_62","o_zhaiquan1y",1,1},
	{"@38级晶","@3青纱券","o_material_63","o_zhaiquan1y",1,1},
	}-------------------------------------15%成功率   材料1名称   材料2名称   材料1ID   材料2ID   材料1消耗   材料2消耗

	tCost2={
	{"@31级晶","","o_material_56","",1,""},
	{"@33级晶","","o_material_58","",1,""},
	{"@34级晶","@3银票","o_material_59","o_gold2y",3,1},
	{"@35级晶","@3银票","o_material_60","o_gold2y",1,3},
	{"@35级晶","@3银票","o_material_60","o_gold2y",3,5},
	{"@36级晶","@3青纱券","o_material_61","o_zhaiquan1y",1,1},
	{"@37级晶","@3青纱券","o_material_62","o_zhaiquan1y",1,3},
	{"@38级晶","@3青纱券","o_material_63","o_zhaiquan1y",1,5},
	{"@38级晶","@3蓝绸券","o_material_63","o_zhaiquan2y",1,1},
	}-------------------------------------100%成功率   材料1名称   材料2名称   材料1ID   材料2ID   材料1消耗   材料2消耗

	 tS={
	{"1","@3云海","防御"},
	{"2","@3奔雷","攻击"},
	{"3","@3灰影","敏捷"},
	{"4","@3赤炎","力量"},
	{"5","@3紫电","智力"},
	{"6","@3流云","防御","智力"},
	{"7","@3雪羽","攻击","敏捷"},
	{"8","@3御风","防御","力量"},
	}---------------  坐骑种类   坐骑名称  附加人物属性

	tCost3={
	{2,2,14,1,"","",""},
	{2,2,32,2,1,"",""},
	{3,3,65,4,3,"",""},
	{3,3,107,6,5,1,1},
	{4,4,146,10,9,2,3},
	{4,5,250,15,14,4,5},
	{5,6,380,23,21,7,9},
	{5,7,630,38,37,12,15},
	{6,8,1000,60,53,20,22},
	}----zqzl<=5速度 zqzl>5速度 血上限 攻防+zqzl<=5智  zqzl<=5力敏 zqzl>=5力敏 zqzl>=5智

function do_talk(answer)
if (answer=="ask") then 
        havetask =0 
        local T101=LuaQueryTask("T101")
        local T103=LuaQueryTask("T103")
        local T104=LuaQueryTask("T104")
        local T105=LuaQueryTask("T105")       
		local level= LuaQuery("level")
		AddTopSayMenuItem("@7任务列表","")
		if(LuaQueryTask("Tgivepet") <99 and level>5 and LuaQueryTask("T362")~=99)   then
		AddTopSayMenuItem("@3赠送宠物","givepet")       ----赠送宠物 
		end
		AddTopSayMenuItem("@3宠物相关","petxg")
		AddTopSayMenuItem("@3坐骑相关","hsxg")
		AddTopSayMenuItem("@3经验宝宝","baobao")        -----经验宝宝
		if(LuaQueryTask("T385")==1)then
			if(LuaQueryTask("TfindNPC_11")==1 or LuaQueryTask("TfindNPC_11")==2)then
				AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
				havetask=2
			end
		elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_11")==98)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
		end
		if((LuaQueryTask("Tsnpc_16")==1 or LuaQueryTask("Tsnpc_16")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2驿站小吏","Tsnpc_16")
			if(LuaQueryTask("Tsnpc_16")==1)then
				havetask2=1
			end
		end
		if((LuaQueryTask("Tenpc_16")==1 or LuaQueryTask("Tenpc_16")==2) and LuaQueryTask("Tfjtx")==1)then
			AddTopSayMenuItem("@2千里传音","Tenpc_16")
			if(LuaQueryTask("Tenpc_16")==1)then
				havetask2=1
			end
		end
		if(LuaQueryTask("Tcoc")==3)then
		AddTopSayMenuItem("@2商贾向背","Tcoc")
		havetask =2
		end
--		if(EquipInfo(10)~="")then
--		AddTopSayMenuItem("@7送货[每日]","pettask")
--		end
		if(LuaQueryTask("T362")==1 or LuaQueryTask("T362")==2)then
			AddTopSayMenuItem("@2贴身伙伴【剧情】","T362")
			if(LuaQueryTask("T362")==1)then
				havetask=2
			end
		end
	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end	 
	return 1
   
		
elseif(answer=="liaotian")then
	LuaSay("驯兽师:别看我是个五大三粗的男人,对待动物我可细心着呢,无论是大如熊小如蚁,我都能驯养")
elseif(answer=="pet_buy") then

		DoBuy() 

	----------------宠物相关操作子菜单-----------------
elseif(answer=="petxg")then	
	local level= LuaQuery("level")
		AddMenuItem("@7宠物相关","")
		if( level>=18   )then
		AddMenuItem("@3宠物任务","pet_rw") ---------------------------------宠物任务------
		end
        AddMenuItem("@3宠物托管","T102")       --------宠物任务挂机的
		AddMenuItem("@3宠物提升","pet")           ------宠物驯化相关
		AddMenuItem("@3宠物食品兑换","pet_food")

		if( level>=18   )then
		AddMenuItem("@3宠物商店","pet_buy")
		end
       
		AddMenuItem("@5宠物加星","pet_star")

		if(level>20)   then
		AddMenuItem("@6宠物交配","pet_fuck")      
		end  
		
        AddMenuItem("@7宠物放生","pet_free")  
   


		AddMenuItem("@1宠物介绍说明","jssm")


elseif(answer=="jssm")then
    LuaSay("驯兽师：目前开放了3种品质的宠物！绿色名字的为普通宠物，蓝色为较好宠物，黄金名字的为最好宠物！")
    LuaSay("驯兽师：品质越好的宠物，宠物升级速度越快！并且每次成长提升的属性也更多！宠物升级不直接增加属性，但是增加提升属性的次数！")
    LuaSay("驯兽师：当你把宠物装备到身上后，宠物的攻击力，防御力，生命值会直接附加到你的角色属性上！")
    LuaSay("驯兽师：@3黄金@0宠物的基础攻击防御生命为30，30，300！提升攻击、防御、生命，成长值为7，7，85！")
    LuaSay("驯兽师：@5蓝色@0宠物的基础攻击防御生命为20，20，200！提升攻击、防御、生命，成长值为6，6，80！")
    LuaSay("驯兽师：@7绿色@0宠物的基础攻击防御生命为10，10，100！提升攻击、防御、生命，成长值为5，5，75！")

elseif(answer=="pet")then
	local pet={	
		{"e_pet01","@7元珠灵@0","1","@7蚩尤神鹅","e_pet13","绿","e_pet01y","o_material_22",1,"3级皮",200000},--4皮
		{"e_pet02","@7奇云灵@0","1","@7祝融异灵","e_pet14","绿","e_pet02y","o_material_58",1,"3级晶",200000},--4晶
		{"e_pet03","@7幻仙灵@0","1","@7轩辕灵犬","e_pet15","绿","e_pet03y","o_material_31",1,"3级肉",200000},--4肉
		{"e_pet04","@7勇精灵@0","1","@7女娲醉猫","e_pet16","绿","e_pet04y","o_material_13",1,"3级毛",200000},--4毛
		{"e_pet05","@5元珠灵@0","2","@5蚩尤神鹅","e_pet17","蓝","e_pet05y","o_material_24",1,"5级皮",400000},
		{"e_pet06","@5奇云灵@0","2","@5祝融异灵","e_pet18","蓝","e_pet06y","o_material_60",1,"5级晶",400000},
		{"e_pet07","@5幻仙灵@0","2","@5轩辕灵犬","e_pet19","蓝","e_pet07y","o_material_33",1,"5级肉",400000},
		{"e_pet08","@5勇精灵@0","2","@5女娲醉猫","e_pet20","蓝","e_pet08y","o_material_15",1,"5级毛",400000},
		{"e_pet09","@3元珠灵@0","3","@3蚩尤神鹅","e_pet21","金","e_pet09y","o_material_26",1,"7级皮",800000},
		{"e_pet10","@3奇云灵@0","3","@3祝融异灵","e_pet22","金","e_pet10y","o_material_62",1,"7级晶",800000},
		{"e_pet11","@3幻仙灵@0","3","@3轩辕灵犬","e_pet23","金","e_pet11y","o_material_35",1,"7级肉",800000},
		{"e_pet12","@3勇精灵@0","3","@3女娲醉猫","e_pet24","金","e_pet12y","o_material_17",1,"7级毛",800000},
	}

			for i=1,12,1 do
				if(EquipInfo(10)==pet[i][2])then
					LuaSetTemp("pet_add",1)
					break
				end

			end
	--EquipInfo(10)--宠物装备位
	--LuaPetExp()--宠物经验?好象没用,用LuaPetQuery("exp")Q经验
	--LuaPetDelete()==1--删除宠物
	if(LuaQueryTemp("pet_add")==1)then
		AddMenuItem("@7宠物操作","")
		AddMenuItem("@3生命提升","pet_hpts")
		AddMenuItem("@3攻击提升","pet_attts")
		AddMenuItem("@3防御提升","pet_defts")
	else
		
		LuaSay("你未将您的宠物装备在身上哦")
	end



	-----------------宠物任务子菜单----------------------- 

elseif(answer=="pet_rw")then
    if(LuaQueryStrTask("Tptrw_Taskday")~=GetCurrentDay()) then
        ptre_r=LuaRandom(2)
        LuaSetTask("open",ptre_r)
		LuaSetTask("Tptrw_Taskday",GetCurrentDay())
	end
	AddMenuItem("@7宠物任务列表","")
	if(LuaQueryStrTask("T101_Taskday")~=GetCurrentDay()) then
		AddMenuItem("@3神奇的咒语【每日】","T101")
		havetask=1
	else
		AddMenuItem("@3神奇的咒语【每日】","T101")
	end
	if(LuaQueryStrTask("T103_Taskday")~=GetCurrentDay()) then
 		AddMenuItem("@3宠物金丹【每日】","T103")
		havetask=1
	else
		AddMenuItem("@3宠物金丹【每日】","T103")
	end


	if(LuaQueryTask("open") ==1)then
		if(LuaQueryStrTask("T104_Taskday")~=GetCurrentDay()) then
 			AddMenuItem("@1无齿之猴【重复】","T104")
			havetask=1
		else
			AddMenuItem("@1无齿之猴【重复】","T104")
		end
	end

	if(LuaQueryTask("open") ==0)then
		if(LuaQueryStrTask("T105_Taskday")~=GetCurrentDay()) then
 			AddMenuItem("@1祭拜阿猛【每日】","T105")
			havetask=1
		else
			AddMenuItem("@1祭拜阿猛【每日】","T105")
		end
	end
	    ------------------------------------------------------------------------------
elseif(answer=="givepet")then
		LuaSay("驯兽师：漫漫统一之路，无奈形单影只！是不是觉得很孤独？嗯，我养了很多宠物，就送你一只吧！")
		if(LuaFreeBag()>=1)then	
	 	AddMenuItem("@3赠送宠物","")
		AddMenuItem("@7元珠灵","pet_1")
		AddMenuItem("@7奇云灵","pet_2")
		AddMenuItem("@7幻仙灵","pet_3")  
		AddMenuItem("@7勇精灵","pet_4")
		else
	    LuaSay("提示：请至少保留1格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    end
elseif(answer=="pet_1")then                            --------赠送宠物 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet01",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()
	end
elseif(answer=="pet_2")then 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet02",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()
	end
elseif(answer=="pet_3")then 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet03",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()
	end
elseif(answer=="pet_4")then 
	if(LuaQueryTask("Tgivepet")<99)  then
	LuaGive("e_pet04",1,"givepet")
	LuaSetTask("Tgivepet",99)
	UpdateMenu()   
	end 
	    ----------
elseif(answer=="pettask")then
	local pettask=LuaQueryTask("pettask")
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("ptnumber")>=6)then
		LuaSay("今天做的很辛苦吧,剩下的货事我另找他人了.好好休息一下吧.")
		if(LuaQueryTask("ptnumber")==6)then
		LuaAddTask("ptnumber",1)
		LuaGive("o_food03",1,"pettask")
		end
		UpdateTopSay("活着别太累呀累了太遭罪啊")
	else
		if(pettask==0)then
			LuaSetTask("pettask",1)
			LuaSay("驯兽师:"..LuaQueryStr("name")..",是你呀,快帮我把这只猫送给@4桃源村@0的@3浣衣娘@0,他们村里又闹耗子了.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==1)then
			LuaSay("驯兽师:你还没把猫送给@4桃源村@0的@3浣衣娘@0,快去快回,我还有别的事要交待呢.")
		elseif(pettask==2)then
			LuaSetTask("pettask",3)
			LuaSay("驯兽师:"..LuaQueryStr("name")..",来帮我把这一窝小狗送到@4迷雾之林@0的@3王主簿@0那里,每次来就吵着要军犬.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==3)then
			LuaSay("驯兽师:你还没把这窝小狗崽送到@4迷雾之林@0的@3王主簿@0那里啊,送晚了良犬可要变病狗了.")
		elseif(pettask==4)then
			LuaSetTask("pettask",5)
			LuaSay("驯兽师:@4建康城@0中那个@3司马元显@0预定了一对墨猴,你帮我送过去吧.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==5)then
			LuaSay("驯兽师:快去把那对墨猴送给@3司马元显@0吧,他就在@4建康城@0里.")
		elseif(pettask==6)then
			LuaSetTask("pettask",7)
			LuaSay("驯兽师:@4建康城南@0的@3药品商人@0在我这定购的麝香够量了,你去交给他吧.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==7)then
			LuaSay("驯兽师:快去把箱中的麝香交给@4建康城南@0的@3药品商人@0.")
		elseif(pettask==8)then
			LuaSetTask("pettask",9)
			LuaSay("驯兽师:你说这堂堂@3晋帝@0不好好处理政务,要玩斗鸡,你去把这一笼斗鸡送到@4宫殿@0里去吧.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==9)then
			LuaSay("驯兽师:快把斗鸡送给@4宫殿@0里的@3晋帝@0,迟了可是要杀头的.")
		elseif(pettask==10)then
			LuaSetTask("pettask",11)
			LuaSay("驯兽师:去把这几只乳鸽送给@4建康东郊@0的@3王恭@0,他说要驯信鸽,可我总感觉他想烤了吃.")
			LuaGive("o_mission049",1,"pettask")
			elseif(pettask==11)then
			LuaSay("驯兽师:还不快把鸽子送给@4建康东郊@0的@3王恭@0,你可千万别找个角落偷偷烤了吃了.")
		end
	end

--------------------------------****宠物hp提升开始****-----------------------------------



elseif(answer=="pet_hpts") then
        if(EquipInfo(10)~="")then
    		local pet_hptime=LuaPetQuery("pet_hptime")	--提升HP次数	
		if(pet_hptime==0) then
			LuaPetSet("pet_hptime",1) --初始提升次数为1
			pet_hptime=LuaPetQuery("pet_hptime")
		end
		local a=pet_hptime   -------提升的次数
		LuaSetTemp("a",a)
    		pet_hp={}
		pet_hp[1]={75,80,85,90,200,"o_material_29","1级肉",1,"","",0}              ---5  每次提升的生命（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_hp[2]={75,80,85,90,200,"o_material_30","2级肉",1,"","",0}              ---10
		pet_hp[3]={75,80,85,90,200,"o_material_30","2级肉",2,"","",0}              ---15
		pet_hp[4]={75,80,85,90,2000,"o_material_31","3级肉",1,"o_gold2y","银票",1}              ---20
		pet_hp[5]={75,80,85,90,3000,"o_material_31","3级肉",2,"o_gold2y","银票",5}              ---25
		pet_hp[6]={75,80,85,90,10000,"o_material_32","4级肉",1,"o_gold2y","银票",5}              ---30
		pet_hp[7]={75,80,85,90,20000,"o_material_33","5级肉",1,"o_gold2y","银票",5}              ---35
		pet_hp[8]={75,80,85,90,50000,"o_material_34","6级肉",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_hp[9]={75,80,85,90,100000,"o_material_34","6级肉",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_hp[10]={75,80,85,90,150000,"o_material_34","6级肉",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_hp[11]={75,80,85,90,300000,"o_material_34","6级肉",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_hp[12]={75,80,85,90,500000,"o_material_34","6级肉",3,"o_zhaiquan2y","蓝绸券",1}              ---60
		pet_hp[13]={75,80,85,90,800000,"o_material_34","6级肉",3,"o_zhaiquan2y","蓝绸券",1}              ---65
		pet_hp[14]={75,80,85,90,1200000,"o_material_35","7级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---70
		pet_hp[15]={75,80,85,90,1200000,"o_material_35","7级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---75
		pet_hp[16]={75,80,85,90,1500000,"o_material_36","8级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---80
		--封顶的
		pet_hp[17]={0,0,0,0,0,0,"o_material_37","9级肉",0,"o_zhaiquan2y","蓝绸券",0}              ---85


		local pet_pz=LuaPetQuery("type")   --宠物品质
		LuaSay("提示：你的宠物当前等级为@3"..LuaPetQuery("lv").."级！@0，你已经为该宠物提升了@3"..(LuaPetQuery("pet_hptime")-1).."次生命！@0")
		LuaSay("@7本次提升可提升生命@0：@3"..pet_hp[a][pet_pz].."点")
		if(a<=3) then
			LuaSay("@7提升需耗费@0：@3"..(pet_hp[a][5]).."铜币，"..pet_hp[a][8].."个"..pet_hp[a][7].."")
		else
			LuaSay("@7提升需耗费@0：@3"..(pet_hp[a][5]).."铜币，"..pet_hp[a][8].."个"..pet_hp[a][7].."，"..pet_hp[a][11].."个"..pet_hp[a][10].."")
		end
		if(LuaPetQuery("pet_hptime")<=16)then
			AddMenuItem("@7宠物生命提升","")
			AddMenuItem("@3确认提升","pet_hpyes")
			AddMenuItem("@3不提升","pet_hpno")
		else
			LuaSay("驯兽师：目前宠物生命已经达到极限，无法继续提升属性了！敬请期待后续开放内容！")
		end
        
	else
		LuaSay("驯兽师：请先把宠物装备在身上！")
	end
elseif(answer=="pet_hpyes") then
		pet_hp={}
		pet_hp[1]={75,80,85,90,200,"o_material_29","1级肉",1,"","",0}              ---5  每次提升的生命（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_hp[2]={75,80,85,90,200,"o_material_30","2级肉",1,"","",0}              ---10
		pet_hp[3]={75,80,85,90,200,"o_material_30","2级肉",2,"","",0}              ---15
		pet_hp[4]={75,80,85,90,2000,"o_material_31","3级肉",1,"o_gold2y","银票",1}              ---20
		pet_hp[5]={75,80,85,90,3000,"o_material_31","3级肉",2,"o_gold2y","银票",5}              ---25
		pet_hp[6]={75,80,85,90,10000,"o_material_32","4级肉",1,"o_gold2y","银票",5}              ---30
		pet_hp[7]={75,80,85,90,20000,"o_material_33","5级肉",1,"o_gold2y","银票",5}              ---35
		pet_hp[8]={75,80,85,90,50000,"o_material_34","6级肉",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_hp[9]={75,80,85,90,100000,"o_material_34","6级肉",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_hp[10]={75,80,85,90,150000,"o_material_34","6级肉",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_hp[11]={75,80,85,90,300000,"o_material_34","6级肉",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_hp[12]={75,80,85,90,500000,"o_material_34","6级肉",3,"o_zhaiquan2y","蓝绸券",1}              ---60
		pet_hp[13]={75,80,85,90,800000,"o_material_34","6级肉",3,"o_zhaiquan2y","蓝绸券",1}              ---65
		pet_hp[14]={75,80,85,90,1200000,"o_material_35","7级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---70
		pet_hp[15]={75,80,85,90,1200000,"o_material_35","7级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---75
		pet_hp[16]={75,80,85,90,1500000,"o_material_36","8级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---80
		--封顶的
		pet_hp[17]={0,0,0,0,0,0,"o_material_37","9级肉",0,"o_zhaiquan2y","蓝绸券",0}  
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --宠物品质
	if(LuaPetQuery("pet_hptime")<=LuaPetQuery("lv")/5 )  then
        	if(a<=3) then
				if(LuaItemCount("coin")>=pet_hp[a][5] and LuaItemStatusNormalCount(pet_hp[a][6])>=pet_hp[a][8]) then
					LuaGive("coin",-pet_hp[a][5],"Tpet_hp")   --Tpet_hp：宠物生命提升
					DelItem(pet_hp[a][6],pet_hp[a][8])
					LuaPetSet("max_hp",LuaPetQuery("max_hp")+pet_hp[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
					LuaSay("@7提升成功@0。提升生命：@3"..pet_hp[a][pet_pz].."点,宠物总生命为@3"..LuaPetQuery("max_hp").."")
				else
				LuaSay("@7提升材料不足@0：需要@3"..(pet_hp[a][5]).."铜币，"..pet_hp[a][8].."个"..pet_hp[a][7].."")
				end
			else
				if(LuaItemCount("coin")>=pet_hp[a][5] and LuaItemStatusNormalCount(pet_hp[a][6])>=pet_hp[a][8] and LuaItemStatusNormalCount(pet_hp[a][9])>=pet_hp[a][11]) then
					LuaGive("coin",-pet_hp[a][5],"Tpet_hp")   --Tpet_hp：宠物生命提升
					DelItem(pet_hp[a][6],pet_hp[a][8])
					DelItem(pet_hp[a][9],pet_hp[a][11])
					LuaPetSet("max_hp",LuaPetQuery("max_hp")+pet_hp[a][pet_pz])
					LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
					FlushMyInfo("1")
					LuaSay("@7提升成功@0。提升生命：@3"..pet_hp[a][pet_pz].."点,宠物总生命为@3"..LuaPetQuery("max_hp").."")
				else
				LuaSay("@7提升材料不足@0：需要@3"..(pet_hp[a][5]).."铜币，"..pet_hp[a][8].."个"..pet_hp[a][7].."，"..pet_hp[a][11].."个"..pet_hp[a][10].."")
				end
			end
	else
	LuaSay("驯兽师：宠物每多升5级就能多提升1次属性等级，你快去给宠物喂食，提升宠物等级吧！")
	end

elseif(answer=="pet_hpno") then
		pet_hp={}
		pet_hp[1]={75,80,85,90,200,"o_material_29","1级肉",1,"","",0}              ---5  每次提升的生命（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_hp[2]={75,80,85,90,200,"o_material_30","2级肉",1,"","",0}              ---10
		pet_hp[3]={75,80,85,90,200,"o_material_30","2级肉",2,"","",0}              ---15
		pet_hp[4]={75,80,85,90,2000,"o_material_31","3级肉",1,"o_gold2y","银票",1}              ---20
		pet_hp[5]={75,80,85,90,3000,"o_material_31","3级肉",2,"o_gold2y","银票",5}              ---25
		pet_hp[6]={75,80,85,90,10000,"o_material_32","4级肉",1,"o_gold2y","银票",5}              ---30
		pet_hp[7]={75,80,85,90,20000,"o_material_33","5级肉",1,"o_gold2y","银票",5}              ---35
		pet_hp[8]={75,80,85,90,50000,"o_material_34","6级肉",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_hp[9]={75,80,85,90,100000,"o_material_34","6级肉",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_hp[10]={75,80,85,90,150000,"o_material_34","6级肉",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_hp[11]={75,80,85,90,300000,"o_material_34","6级肉",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_hp[12]={75,80,85,90,500000,"o_material_34","6级肉",3,"o_zhaiquan2y","蓝绸券",1}              ---60
		pet_hp[13]={75,80,85,90,800000,"o_material_34","6级肉",3,"o_zhaiquan2y","蓝绸券",1}              ---65
		pet_hp[14]={75,80,85,90,1200000,"o_material_35","7级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---70
		pet_hp[15]={75,80,85,90,1200000,"o_material_35","7级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---75
		pet_hp[16]={75,80,85,90,1500000,"o_material_36","8级肉",1,"o_zhaiquan2y","蓝绸券",2}              ---80
		--封顶的
		pet_hp[17]={0,0,0,0,0,0,"o_material_37","9级肉",0,"o_zhaiquan2y","蓝绸券",0}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --宠物品质
    LuaSay("驯兽师：还可以提升你宠物的生命哦，@7可提升生命@0：@3"..pet_hp[a][pet_pz].."点！")

        --------------------------------****宠物hp提升结束****-----------------------------------



--------------------------------****宠物att提升开始****-----------------------------------



	elseif(answer=="pet_attts") then
        if(EquipInfo(10)~="")then
    	local pet_atttime=LuaPetQuery("pet_atttime")
    	if(pet_atttime==0) then
    	LuaPetSet("pet_atttime",1) --初始提升次数为1
    	pet_atttime=LuaPetQuery("pet_atttime")
    	end
    	local a=pet_atttime   -------提升的次数
	LuaSetTemp("a",a)

		pet_att={}                                                               ---紫色宠物取消开放了 
		pet_att[1]={5,6,7,8,200,"o_material_47","1级矿",1,"","",0}              ---5  每次提升的攻击力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_att[2]={5,6,7,8,200,"o_material_48","2级矿",1,"","",0}              ---10
		pet_att[3]={5,6,7,8,200,"o_material_48","2级矿",2,"","",0}              ---15
		pet_att[4]={5,6,7,8,2000,"o_material_49","3级矿",1,"o_gold2y","银票",1}              ---20
		pet_att[5]={5,6,7,8,3000,"o_material_49","3级矿",2,"o_gold2y","银票",5}              ---25
		pet_att[6]={5,6,7,8,10000,"o_material_50","4级矿",1,"o_gold2y","银票",5}              ---30
		pet_att[7]={5,6,7,8,20000,"o_material_51","5级矿",1,"o_gold2y","银票",5}              ---35
		pet_att[8]={5,6,7,8,50000,"o_material_52","6级矿",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_att[9]={5,6,7,8,100000,"o_material_52","6级矿",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_att[10]={5,6,7,8,150000,"o_material_52","6级矿",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_att[11]={5,6,7,8,300000,"o_material_52","6级矿",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_att[12]={5,6,7,8,500000,"o_material_52","6级矿",3,"o_zhaiquan1y2","蓝绸券",1}              ---60
		pet_att[13]={5,6,7,8,800000,"o_material_52","6级矿",3,"o_zhaiquan1y2","蓝绸券",1}              ---65
		pet_att[14]={5,6,7,8,1200000,"o_material_53","7级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---70
		pet_att[15]={5,6,7,8,1200000,"o_material_53","7级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---75
		pet_att[16]={5,6,7,8,1500000,"o_material_54","8级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---80
		--封顶的
		pet_att[17]={0,0,0,0,0,0,"o_material_55","9级矿",0,"o_zhaiquan2y","蓝绸券",0}              ---85


		pet_pz=LuaPetQuery("type")   --宠物品质
		LuaSay("提示：你的宠物当前等级为@3"..LuaPetQuery("lv").."级！@0，你已经为该宠物提升了@3"..(LuaPetQuery("pet_atttime")-1).."次攻击力！@0")
		LuaSay("@7本次提升可提升攻击力@0：@3"..pet_att[a][pet_pz].."点")
        if(a<=3) then
        LuaSay("@7提升需耗费@0：@3"..(pet_att[a][5]).."铜币，"..pet_att[a][8].."个"..pet_att[a][7].."")
        else
        LuaSay("@7提升需耗费@0：@3"..(pet_att[a][5]).."铜币，"..pet_att[a][8].."个"..pet_att[a][7].."，"..pet_att[a][11].."个"..pet_att[a][10].."")
        end
        if(LuaPetQuery("pet_atttime")<=16)then
        AddMenuItem("@7宠物攻击力提升","")
        AddMenuItem("@3确认提升","pet_attyes")
        AddMenuItem("@3不提升","pet_attno")
        else
        LuaSay("驯兽师：目前宠物攻击力已经达到极限，无法继续提升属性了！敬请期待后续开放内容！")
        end

    else
	LuaSay("驯兽师：请先把宠物装备在身上！")
	end
elseif(answer=="pet_attyes") then
		pet_att={}                                                               ---紫色宠物取消开放了 
		pet_att[1]={5,6,7,8,200,"o_material_47","1级矿",1,"","",0}              ---5  每次提升的攻击力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_att[2]={5,6,7,8,200,"o_material_48","2级矿",1,"","",0}              ---10
		pet_att[3]={5,6,7,8,200,"o_material_48","2级矿",2,"","",0}              ---15
		pet_att[4]={5,6,7,8,2000,"o_material_49","3级矿",1,"o_gold2y","银票",1}              ---20
		pet_att[5]={5,6,7,8,3000,"o_material_49","3级矿",2,"o_gold2y","银票",5}              ---25
		pet_att[6]={5,6,7,8,10000,"o_material_50","4级矿",1,"o_gold2y","银票",5}              ---30
		pet_att[7]={5,6,7,8,20000,"o_material_51","5级矿",1,"o_gold2y","银票",5}              ---35
		pet_att[8]={5,6,7,8,50000,"o_material_52","6级矿",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_att[9]={5,6,7,8,100000,"o_material_52","6级矿",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_att[10]={5,6,7,8,150000,"o_material_52","6级矿",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_att[11]={5,6,7,8,300000,"o_material_52","6级矿",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_att[12]={5,6,7,8,500000,"o_material_52","6级矿",3,"o_zhaiquan1y2","蓝绸券",1}              ---60
		pet_att[13]={5,6,7,8,800000,"o_material_52","6级矿",3,"o_zhaiquan1y2","蓝绸券",1}              ---65
		pet_att[14]={5,6,7,8,1200000,"o_material_53","7级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---70
		pet_att[15]={5,6,7,8,1200000,"o_material_53","7级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---75
		pet_att[16]={5,6,7,8,1500000,"o_material_54","8级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---80
		--封顶的
		pet_att[17]={0,0,0,0,0,0,"o_material_55","9级矿",0,"o_zhaiquan2y","蓝绸券",0}              ---85
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --宠物品质
	if(LuaPetQuery("pet_atttime")<=LuaPetQuery("lv")/5 )  then
        	if(a<=3) then
				if(LuaItemCount("coin")>=pet_att[a][5] and LuaItemStatusNormalCount(pet_att[a][6])>=pet_att[a][8]) then
					LuaGive("coin",-pet_att[a][5],"Tpet_att")   --Tpet_att：宠物攻击力提升
					DelItem(pet_att[a][6],pet_att[a][8])
					LuaPetSet("att",LuaPetQuery("att")+pet_att[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					LuaSay("@7提升成功@0。提升攻击力：@3"..pet_att[a][pet_pz].."点,宠物总攻击力为@3"..LuaPetQuery("att").."")
				else
				LuaSay("@7提升材料不足@0：需要@3"..(pet_att[a][5]).."铜币，"..pet_att[a][8].."个"..pet_att[a][7].."")
				end
			else
				if(LuaItemCount("coin")>=pet_att[a][5] and LuaItemStatusNormalCount(pet_att[a][6])>=pet_att[a][8] and LuaItemStatusNormalCount(pet_att[a][9])>=pet_att[a][11]) then
					LuaGive("coin",-pet_att[a][5],"Tpet_att")   --Tpet_att：宠物攻击力提升
					DelItem(pet_att[a][6],pet_att[a][8])
					DelItem(pet_att[a][9],pet_att[a][11])
					LuaPetSet("att",LuaPetQuery("att")+pet_att[a][pet_pz])
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					FlushMyInfo("1")
					LuaSay("@7提升成功@0。提升攻击力：@3"..pet_att[a][pet_pz].."点,宠物总攻击力为@3"..LuaPetQuery("att").."")
				else
				LuaSay("@7提升材料不足@0：需要@3"..(pet_att[a][5]).."铜币，"..pet_att[a][8].."个"..pet_att[a][7].."，"..pet_att[a][11].."个"..pet_att[a][10].."")
				end
			end
	else
	LuaSay("驯兽师：宠物每多升5级就能多提升1次属性等级，你快去给宠物喂食，提升宠物等级吧！")
	end

elseif(answer=="pet_attno") then
	pet_att={}                                                               ---紫色宠物取消开放了 
		pet_att[1]={5,6,7,8,200,"o_material_47","1级矿",1,"","",0}              ---5  每次提升的攻击力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_att[2]={5,6,7,8,200,"o_material_48","2级矿",1,"","",0}              ---10
		pet_att[3]={5,6,7,8,200,"o_material_48","2级矿",2,"","",0}              ---15
		pet_att[4]={5,6,7,8,2000,"o_material_49","3级矿",1,"o_gold2y","银票",1}              ---20
		pet_att[5]={5,6,7,8,3000,"o_material_49","3级矿",2,"o_gold2y","银票",5}              ---25
		pet_att[6]={5,6,7,8,10000,"o_material_50","4级矿",1,"o_gold2y","银票",5}              ---30
		pet_att[7]={5,6,7,8,20000,"o_material_51","5级矿",1,"o_gold2y","银票",5}              ---35
		pet_att[8]={5,6,7,8,50000,"o_material_52","6级矿",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_att[9]={5,6,7,8,100000,"o_material_52","6级矿",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_att[10]={5,6,7,8,150000,"o_material_52","6级矿",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_att[11]={5,6,7,8,300000,"o_material_52","6级矿",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_att[12]={5,6,7,8,500000,"o_material_52","6级矿",3,"o_zhaiquan1y2","蓝绸券",1}              ---60
		pet_att[13]={5,6,7,8,800000,"o_material_52","6级矿",3,"o_zhaiquan1y2","蓝绸券",1}              ---65
		pet_att[14]={5,6,7,8,1200000,"o_material_53","7级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---70
		pet_att[15]={5,6,7,8,1200000,"o_material_53","7级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---75
		pet_att[16]={5,6,7,8,1500000,"o_material_54","8级矿",1,"o_zhaiquan1y2","蓝绸券",2}              ---80
		--封顶的
		pet_att[17]={0,0,0,0,0,0,"o_material_55","9级矿",0,"o_zhaiquan2y","蓝绸券",0}              ---85
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --宠物品质
    LuaSay("驯兽师：还可以提升你宠物的攻击力哦，@7可提升攻击力@0：@3"..pet_att[a][pet_pz].."点！")

        --------------------------------****宠物att提升结束****-----------------------------------



--------------------------------****宠物def提升开始****-----------------------------------



	elseif(answer=="pet_defts") then
        if(EquipInfo(10)~="")then
    		local pet_deftime=LuaPetQuery("pet_deftime")
    	if(pet_deftime==0) then
		LuaPetSet("pet_deftime",1) --初始提升次数为1
		pet_deftime=LuaPetQuery("pet_deftime")
    	end
    	local a=pet_deftime   -------提升的次数
	LuaSetTemp("a",a)


	    pet_def={}
		pet_def[1]={5,6,7,8,200,"o_material_20","1级皮",1,"","",0}              ---5  每次提升的防御力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_def[2]={5,6,7,8,200,"o_material_21","2级皮",1,"","",0}              ---10
		pet_def[3]={5,6,7,8,200,"o_material_21","2级皮",2,"","",0}              ---15
		pet_def[4]={5,6,7,8,2000,"o_material_22","3级皮",1,"o_gold2y","银票",1}              ---20
		pet_def[5]={5,6,7,8,3000,"o_material_22","3级皮",2,"o_gold2y","银票",5}              ---25
		pet_def[6]={5,6,7,8,10000,"o_material_23","4级皮",1,"o_gold2y","银票",5}              ---30
		pet_def[7]={5,6,7,8,20000,"o_material_24","5级皮",1,"o_gold2y","银票",5}              ---35
		pet_def[8]={5,6,7,8,50000,"o_material_25","6级皮",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_def[9]={5,6,7,8,100000,"o_material_25","6级皮",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_def[10]={5,6,7,8,150000,"o_material_25","6级皮",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_def[11]={5,6,7,8,300000,"o_material_25","6级皮",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_def[12]={5,6,7,8,500000,"o_material_25","6级皮",3,"o_zhaiquan1y2","蓝绸券",1}              ---60
		pet_def[13]={5,6,7,8,800000,"o_material_25","6级皮",3,"o_zhaiquan1y2","蓝绸券",1}              ---65
		pet_def[14]={5,6,7,8,1200000,"o_material_26","7级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---70
		pet_def[15]={5,6,7,8,1200000,"o_material_26","7级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---75
		pet_def[16]={5,6,7,8,1500000,"o_material_27","8级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---80
		--封顶的
		pet_def[17]={0,0,0,0,0,0,"o_material_28","9级皮",0,"o_zhaiquan2y","蓝绸券",0}              ---85


		pet_pz=LuaPetQuery("type")   --宠物品质
		LuaSay("提示：你的宠物当前等级为@3"..LuaPetQuery("lv").."级！@0，你已经为该宠物提升了@3"..(LuaPetQuery("pet_deftime")-1).."次防御力！@0")
		LuaSay("@7本次提升可提升防御力@0：@3"..pet_def[a][pet_pz].."点")
        if(a<=3) then
        LuaSay("@7提升需耗费@0：@3"..(pet_def[a][5]).."铜币，"..pet_def[a][8].."个"..pet_def[a][7].."")
        else
        LuaSay("@7提升需耗费@0：@3"..(pet_def[a][5]).."铜币，"..pet_def[a][8].."个"..pet_def[a][7].."，"..pet_def[a][11].."个"..pet_def[a][10].."")
        end
        if(LuaPetQuery("pet_deftime")<=16)then
        AddMenuItem("@7宠物防御力提升","")
        AddMenuItem("@3确认提升","pet_defyes")
        AddMenuItem("@3不提升","pet_defno")
        else
        LuaSay("驯兽师：目前宠物防御力已经达到极限，无法继续提升属性了！敬请期待后续开放内容！")
        end

    else
	LuaSay("驯兽师：请先把宠物装备在身上！")
	end
elseif(answer=="pet_defyes") then
		pet_def={}
		pet_def[1]={5,6,7,8,200,"o_material_20","1级皮",1,"","",0}              ---5  每次提升的防御力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_def[2]={5,6,7,8,200,"o_material_21","2级皮",1,"","",0}              ---10
		pet_def[3]={5,6,7,8,200,"o_material_21","2级皮",2,"","",0}              ---15
		pet_def[4]={5,6,7,8,2000,"o_material_22","3级皮",1,"o_gold2y","银票",1}              ---20
		pet_def[5]={5,6,7,8,3000,"o_material_22","3级皮",2,"o_gold2y","银票",5}              ---25
		pet_def[6]={5,6,7,8,10000,"o_material_23","4级皮",1,"o_gold2y","银票",5}              ---30
		pet_def[7]={5,6,7,8,20000,"o_material_24","5级皮",1,"o_gold2y","银票",5}              ---35
		pet_def[8]={5,6,7,8,50000,"o_material_25","6级皮",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_def[9]={5,6,7,8,100000,"o_material_25","6级皮",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_def[10]={5,6,7,8,150000,"o_material_25","6级皮",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_def[11]={5,6,7,8,300000,"o_material_25","6级皮",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_def[12]={5,6,7,8,500000,"o_material_25","6级皮",3,"o_zhaiquan1y2","蓝绸券",1}              ---60
		pet_def[13]={5,6,7,8,800000,"o_material_25","6级皮",3,"o_zhaiquan1y2","蓝绸券",1}              ---65
		pet_def[14]={5,6,7,8,1200000,"o_material_26","7级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---70
		pet_def[15]={5,6,7,8,1200000,"o_material_26","7级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---75
		pet_def[16]={5,6,7,8,1500000,"o_material_27","8级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---80
		--封顶的
		pet_def[17]={0,0,0,0,0,0,"o_material_28","9级皮",0,"o_zhaiquan2y","蓝绸券",0}              ---85

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --宠物品质
	if(LuaPetQuery("pet_deftime")<=LuaPetQuery("lv")/5 )  then
        	if(a<=3) then
				if(LuaItemCount("coin")>=pet_def[a][5] and LuaItemStatusNormalCount(pet_def[a][6])>=pet_def[a][8]) then
					LuaGive("coin",-pet_def[a][5],"Tpet_def")   --Tpet_def：宠物防御力提升
					DelItem(pet_def[a][6],pet_def[a][8])
					LuaPetSet("def",LuaPetQuery("def")+pet_def[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					LuaSay("@7提升成功@0。提升防御力：@3"..pet_def[a][pet_pz].."点,宠物总防御力为@3"..LuaPetQuery("def").."")
				else
				LuaSay("@7提升材料不足@0：需要@3"..(pet_def[a][5]).."铜币，"..pet_def[a][8].."个"..pet_def[a][7].."")
				end
			else
				if(LuaItemCount("coin")>=pet_def[a][5] and LuaItemStatusNormalCount(pet_def[a][6])>=pet_def[a][8] and LuaItemStatusNormalCount(pet_def[a][9])>=pet_def[a][11]) then
					LuaGive("coin",-pet_def[a][5],"Tpet_def")   --Tpet_def：宠物防御力提升
					DelItem(pet_def[a][6],pet_def[a][8])
					DelItem(pet_def[a][9],pet_def[a][11])
					LuaPetSet("def",LuaPetQuery("def")+pet_def[a][pet_pz])
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					FlushMyInfo("1")
					LuaSay("@7提升成功@0。提升防御力：@3"..pet_def[a][pet_pz].."点,宠物总防御力为@3"..LuaPetQuery("def").."")
				else
				LuaSay("@7提升材料不足@0：需要@3"..(pet_def[a][5]).."铜币，"..pet_def[a][8].."个"..pet_def[a][7].."，"..pet_def[a][11].."个"..pet_def[a][10].."")
				end
			end
	else
	LuaSay("驯兽师：宠物每多升5级就能多提升1次属性等级，你快去给宠物喂食，提升宠物等级吧！")
	end

elseif(answer=="pet_defno") then
	pet_def={}
		pet_def[1]={5,6,7,8,200,"o_material_20","1级皮",1,"","",0}              ---5  每次提升的防御力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_def[2]={5,6,7,8,200,"o_material_21","2级皮",1,"","",0}              ---10
		pet_def[3]={5,6,7,8,200,"o_material_21","2级皮",2,"","",0}              ---15
		pet_def[4]={5,6,7,8,2000,"o_material_22","3级皮",1,"o_gold2y","银票",1}              ---20
		pet_def[5]={5,6,7,8,3000,"o_material_22","3级皮",2,"o_gold2y","银票",5}              ---25
		pet_def[6]={5,6,7,8,10000,"o_material_23","4级皮",1,"o_gold2y","银票",5}              ---30
		pet_def[7]={5,6,7,8,20000,"o_material_24","5级皮",1,"o_gold2y","银票",5}              ---35
		pet_def[8]={5,6,7,8,50000,"o_material_25","6级皮",1,"o_zhaiquan1y","青纱卷",1}              ---40
		pet_def[9]={5,6,7,8,100000,"o_material_25","6级皮",1,"o_zhaiquan1y","青纱卷",2}              ---45
		pet_def[10]={5,6,7,8,150000,"o_material_25","6级皮",2,"o_zhaiquan1y","青纱卷",5}              ---50
		pet_def[11]={5,6,7,8,300000,"o_material_25","6级皮",2,"o_zhaiquan1y","青纱卷",5}              ---55
		pet_def[12]={5,6,7,8,500000,"o_material_25","6级皮",3,"o_zhaiquan1y2","蓝绸券",1}              ---60
		pet_def[13]={5,6,7,8,800000,"o_material_25","6级皮",3,"o_zhaiquan1y2","蓝绸券",1}              ---65
		pet_def[14]={5,6,7,8,1200000,"o_material_26","7级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---70
		pet_def[15]={5,6,7,8,1200000,"o_material_26","7级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---75
		pet_def[16]={5,6,7,8,1500000,"o_material_27","8级皮",1,"o_zhaiquan1y2","蓝绸券",2}              ---80
		--封顶的
		pet_def[17]={0,0,0,0,0,0,"o_material_28","9级皮",0,"o_zhaiquan2y","蓝绸券",0}              ---85

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --宠物品质
	LuaSay("驯兽师：还可以提升你宠物的防御力哦，@7可提升防御力@0：@3"..pet_def[a][pet_pz].."点！")

        --------------------------------****宠物def提升结束****-----------------------------------

elseif(answer=="pet_food") then -----------------------------------------------------------------宠物食品兑换
	LuaSay("驯兽师：为了方便吃宠物食品，你可以在这里用宠物食品或宠物金丹换取@1宠物大金丹@0！其效果稍微低于40个@3宠物食品【精】！")
	LuaSay("驯兽师：换取1个@1宠物大金丹@0！需要40个@3宠物食品【精】@0，或者65个@5宠物食品【优】@0，或者130个@7宠物食品【粗】@0，或者30个@1宠物金丹@0！")
	local num_jindan=LuaItemStatusNormalCount("o_food04")
	local num_jing=LuaItemStatusNormalCount("o_food03")
	local num_you=LuaItemStatusNormalCount("o_food02")
	local num_cu=LuaItemStatusNormalCount("o_food01")
	LuaSetTemp("num_jindan",num_jindan)
	LuaSetTemp("num_jing",num_jing)
	LuaSetTemp("num_you",num_you)
	LuaSetTemp("num_cu",num_cu)
	LuaSay("驯兽师：你目前有"..num_jing.."个@3宠物食品【精】@0，"..num_you.."个@5宠物食品【优】@0，"..num_cu.."个@7宠物食品【粗】@0，"..num_jindan.."个@1宠物金丹@0！")
	if(num_jindan>=30 or num_jing>=40 or num_you>=65 or num_cu>=130 )then
		num_dajindan=floor(num_jindan/30)+floor(num_jing/40)+floor(num_you/65)+floor(num_cu/130)  -------宠物大金丹的计算
		LuaSay("驯兽师：你当前可以换取@1宠物大金丹@0的数量为"..num_dajindan.."个！")
		AddMenuItem("@7是否换？","")
		AddMenuItem("@7不换","pet_food_no","")
		AddMenuItem("@7换","pet_food_yes","")
	else
	LuaSay("提示：你身上的宠物食品与宠物金丹，尚不足换取一个宠物大金丹！")
	end
elseif(answer=="pet_food_no") then
    LuaSay("驯兽师：你当前可以换取@1宠物大金丹@0的数量为"..num_dajindan.."个！想换了可以再来找我！")
elseif(answer=="pet_food_yes") then
	local num_jindan=LuaQueryTemp("num_jindan")
	local num_jing=LuaQueryTemp("num_jing")
	local num_you=LuaQueryTemp("num_you")
	local num_cu=LuaQueryTemp("num_cu")
    DelItem("o_food04",30*floor(num_jindan/30))
    DelItem("o_food03",40*floor(num_jing/40))
    DelItem("o_food02",65*floor(num_you/65))
    DelItem("o_food01",130*floor(num_cu/130))
    LuaGive("o_food05",num_dajindan)
    LuaSay("驯兽师：你已经换取了"..num_dajindan.."个@1宠物大金丹@0！")
	UpdateMenu()
	
elseif(answer=="pet_free") then               --------------------------宠物放生
    if(LuaQueryStrTask("Tpet_free_Taskday")~=GetCurrentDay()) then
		LuaSetTask("Tpet_free_times",0)
		LuaSetTask("Tpet_free_Taskday",GetCurrentDay())
	end
	if(EquipInfo(10)~="")then
	    LuaSay("驯兽师：宠物放生后，它会感谢你，馈赠你不少东西！")
	    local pet_lv=LuaPetQuery("lv")
	    if(pet_lv>=20)then 
			if(pet_lv>=20 and pet_lv<40)then				
			   	LuaSay("驯兽师：放生宠物后，可以获得"..(pet_lv-19).."个@3宠物食品【精】@0，每天放生前10次还有一定的经验值！")
			elseif(pet_lv>=40 and pet_lv<80)then
			   	LuaSay("驯兽师：放生宠物后，可以获得"..(pet_lv-39).."个@1宠物大金丹@0，每天放生前10次还有一定的经验值！")
			end 
	   		AddMenuItem("@7操作列表","")
    		AddMenuItem("@7再等会","Tpet_free_no")
    		AddMenuItem("@7放生","Tpet_free_yes")
		else
		LuaSay("驯兽师：宠物未达到20级，无法放生！")
		end
		 
	else
		LuaSay("驯兽师：请把要放生的宠物装备上！")
	end  
elseif(answer=="Tpet_free_no") then 
	local pet_lv=LuaPetQuery("lv")
	if(pet_lv>=20 and pet_lv<40)then				
	   	LuaSay("驯兽师：放生宠物后，可以获得"..(pet_lv-19).."个@3宠物食品【精】@0，每天放生前10次还有一定的经验值！")
	elseif(pet_lv>=40 and pet_lv<80)then
	   	LuaSay("驯兽师：放生宠物后，可以获得"..(pet_lv-39).."个@1宠物大金丹@0，每天放生前10次还有一定的经验值！")
	end 
elseif(answer=="Tpet_free_yes") then
	local level= LuaQuery("level")
		if(level>80)then
		level=80
	end
	local pet_lv=LuaPetQuery("lv")
    if(LuaDelEquip(10) ==1)  then -----删除宠物成功 
		if(pet_lv>=20 and pet_lv<40)then				
		   	LuaGive("o_food03",pet_lv-19,"Tpet_free")
		elseif(pet_lv>=40 and pet_lv<80)then
			LuaGive("o_food05",pet_lv-39,"Tpet_free")
		end
		local lv_exp
		if(LuaQuery("level")<30) then    ------经验表 
		lv_exp=30000
		elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
		lv_exp=70000
		elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
		lv_exp=150000
		elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
		lv_exp=200000
		elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
		lv_exp=400000
		elseif(LuaQuery("level")>=70 ) then
		lv_exp=1000000
		end
  		local pet_free_exp=lv_exp+(LuaRandom(20)+1)*level^2
		if(LuaQueryTask("Tpet_free_times")<=10) then
		LuaAddJx("combat_exp",pet_free_exp,"Tpet_free")
		LuaAddTask("Tpet_free_times",1)
		else
		LuaSay("驯兽师：今天你放生达10次以上，不会再获得经验奖励！")
		end
	else
	LuaSay("提示：宠物放生失败！")
	end

	
	
	
elseif(answer=="pet_star") then ----------------------------------------------------------------------------宠物加星
    if(EquipInfo(10)~="")then   ---是否装备宠物判断
    
	LuaSay("@1提示@0：宠物加星不会涉及任何攻击防御等战斗属性，只会使宠物外观更好看！目前宠物星等升到9时，将获得3个星星闪烁的外观效果！需要@1花费大量铜币！@0")
	if(LuaPetQuery("petstar")==0)then
		LuaSay("驯兽师：你的宠物目前星等为0！升到1星，要花费@33万铜币！@0升到第3星等，你的宠物外观就会多个闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no0")
    	AddMenuItem("@7加星","pet_star_yes0")
	elseif(LuaPetQuery("petstar")==1)then
		LuaSay("驯兽师：你的宠物目前星等为1！升到2星，要花费@310万铜币！@0升到第3星等，你的宠物外观就会多个闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no1")
    	AddMenuItem("@7加星","pet_star_yes1")
	elseif(LuaPetQuery("petstar")==2)then
		LuaSay("驯兽师：你的宠物目前星等为2！升到3星，要花费@315万铜币！@0升到第3星等，你的宠物外观就会多个闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no2")
    	AddMenuItem("@7加星","pet_star_yes2")	
	elseif(LuaPetQuery("petstar")==3)then
		LuaSay("驯兽师：你的宠物目前星等为3！升到4星，要花费@335万铜币！@0升到第6星等，你的宠物外观就会较多闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no3")
    	AddMenuItem("@7加星","pet_star_yes3")
	elseif(LuaPetQuery("petstar")==4)then
		LuaSay("驯兽师：你的宠物目前星等为4！升到5星，要花费@350万铜币！@0升到第6星等，你的宠物外观就会较多闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no4")
    	AddMenuItem("@7加星","pet_star_yes4")
	elseif(LuaPetQuery("petstar")==5)then
		LuaSay("驯兽师：你的宠物目前星等为5！升到6星，要花费@3100万铜币！@0升到第6星等，你的宠物外观就会较多闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no5")
    	AddMenuItem("@7加星","pet_star_yes5")
	elseif(LuaPetQuery("petstar")==6)then
		LuaSay("驯兽师：你的宠物目前星等为6！升到7星，要花费@3250万铜币！@0升到第9星等，你的宠物外观就会更多闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no6")
    	AddMenuItem("@7加星","pet_star_yes6")
	elseif(LuaPetQuery("petstar")==7)then
		LuaSay("驯兽师：你的宠物目前星等为7！升到8星，要花费@3500万铜币！@0升到第9星等，你的宠物外观就会更多闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no7")
    	AddMenuItem("@7加星","pet_star_yes7")
    elseif(LuaPetQuery("petstar")==8)then
		LuaSay("驯兽师：你的宠物目前星等为8！升到9星，要花费@31000万铜币！@0升到第9星等，你的宠物外观就会更多闪烁的星星！")
		AddMenuItem("@7操作列表","")
    	AddMenuItem("@7再等会","pet_star_no8")
    	AddMenuItem("@7加星","pet_star_yes8")
    elseif(LuaPetQuery("petstar")==9)then
		LuaSay("驯兽师：你的宠物目前星等为9！已经是最高星等！")
	end 
	
    else
		LuaSay("驯兽师：请把要放生的宠物装备上！")
	end

elseif(answer=="pet_star_no0") then
	LuaSay("驯兽师：你的宠物目前星等为0！升到1星，要花费@33万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes0") then
    if(LuaItemCount("coin")>=30000) then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了1星等！")
    LuaGive("coin",-30000,"petstar_up")
    LuaPetSet("petstar",1)
    else
    LuaSay("驯兽师：你身上的铜币不足3万！")
    end
elseif(answer=="pet_star_no1") then
	LuaSay("驯兽师：你的宠物目前星等为1！升到2星，要花费@310万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes1") then
    if(LuaItemCount("coin")>=100000) then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了2星等！")
    LuaGive("coin",-100000,"petstar_up")
    LuaPetSet("petstar",2)
    else
    LuaSay("驯兽师：你身上的铜币不足10万！")
    end
elseif(answer=="pet_star_no2") then
	LuaSay("驯兽师：你的宠物目前星等为2！升到3星，要花费@315万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes2") then
    if(LuaItemCount("coin")>=150000)then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了3星等！")
    LuaGive("coin",-150000,"petstar_up")
    LuaPetSet("petstar",3)
    else
    LuaSay("驯兽师：你身上的铜币不足15万！")
    end
elseif(answer=="pet_star_no3") then
	LuaSay("驯兽师：你的宠物目前星等为3！升到4星，要花费@335万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes3") then
    if(LuaItemCount("coin")>=350000)then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了4星等！")
    LuaGive("coin",-350000,"petstar_up")
    LuaPetSet("petstar",4)
    else
    LuaSay("驯兽师：你身上的铜币不足35万！")
    end
elseif(answer=="pet_star_no4") then
	LuaSay("驯兽师：你的宠物目前星等为4！升到5星，要花费@350万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes4") then
    if(LuaItemCount("coin")>=500000)then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了5星等！")
    LuaGive("coin",-500000,"petstar_up")
    LuaPetSet("petstar",5)
    else
    LuaSay("驯兽师：你身上的铜币不足50万！")
    end
elseif(answer=="pet_star_no5") then
	LuaSay("驯兽师：你的宠物目前星等为5！升到6星，要花费@3100万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes5") then
    if(LuaItemCount("coin")>=1000000) then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了6星等！")
    LuaGive("coin",-1000000,"petstar_up")
    LuaPetSet("petstar",6)
    else
    LuaSay("驯兽师：你身上的铜币不足100万！")
    end
elseif(answer=="pet_star_no6") then
	LuaSay("驯兽师：你的宠物目前星等为6！升到7星，要花费@3250万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes6") then
    if(LuaItemCount("coin")>=2500000)then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了7星等！")
    LuaGive("coin",-2500000,"petstar_up")
    LuaPetSet("petstar",7)
    else
    LuaSay("驯兽师：你身上的铜币不足250万！")
    end
elseif(answer=="pet_star_no7") then
	LuaSay("驯兽师：你的宠物目前星等为7！升到8星，要花费@3500万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes7") then
    if(LuaItemCount("coin")>=5000000)then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了8星等！")
    LuaGive("coin",-5000000,"petstar_up")
    LuaPetSet("petstar",8)
    else
    LuaSay("驯兽师：你身上的铜币不足500万！")
    end
elseif(answer=="pet_star_no8") then
	LuaSay("驯兽师：你的宠物目前星等为8！升到9星，要花费@31000万铜币！@0每提升3次星等，你的宠物外观就会增加闪烁的星星数量！")
elseif(answer=="pet_star_yes8") then
    if(LuaItemCount("coin")>=10000000) then
    LuaSay("驯兽师：你的宠物目前星等提升成功！目前升到了9星等！")
    LuaGive("coin",-10000000,"petstar_up")
    LuaPetSet("petstar",9)
    else
    LuaSay("驯兽师：你身上的铜币不足1000万！")
    end

elseif(answer=="pet_fuck") then ----------------------------------------------------------------------------宠物交配
    if(GetDayOfWeek()==5 or GetDayOfWeek()==6  or GetDayOfWeek() ==7 )  then
    	if(LuaQueryStrTask("Tpet_fuck_Taskday")~=GetCurrentDay()) then
			LuaSetTask("Tpet_fuck",0)
			r=LuaRandom(30)-----随机数量
			LuaSetTask("pet_fuck_R",r)
			r2=LuaRandom(10)-----随机数量
			LuaSetTask("pet_fuck_R2",r2)
			LuaSetTask("Tpet_fuck_Taskday",GetCurrentDay())
		end
		--淫荡邪恶版。   
		--[[
		pet_fuck={}
		pet_fuck[0]={"看你宠物可怜的样子，仿佛在说：那儿都肿了！"}
		pet_fuck[1]={"看你宠物愉快的样子，仿佛在说：哎哟我的妈呀，太爽了！"}
		pet_fuck[2]={"看你宠物蹒跚的样子，仿佛在说：爽过头了，腿好酸，翅膀也酸死了！"}
		pet_fuck[3]={"看你宠物愉快的样子，仿佛在说：好爽啊！"}
		pet_fuck[4]={"看你宠物愉快的样子，仿佛在说：爽死我了！主人你想试试么？"}
		pet_fuck[5]={"看你宠物愉快的样子，仿佛在说：太爽了！主人来试试不？"}
		pet_fuck[6]={"看你宠物虚脱的样子，仿佛在说：爽过头了，跟我交配那只太厉害了！"}
		pet_fuck[7]={"看你宠物虚脱的样子，仿佛在说：跟我交配那只太厉害了！搞不过它！"}
		pet_fuck[8]={"看你宠物虚脱的样子，仿佛在说：主人，下次交配前你给我加个超强力量的状态！"}
		pet_fuck[9]={"看你宠物萎靡的样子，仿佛在说：主人，我肾亏了，能不能给我点药补补啊！"}
		
		pet_fuck[10]={"看你宠物可怜的样子，仿佛在说：那儿的皮都快磨破了！"}
		pet_fuck[11]={"看你宠物愉快的样子，仿佛在说：主人我很强的！有机会看看我的战斗力！"}
		pet_fuck[12]={"看你宠物蹒跚的样子，仿佛在说：交配一次，简直比杀2个boss还爽"}
		pet_fuck[13]={"看你宠物愉快的样子，仿佛在说：好爽啊！哦哦耶！"}
		pet_fuck[14]={"看你宠物愉快的样子，仿佛在说：爽死我了！今天我跟5只不同的宠物交配了！"}
		pet_fuck[15]={"看你宠物愉快的样子，仿佛在说：太爽了！今天我跟3只不同的宠物交配了！"}
		pet_fuck[16]={"看你宠物虚脱的样子，仿佛在说：爽过头了，跟我交配那只太厉害了！我们4只搞它一只比不过它！"}
		pet_fuck[17]={"看你宠物虚脱的样子，仿佛在说：跟我交配那只太厉害了！搞不过它！5只宠物都不是它对手！"}
		pet_fuck[18]={"看你宠物虚脱的样子，仿佛在说：主人，下次交配前你给我加个提升“攻击速度”的状态！"}
		pet_fuck[19]={"看你宠物萎靡的样子，仿佛在说：主人，我肾亏了，能不能给我个九级肉补补啊！"}
		
		pet_fuck[20]={"你的宠物红光满面，一副很爽的样子！"}
		pet_fuck[21]={"你的宠物眼眶凹陷了进去，一步一蹒跚，严重纵欲过度！"}
		pet_fuck[22]={"你的宠物脸很红啊！就算害羞也没那么红吧..."}
		pet_fuck[23]={"你的宠物好像进一步明白了“只要功夫深，铁棒磨成针”的深刻含义！"}
		pet_fuck[24]={"你的宠物屁股上，有些来历不明的液体！"}
		pet_fuck[25]={"你的宠物屁股上，有不少液体风干后的晶体！"}
		pet_fuck[26]={"你的宠物屁股上，有不少怪怪的东西，散发着奇怪的气味！"}
		pet_fuck[27]={"你的宠物屁股上，残留着奇怪的夜啼，散发出奇怪的气味！"}
		pet_fuck[28]={"你的宠物好像由于体内少了什么东西，体重一时间减少了！"}
		pet_fuck[29]={"你的宠物好像由于体内多了什么东西，体重一时间增加了！"}
		
		 ]]
		------高档浪漫版
		pet_fuck2={}
		pet_fuck2[0]={"笑容太甜，泪水太咸，山盟海誓到了最后难免会变。看着你的宠物与另一只宠物恩爱的样子，你不禁感慨万千！"}
		pet_fuck2[1]={"昨夜西风凋碧树,独上高楼,望尽天涯路。看着你的宠物与另一只宠物依依惜别，你不禁感慨万千！"}
		pet_fuck2[2]={"衣带渐宽终不悔，为伊消得人憔悴！或许，你的宠物目前就是这种心情！"}
		pet_fuck2[3]={"众里寻他千百度，蓦然回首，那人却在灯火阑珊处。你的宠物找到了幸福，然而只有短暂的一时！"}
		pet_fuck2[4]={"此情缠绵，此爱坚决，永生不渝！你的宠物深情的凝视着另外一只宠物，它也有爱情！"}
		pet_fuck2[5]={"知我者谓我心忧，不知我者谓我何求。知我心者，唯有点点繁星！或许，只有你才能感觉到你宠物当前的孤独！"}
		pet_fuck2[6]={"抽刀断水水更流，借酒浇愁愁更愁！你的宠物不被其他人宠物青睐，其中滋味是如何的惆怅！"}
		pet_fuck2[7]={"花开花落飞满天，红消香断有谁怜？你的宠物看起来似乎很惆怅..."}
		pet_fuck2[8]={"天长地久有时尽，此恨绵绵无绝期！你的宠物看起来很伤心"}
		pet_fuck2[9]={"相思入骨，不死不休！纵解得片刻渴思，怎还他生生情债？你的宠物看起来似乎非常思念某只宠物..."}
		
		pet_fuck2[10]={"相顾无言，惟有泪千行！你的宠物与另一只宠物诀别，它的心犹如用刀划过！"}
		pet_fuck2[11]={"死生契阔，与子成说。执子之手，与子偕老...会宠物也有爱情，会不会有一天，爱情的力量使你的宠物背叛你？"}
		pet_fuck2[12]={"问世间情为何物，直教人生死相许...，宠物也有爱情，会不会有一天，爱情的力量使你的宠物背叛你？"}
		pet_fuck2[13]={"三生七世，永堕阎罗，只为情故 虽死不悔...宠物也有爱情，会不会有一天，爱情的力量使你的宠物背叛你？"}
		pet_fuck2[14]={"相见时难别亦难，东风无力百花残！宠物有爱情，也有无奈！"}
		pet_fuck2[15]={"此情可待成追忆，只是当时已惘然！宠物有爱情，也有惘然！"}
		pet_fuck2[16]={"明月高楼休独倚，酒入愁肠，化作相思泪！宠物有爱情，也就有了思念！"}
		pet_fuck2[17]={"北方有佳人，一顾倾人城，再顾倾人国！宠物有爱情，也有它自己眼中的佳人！"}
		pet_fuck2[18]={"至情至性，劳心劳神。唯有忘情，方能不败！宠物有过爱情，也就能忘情！"}
		pet_fuck2[19]={"绝无可绝，恋无可恋！宠物有爱情，也会被爱情伤害！"}
		
		
		
		if(LuaQueryTask("Tpet_fuck") == 0 ) then
 	    LuaSay("驯兽师：你的宠物随你出生入死，如此劳苦功高，是不是该让你的宠物去相亲下，说不定它还能寻找到属于它的幸福呢？")
  	    LuaSay("驯兽师：我已经帮你做好登记了，目前你的宠物已经去找他人的宠物嬉戏了，你过@31小时@0再来找我吧！")
 	    LuaSay(""..LuaQueryStr("name").."：这个@#...能不能现场让我看宠物交配啊？！")
 	    LuaSay("驯兽师：这个...那个...这个今天天气不错嘛，哈哈！")
        LuaSetTask("pet_fuck_begin",GetCurrentTime())
        LuaSetTask("Tpet_fuck",1)
        UpdateMenu()
        elseif(LuaQueryTask("Tpet_fuck") == 1 ) then
    		if(GetCurrentTime() - LuaQueryTask("pet_fuck_begin") >=3600    )  then
    		    LuaSay("提示：宠物寻找“快乐”结束回来了！")
    		    AddMenuItem("@7操作列表","")
    		    AddMenuItem("@7再等会","Tpet_fuckjl0")
    		    AddMenuItem("@7领奖","Tpet_fuckjl2")
    --		    AddMenuItem("@7正常版","Tpet_fuckjl2")
	---			AddMenuItem("@7邪恶版（不推荐）","Tpet_fuckjl1")      -------此处内部同事反映，过于邪恶，就不开放了 
    		else
    		LuaSay("驯兽师：目前你的宠物已经跟他人的宠物找“快乐”中，还未满1小时，你过会再来找我吧！")
    		end
        elseif(LuaQueryTask("Tpet_fuck") == 99 ) then
        LuaSay("驯兽师：你的宠物今天有些纵欲过度，让它好好休息吧！")
        end
	else
	LuaSay("驯兽师：宠物会在星期五、星期六、星期日发情！你在宠物发情的时候再来找我吧！")
	end
elseif(answer=="Tpet_fuckjl0")then    -----再等会
    LuaSay("提示：宠物寻找“快乐”结束回来了！你可以领奖了！")
elseif(answer=="Tpet_fuckjl2")then    -----浪漫
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
		if(LuaQueryTask("Tpet_fuck")==1) then
		local lv_exp
		    pet_fuck_R2=LuaQueryTask("pet_fuck_R2")
    		LuaSay(""..pet_fuck2[pet_fuck_R2][1].."")
		    if(LuaQuery("level")<30) then
			lv_exp=30000
			elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			lv_exp=70000
			elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			lv_exp=150000
			elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			lv_exp=200000
			elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			lv_exp=400000
			elseif(LuaQuery("level")>=70 ) then
			lv_exp=1000000
			end
			LuaAddJx("combat_exp",lv_exp+level^2*25+level*25,"Tpet_fuck")
			LuaSetTask("Tpet_fuck",99)
			UpdateMenu()
		end
elseif(answer=="Tpet_fuckjl1")then    -------邪恶
	if(level>80)then
		level=80
	end
	local level= LuaQuery("level")
		if(LuaQueryTask("Tpet_fuck")==1) then
		local lv_exp
		    pet_fuck_R=LuaQueryTask("pet_fuck_R")
    		LuaSay(""..pet_fuck[pet_fuck_R][1].."")
		    if(LuaQuery("level")<30) then
			lv_exp=30000
			elseif(LuaQuery("level")>=30 and LuaQuery("level")<40) then
			lv_exp=70000
			elseif(LuaQuery("level")>=40 and LuaQuery("level")<50) then
			lv_exp=150000
			elseif(LuaQuery("level")>=50 and LuaQuery("level")<60) then
			lv_exp=200000
			elseif(LuaQuery("level")>=60 and LuaQuery("level")<70) then
			lv_exp=400000
			elseif(LuaQuery("level")>=70 ) then
			lv_exp=1000000
			end
			LuaAddJx("combat_exp",lv_exp+level^2*25+level*25,"Tpet_fuck")
			LuaSetTask("Tpet_fuck",99)
			UpdateMenu()
		end
	



elseif(answer=="baobao") then ---经验宝宝
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(level<20) then
	LuaSay("达到20级后,就可以到我这里领取@3经验宝宝@0,并会有@330小时@0的免费时间.")
	else
		LuaSay("第一次在我这里可以领取@330小时@0的免费时间,以后每到5的倍数级别后,都可以领取@320小时@0的免费时间,36级后就没有免费的了.")
		LuaSay("直接点击@3开启经验宝宝@0,就可以开始积累经验了.")
		AddMenuItem("@7经验宝宝","")
		if(LuaQueryTask("T778")<35) then
		AddMenuItem("领取免费时间","shijian","")
		end
		if(level>19 and (LuaQueryTask("Tjybb")==0))  then
		AddMenuItem("开启经验宝宝","open","")
		elseif(LuaQueryTask("Tjybb")==99) then
		AddMenuItem("关闭经验宝宝","close","")
		end
		AddMenuItem("购买时间","goumai","")
		AddMenuItem("@3查询剩余时间","findtime","")
		AddMenuItem("提取经验","jingyan","")
		end

  elseif(answer=="findtime") then
	if(LuaQueryTask("cz_time")>0) then
	LuaSay("提示:你的经验宝宝拥有剩余时间@3"..LuaQueryTask("cz_time").."分钟.")
	else
	LuaSay("提示:你的经验宝宝已经没有时间了,快去购买吧.")
	end

  elseif(answer=="shijian") then        --------领取经验宝宝时间 
	local level= LuaQuery("level")
	if(LuaQueryTask("T778") == 0 and level<40) then
		LuaAddTask("cz_time",1800)
		LuaSay("提示:得到了@330小时@0的免费时间.")
		if(level<25)  then
		LuaSetTask("T778",20)
		elseif(level<30)  then
		LuaSetTask("T778",25)
		elseif(level<35) then
		LuaSetTask("T778",30)
		else
		LuaSetTask("T778",35)
		end	
	else
		if(level<25)  then
		LuaSay("提示:你已经领取了30小时的免费时间.")
		elseif(level<30)  then
			if(LuaQueryTask("T778")<25) then
			LuaAddTask("cz_time",1200)
			LuaSay("提示:得到了@320小时@0的免费时间.")
			LuaSetTask("T778",25) 
			else
			LuaSay("你已经领取了这个级别段的免费时间.")
			end 
		elseif(level<35) then
			if(LuaQueryTask("T778")<30) then
			LuaAddTask("cz_time",1200)
			LuaSay("提示:得到了@320小时@0的免费时间.") 
			LuaSetTask("T778",30)
			else
			LuaSay("你已经领取了这个级别段的免费时间.")
			end 
		elseif(level<40) then
			if(LuaQueryTask("T778")<35) then
			LuaAddTask("cz_time",1200)
			LuaSay("提示:得到了@320小时@0的免费时间.")
			LuaSetTask("T778",35) 
			else
			LuaSay("你已经领取了这个级别段的免费时间.")
			end 
		else
		LuaSay("提示:40级后不再有免费时间领取,你可以购买时间.")
		end
	end
   elseif(answer=="open") then         -----------------开启经验宝宝
	if(LuaQueryTask("cz_time")>0) then
	LuaSetTask("Tjybb",99)
	LuaSay("提示:你已经成功的开启了经验宝宝.")
	LuaSetTask("Tjybbtime",GetCurrentTime())
	else
	LuaSay("你已经没有充值时间了,需要购买时间.")
	end

	 
   elseif(answer=="close" and LuaQueryTask("Tjybb")==99) then        -----------------关闭经验宝宝
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	local past_time=GetCurrentTime() - LuaQueryTask("Tjybbtime")
	if(past_time>=(LuaQueryTask("cz_time")*60)) then
		local exp=floor((35+level^2*0.125+level*17)*LuaQueryTask("cz_time"))
		LuaSay("你已经没有充值时间了,经验宝宝已经关闭,你现在可以领取"..exp.."经验.")
		LuaSetTask("Tjybb",0)
		LuaSetTask("cz_time",0)
		LuaSetTask("Tjybbtime",GetCurrentTime())
		LuaAddJx("combat_exp",exp,"Tjybb")
		UpdateMenu()
	else
		local exp=floor((35+level^2*0.125+level*17)*past_time/60 )
		show_time=LuaQueryTask("cz_time")-floor(past_time/60)
		LuaSay("你成功的关闭了经验宝宝,你现在可以领取"..exp.."经验,你的经验宝宝时间还有@3"..show_time.."分钟.")
		LuaSetTask("Tjybb",0)
		LuaAddJx("combat_exp",exp,"Tjybb")
		LuaSetTask("Tjybbtime",GetCurrentTime())
		LuaAddTask("cz_time",-floor(past_time/60))
		UpdateMenu()
	end

  elseif(answer=="goumai") then
	LuaSay("提示:需要商城的@8银票@0,10个@8银票@0可以换取@350小时@0的时间.")--100yb10
	LuaSay("提示:20个@8银票@0可以换取@3100小时@0的时间.你准备购买多少时间？")--200by20
	AddMenuItem("@7购买时间选择","")
	AddMenuItem("@350小时","50h","")
	AddMenuItem("@3100小时","100h","")


   elseif(answer=="jingyan") then         -----------------提取经验宝宝的经验
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(LuaQueryTask("Tjybb")==0) then
	LuaSay("你还没有开启经验宝宝呢,开启经验宝宝后,才会开始积累经验.")
	else
		past_time=GetCurrentTime()-LuaQueryTask("Tjybbtime")
		if(past_time>=(LuaQueryTask("cz_time")*60)) then
			local exp=floor((35+level^2*0.125+level*17)*LuaQueryTask("cz_time"))
			LuaSay("你已经没有充值时间了,你现在可以领取"..exp.."经验,要领取吗？")
			AddMenuItem("@7是否领取","")
			AddMenuItem("领取","lingqu")
			AddMenuItem("不领取","bulingqu")
		else
			local exp=floor((35+level^2*0.125+level*17)*past_time/60 )
			LuaSay("你现在可以领取"..exp.."经验,要领取吗？")
			AddMenuItem("@7是否领取","")
			AddMenuItem("领取","lingqu")
			AddMenuItem("不领取","bulingqu")
		end	
	end        		
  elseif(answer=="lingqu" and LuaQueryTask("Tjybb")==99) then
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	LuaSetTask("Tjybb",0)
	past_time=GetCurrentTime()-LuaQueryTask("Tjybbtime")
	if(past_time>=(LuaQueryTask("cz_time")*60)) then
	local exp=floor((35+level^2*0.125+level*17)*LuaQueryTask("cz_time"))
	LuaAddJx("combat_exp",exp,"Tjybb")
	LuaSetTask("cz_time",0)
	else
	LuaAddJx("combat_exp",floor((35+level^2*0.125+level*17)*past_time/60),"Tjybb")
	LuaAddTask("cz_time",-floor(past_time/60))
	end
        LuaSay("提示:你需要重新开启经验宝宝,才可开始积累经验")
  elseif(answer=="bulingqu") then
	LuaSay("你可以在任何时候来提取经验")
  elseif(answer=="50h") then
	local a=LuaItemStatusNormalCount("o_gold2j")
	local b=LuaItemStatusNormalCount("o_gold2y")
		if(a+b>=10) then
			if(b>=10) then
			DelItem("o_gold2y",10)
			else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",10-b)
			end
			LuaLogRecord("经验宝宝","o_gold2y","元宝","消耗",100)--记成一种可也，有必要的话再分开
			LuaAddTask("cz_time",3000)
			LuaSay("提示:你成功换取了@350小时@0的经验宝宝时间.")
			if(LuaRandom(3)==0) then
			LuaSay("提示:你人品真是太好了,得到一个@3幸运宝盒@0,快快使用吧,惊喜等着你.")
			LuaGive("o_box002",1,"Tjybb")
			end
		else
		LuaSay("提示:必须用@310个@8银票@0才能换取50小时的时间.")
		end
 elseif(answer=="100h") then
		local a=LuaItemStatusNormalCount("o_gold2j")
		local b=LuaItemStatusNormalCount("o_gold2y")
		if(a+b>=20) then        --优先删除元宝道具
			if(b>=20)then
			DelItem("o_gold2y",20)
			else
			DelItem("o_gold2y",b)
			DelItem("o_gold2j",20-b)
			end
			LuaLogRecord("经验宝宝","o_gold2y","元宝","消耗",200)--记成一种就可以了，有必要的话再分开
			LuaAddTask("cz_time",6000)
			LuaSay("提示:你成功换取了@3100小时@0的经验宝宝时间.")
			if(LuaRandom(2)==0) then
			LuaSay("提示:你人品真是太好了,得到一个@3幸运宝盒@0,快快使用吧,惊喜等着你.")
			LuaGive("o_box002",1,"Tjybb")
			end
		else
		LuaSay("提示:必须用@320个@8银票@0才能换取100小时的时间.")
		end
elseif(answer=="Tcoc")then---------------------商贾向背2 Tcoc===3
	if(LuaQueryTask("Tcoc")==3)then
		LuaSay("驯兽师:呵呵,你说我一个搞畜牧业的,怎么能入商贾之流呢,你说是吧.")
		LuaSetTask("T955",4)
		AddLog("商贾向背【每日】",955)
		LuaSetTask("Tcoc",4)
		if(LuaQuery("level")>=25)then
			LuaGive("coin",700,"Tcoc")
		else
			LuaGive("coin",400,"Tcoc")
			LuaGive("o_drug_hp4",2,"Tcoc")
		end
	end
	UpdateMenu()


-------------------------------------------------宠物任务------------------------------------------------------------------------
------------------------神奇的咒语--------
elseif(answer=="T101")then
	if(LuaQueryStrTask("T101_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T101",0)
		LuaSetTask("T101_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("T101") == 0) then
	LuaSay("驯兽师：一位叫猪仙的神仙托梦给我，念完两条咒语，将会变出@2宠物食品@0，每天一回！后来我念了那两条咒语，结果真的变出来了！")
	LuaSay(""..LuaQueryStr("name").."：竟然有此事！可否...那个...嘿嘿，告知于在下？")
	LuaSay("驯兽师：听好了！第一句：@5赐予我宠物食品@0。提示你一下，可以在公聊或者本地聊频道说这句话，不带标点！就7个字！")
	LuaSetTask("T101",1)
	AddLog("神奇的咒语【每日】",101)
	UpdateMenu()
	elseif(LuaQueryTask("T101") == 1) then
	    if(LuaQueryTempStr("last_channel_msg")=="赐予我宠物食品")   then      --获取该玩家在聊天频道最后一次发的话
	    LuaSay("驯兽师：第二句：@5嘛咪嘛咪哄@0。提示你一下，可以在公聊或者本地聊频道说这句话，不带标点！就5个字！")
	    LuaSetTask("T101",2)
	    UpdateMenu()
	    else
        LuaSay("驯兽师：我再复述一遍：@5赐予我宠物食品@0。提示你一下，可以在公聊或者本地聊频道说这句话，不带标点！就7个字！")
        end
    elseif(LuaQueryTask("T101") == 2) then
        if(LuaQueryTempStr("last_channel_msg")=="嘛咪嘛咪哄")   then
	    LuaSay("驯兽师：你两句都念对了，你看，@2宠物食品@0变出来了！")
	    	if(LuaFreeBag()>=2)then
        		AddMenuItem("@7任务完成","")
			AddMenuItem("领取奖励","T101jl")
		else
	    		LuaSay("提示：请至少保留2格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    	end
	    else
        LuaSay("驯兽师：我再复述一遍：@5嘛咪嘛咪哄@0。提示你一下，可以在公聊或者本地聊频道说这句话，不带标点！就5个字！")
        end
    elseif(LuaQueryTask("T101") == 99) then
    	LuaSay("驯兽师：你今天的任务已经完成。明天再来找我吧！")
    end
elseif(answer=="T101jl")then
		if(LuaQueryTask("T101")==2) then
		LuaGive("o_food01",15)
			local r=LuaRandom(72)
   			if(r>=52 and r<72)  then
			LuaSay("驯兽师：你今天人品爆发，获得了额外奖励！")
			LuaGive("o_food01",10,"T101")
			elseif(r>45 and r<52)  then
			LuaSay("驯兽师：你今天人品大爆发，获得了额外奖励！")
			LuaGive("o_food02",5,"T101")
			elseif(r==0)  then
			LuaSay("驯兽师：你今天人品剧烈爆发，获得了额外奖励！")
			LuaGive("o_food03",3,"T101")
			LuaNotice(""..LuaQueryStr("name").."今天人品剧烈爆发，完成宠物任务【神奇的咒语】！获得宠物食品【精】！")
			end
		DelLog("101")
		LuaSetTask("T101",99)
		UpdateMenu()
		end
		
	 -----宠物托管-------------------------------------------------------------------
	 
elseif(answer=="T102")then
local level= LuaQuery("level")
if(level>=30)then
	if(LuaQueryTask("T102") == 0) then
	LuaSay("驯兽师：领取此任务后，不论在线还是下线，我都可以帮你托管宠物！满足托管时间就能领取宠物金丹或宠物食品！")
	LuaSay("@1提示@0：领奖时，请至少保留3格以上的包裹空间，否则可能会造成发放的奖励丢失！")
	AddMenuItem("@7选择列表","","")                           --不同的时间段挂机，消费不同，奖励也不同，消费YB的比消费铜币的略高 
    AddMenuItem("@3铜币托管","TB","")
	AddMenuItem("@3道具托管（更多奖励）","DJ","")
	UpdateMenu()

    elseif(LuaQueryTask("T102") == 1) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 1800)     then    --计算时间差
        LuaSay("驯兽师：拿去吧，这是给你的宠物金丹！")
        LuaGive("o_food04",1,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
        	if(floor(30-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) >= 1)     then
      		LuaSay("驯兽师：时间还没到，还差@5"..floor(30-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."分钟@0！")      --告诉玩家剩余多少时间
       		UpdateTopSay("等时间到了再来找我吧")
       		else
       		LuaSay("驯兽师：时间还没到，还差@5"..floor(1800-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."秒@0！")      --告诉玩家剩余多少时间
       		UpdateTopSay("等时间到了再来找我吧")
       		end
        end
    elseif(LuaQueryTask("T102") == 2) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 3600*8)     then
        LuaSay("驯兽师：拿去吧，这是给你的宠物金丹！")
        LuaGive("o_food04",9,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
        	if(floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ) >= 1)     then
      		LuaSay("驯兽师：时间还没到，还差@5"..floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ).."小时@0！")
        	UpdateTopSay("等时间到了再来找我吧")
        	else
				if(floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) >= 1)     then
        		LuaSay("驯兽师：时间还没到，还差@5"..floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."分钟@0！")
        		UpdateTopSay("等时间到了再来找我吧")
        		else
        		LuaSay("驯兽师：时间还没到，还差@5"..floor(3600*8-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."秒@0！")      --告诉玩家剩余多少时间
       			UpdateTopSay("等时间到了再来找我吧")
       			end 
        	end
        end
    elseif(LuaQueryTask("T102") == 3) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 1800)     then
        LuaSay("驯兽师：拿去吧，这是给你的宠物金丹！")
        LuaGive("o_food04",3,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
      		if(floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) > 1)     then
        	LuaSay("驯兽师：时间还没到，还差@5"..floor(60*8-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."分钟@0！")
        	UpdateTopSay("等时间到了再来找我吧")
        	else
        	LuaSay("驯兽师：时间还没到，还差@5"..floor(3600*8-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."秒@0！")      --告诉玩家剩余多少时间
       		UpdateTopSay("等时间到了再来找我吧")
       		end
        end
    elseif(LuaQueryTask("T102") == 4) then
        if(GetCurrentTime() - LuaQueryTask("begin_time") >= 3600*8)     then
        LuaSay("驯兽师：拿去吧，这是给你的宠物金丹！")
        LuaGive("o_food04",20,"T102")
        LuaGive("o_food04",5,"T102")
        LuaSetTask("T102",0)
        DelLog("102")
        UpdateMenu()
        else
      		if(floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ) >= 1)     then
      		LuaSay("驯兽师：时间还没到，还差@5"..floor(8-(GetCurrentTime() - LuaQueryTask("begin_time"))/3600 ).."小时@0！")
        	UpdateTopSay("等时间到了再来找我吧")
        	else
				if(floor(60-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ) >= 1)     then
        		LuaSay("驯兽师：时间还没到，还差@5"..floor(60-(GetCurrentTime() - LuaQueryTask("begin_time"))/60 ).."分钟@0！")
        		UpdateTopSay("等时间到了再来找我吧")
        		else
        		LuaSay("驯兽师：时间还没到，还差@5"..floor(3600-(GetCurrentTime() - LuaQueryTask("begin_time")) ).."秒@0！")      --告诉玩家剩余多少时间
       			UpdateTopSay("等时间到了再来找我吧")
       			end 
        	end
        end
	end
	
else
    LuaSay("驯兽师：宠物托管任务要到30级才能接取！")
end
        
elseif(answer=="TB")then                                  -------铜币托管
    LuaSay("驯兽师：选项1需要消耗@51000铜币@0！选项2需要消耗@55000铜币@0！")
    AddMenuItem("@7铜币托管列表","","")
    AddMenuItem("@3托管30分钟","30FZ11","")
	AddMenuItem("@3托管8小时","8H11","")
	UpdateMenu()
	elseif(answer=="30FZ11")then                         ----------铜币短时间托管
    	AddMenuItem("@7铜币托管30分钟","","")
		AddMenuItem("@3托管","30FZ1","")
		AddMenuItem("@3不托管","30FZ1NO","")
   	    UpdateMenu()
   	    elseif(answer=="30FZ1NO")then
   	    LuaSay("驯兽师：想要托管宠物了可再来找我！")
    elseif(answer=="8H11")then                            ----------铜币长时间托管
    	AddMenuItem("@7道具托管8小时","","")
		AddMenuItem("@3托管","8H1","")
		AddMenuItem("@3不托管","8H1NO","")
   	    UpdateMenu()
   	    elseif(answer=="8H1NO")then
   	    LuaSay("驯兽师：想要托管宠物了可再来找我！")
elseif(answer=="DJ")then                              -------道具托管
    LuaSay("驯兽师：选项1需要消耗@51个银票@0！选项2需要消耗@55个银票@0！")
    AddMenuItem("@7道具托管列表","","")
	AddMenuItem("@3托管30分钟","30FZ22","")
	AddMenuItem("@3托管8小时","8H22","")
    UpdateMenu()
	elseif(answer=="30FZ22")then                         ----------道具短时间托管
    	AddMenuItem("@7道具托管30分钟","","")
		AddMenuItem("@3托管","30FZ2","")
		AddMenuItem("@3不托管","30FZ2NO","")
   	    UpdateMenu()
   	    elseif(answer=="30FZ2NO")then
   	    LuaSay("驯兽师：想要托管宠物了可再来找我！")
    elseif(answer=="8H22")then                            ----------道具长时间托管
    	AddMenuItem("@7道具托管8小时","","")
		AddMenuItem("@3托管","8H2","")
		AddMenuItem("@3不托管","8H2NO","")
   	    UpdateMenu()
   	    elseif(answer=="8H2NO")then
   	    LuaSay("驯兽师：想要托管宠物了可再来找我！")
   	    
elseif(answer=="30FZ1")then
    if(LuaItemCount("coin")>=1000) then
    LuaSay("驯兽师：既然如此，@530分钟后@0再来找我吧！")
    LuaGive("coin",-1000,"T102")
    LuaSetTask("begin_time",GetCurrentTime())              --别用begin_time = GetCurrentTime()一旦玩家下线，就会失效，要用LuaSet，即使下线也不会失效 
  	LuaSetTask("T102",1)
  	AddLog("宠物托管",102)
  	UpdateMenu()
    else
    LuaSay("驯兽师：你身上的铜币不足1000，至少携带1000铜币再来找我！")
    end
elseif(answer=="8H1")then
    if(LuaItemCount("coin")>=5000) then
    LuaSay("驯兽师：既然如此，@58小时候后@0再来找我吧！")
    LuaGive("coin",-5000,"T102")
    LuaSetTask("begin_time",GetCurrentTime())
  	LuaSetTask("T102",2)
  	AddLog("宠物托管",102)
  	UpdateMenu()
    else
    LuaSay("驯兽师：你身上的铜币不足5000，至少携带5000铜币再来找我！")
    end
elseif(answer=="30FZ2")then
    if(LuaItemStatusNormalCount("o_gold2y")>=1) then
    LuaSay("驯兽师：既然如此，@530分钟后@0再来找我吧！")
    DelItem("o_gold2y",1)
    LuaSetTask("begin_time",GetCurrentTime())
  	LuaSetTask("T102",3)
	AddLog("宠物托管",102)
	UpdateMenu()
    else
    LuaSay("驯兽师：你身上的@9银票@0不足1个，至少携带1个以上再来找我！")
    end
elseif(answer=="8H2")then
    if(LuaItemStatusNormalCount("o_gold2y")>=5) then
    LuaSay("驯兽师：既然如此，@58小时后@0再来找我吧！")
    DelItem("o_gold2y",5)
    LuaSetTask("begin_time",GetCurrentTime())
  	LuaSetTask("T102",4)
	AddLog("宠物托管",102)
	UpdateMenu()
    else
    LuaSay("驯兽师：你身上的@8银票@0不足5个，至少携带5个以上再来找我！")
    end
		  
	-----------------------宠物金丹-----------------------------------        
		
elseif(answer=="T103")then
	if(LuaQueryStrTask("T103_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T103",0)
		LuaSetTask("T103_Taskday",GetCurrentDay())
	end
	if(LuaQueryTask("T103") == 0) then
		LuaSay("驯兽师：若想炼制宠物金丹，必须有药材才行！第一步，你去@4桃源径@0那里采集3个@3草药@0交给我！")
		LuaSetTask("T103",1)
		AddLog("宠物金丹【每日】",103)
		UpdateMenu()
		UpdateTopSay("去桃源径那里采集3个草药后再来找我")
    elseif(LuaQueryTask("T103") == 1) then
        if(LuaItemCount("o_mission371")>=3) then
		    LuaSay("驯兽师：第二步，收集@310个金创散和10个回春露@3，可以去@3药店商人@0那里买！")
		    LuaSetTask("T103",2)
		    DelItem("o_mission371",3)
			UpdateMenu()
			UpdateTopSay("收集10个金创散和回春露，可以去药店商人那里买")
        else
            LuaSay("驯兽师：你是不是偷懒了，没去@4桃源径@0采集到3个@3草药@0！")
            UpdateTopSay("去桃源径那里采集3个草药后再来找我")
        end
    elseif(LuaQueryTask("T103") == 2) then
         if(LuaItemStatusNormalCount("o_drug_hp1")>=10 and LuaItemStatusNormalCount("o_drug_mp1")>=10) then
		    LuaSay("驯兽师：第三步，开始炼丹了，需要炼丹炉才行，我这里有，@31000铜币@0租给你一次，童叟无欺！")
		    LuaSay(""..LuaQueryStr("name").."：你不欺小孩和老人，自然欺我们年轻人了...")
		    if(LuaFreeBag()>=2)then
		    AddMenuItem("@7选择列表","","")
        	AddMenuItem("@3给1000铜币","YES3","")
	   		AddMenuItem("@3不给","NO3","")
	   		else
	    	LuaSay("提示：请至少保留2格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    	end
		else
		    LuaSay("驯兽师：你身上的@3金创散或者回春露@0不足10个！")
            UpdateTopSay("收集10个金创散和回春露，可以去药店商人那里买，然后再来找我")
		end
    elseif(LuaQueryTask("T103") == 99) then
    	LuaSay("驯兽师：明天再来找我吧！")
    end 
elseif(answer=="YES3") then
	if(LuaQueryTask("T103") == 2) then
 		 if(LuaItemCount("coin")>=1000) then
 		    LuaGive("coin",-1000,"T103")
 		    LuaSay("驯兽师：开始炼丹喽！")
 		    DelItem("o_drug_hp1",10)
 		    DelItem("o_drug_mp1",10)
		    LuaSay("像切白菜一样切碎草药！")
		    LuaSay("把碎草药丢进炼丹炉，把金创药和回春露也丢进去！")
		    LuaSay("闷紧盖子，丢进火中！")
		    LuaSay("烤了许久，火熄灭了。")
			LuaGive("o_food04",5,"T103")
			DelLog("103")
			LuaSetTask("T103",99)
			UpdateMenu()
    	  else
       		 LuaSay("驯兽师：你身上的铜币不足@31000@0！")
        	 UpdateTopSay("凑集1000铜币再来找我吧")
		 end
	 end
elseif(answer=="NO3") then
	if(LuaQueryTask("T103") == 2) then
        LuaSay("驯兽师：区区小钱也出不起，你太不厚道了！")
    end

	                  --------------------------无齿之猴-----------------------------
					   
elseif(answer=="T104")then
	if(LuaQueryStrTask("T104_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T104",0)
		LuaSetTask("T104_Taskday",GetCurrentDay())
		LuaSetTask("jl_beishu",1)           --------今天的奖励倍数
		LuaSetTask("shuaxin_TB",500)        --------此次刷新消耗的铜币
		LuaSetTask("shuaxin_YB",1)          --------此次刷新消耗的YB道具数量
		LuaSetTask("times",0)               --------今天完成该任务的次数
		LuaSetTask("shuaxin_CD_begin",0)    --------今天的铜币刷新CD归0 
	end    
    if(LuaQueryTask("T104") == 0) then
		LuaSay(""..LuaQueryStr("name").."：为什么你丢给猴子的花生米，它都要塞在屁股里，然后再拿出来吃？")
		LuaSay("驯兽师：我猴子的牙齿都掉光了，去年我买了个大桃子给它吃，结果它吞下后，桃子核太大，吃了不少苦头才拉出来！")
		LuaSay("驯兽师：从此之后，它每次吃东西，都要放进屁股里量一下才吃。快去@4桃源径@0那里找@3冉闵@0弄些花生米来吧！")
		LuaSay("@1提示@0：本任务必须当天完成，未在当天完成的再下一次接任务时自动重置！")
		LuaSetTask("T104",1)
		AddLog("无齿之猴【重复】",104)
		UpdateMenu()
		UpdateTopSay("去冉闵那里弄包花生米来")
    elseif(LuaQueryTask("T104") == 1) then
        if(LuaItemCount("o_mission372")>=1) then		    
		    LuaSay("驯兽师：你今天可以获得@5"..LuaQueryTask("jl_beishu").."倍@0奖励，是刷新还是领取？每天完成10次有额外奖励！")
		    if(LuaFreeBag()>=3)then	
			AddMenuItem("@7刷新列表","")
			AddMenuItem("@3查看奖励倍数","LOOK")
			AddMenuItem("@3铜币刷新","TBYES4")
			AddMenuItem("@3道具刷新","DJYES4")			
			AddMenuItem("@3不刷新了，领奖励","NO4")
			else
	    	LuaSay("提示：请至少保留3格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    	end
        else
        	LuaSay("驯兽师：去@3冉闵@0那里弄包花生米来，在下必定重谢！@3冉闵@0就在@4桃源径@0,每天完成10次有额外奖励！")
        	LuaSay("驯兽师：你可以提前刷新奖励倍数，今天奖励倍数@5"..LuaQueryTask("jl_beishu").."倍@0，每天完成10次有额外奖励！")
        	if(LuaFreeBag()>=3)then	
			AddMenuItem("@7刷新列表","")
			AddMenuItem("@3查看奖励倍数","LOOK")
			AddMenuItem("@3铜币刷新","TBYES4")
			AddMenuItem("@3道具刷新","DJYES4")			
            UpdateTopSay("去冉闵那里弄包花生米来")
            else
	    	LuaSay("提示：请至少保留3格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    	end
		end
    elseif(LuaQueryTask("T104") == 99) then
    	LuaSay("驯兽师：明天再来找我吧！")
    end
elseif(answer=="TBYES4")then           ---------铜币刷新（有时间间隔） 
	local a = LuaQueryTask("shuaxin_TB")         ---------获取shuaxin_TB的值给a 
	if(LuaQueryTask("jl_beishu") == 7) then                   -----------最高倍数的保护，免得玩家点错
	LuaSay("驯兽师：最高倍数为@57倍@0!你就别刷了，刷了吃亏！")
	elseif(LuaItemCount("coin")>= a and LuaQueryTask("jl_beishu") < 7 and (GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin") >=1800) ) then           ----多出一个判断铜币刷新CD
		LuaGive("coin",-1*a,"T104")
    
		local r = LuaRandom(100)                        --------随机刷新倍数
		if(r >=0 and r <35)  then
		LuaSetTask("jl_beishu",1)
		elseif(r >= 35 and r< 65)  then
		LuaSetTask("jl_beishu",2)
		elseif(r >= 65 and r< 80)  then
		LuaSetTask("jl_beishu",3)
		elseif(r>=80 and r < 90)   then
		LuaSetTask("jl_beishu",4)
		elseif(r >= 90 and r < 95) then
		LuaSetTask("jl_beishu",5)
		elseif(r >= 95 and r<99) then
		LuaSetTask("jl_beishu",6)
		elseif(r == 99)  then
		LuaSetTask("jl_beishu",7)
		end

        LuaSay("驯兽师：你今天的奖励倍数更新为@5"..LuaQueryTask("jl_beishu").."倍@0!下一次铜币刷新需要消耗@5"..(a+500).."铜币@0！")
        LuaSetTask("shuaxin_CD_begin",GetCurrentTime())

		if(a >= 0 and a < 5000) then
		LuaSetTask("shuaxin_TB",a+500)
		else
 		LuaSay("驯兽师：适可而止吧，你已经刷得够多了！")        ----------上限TB
		end
	elseif(LuaItemCount("coin")< a ) then
	    LuaSay("驯兽师：你身上的铜币不够！下一次刷新需要消耗@5"..a.."铜币@0！")
	    UpdateTopSay("你身上的铜币不够！")
	elseif(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin") <1800) then
		LuaSay("驯兽师：铜币刷新时间间隔未到，你还得再等@5"..floor(30-(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin"))/60 ).."分钟@0！")
	    UpdateTopSay("你过会再来吧！")
	end
elseif(answer=="DJYES4")then           --------道具刷新（无时间间隔） 
	local b = LuaQueryTask("shuaxin_YB")         ---------获取shuaxin_YB的值给b 
	if(LuaQueryTask("jl_beishu") == 7) then                   -----------最高倍数的保护，免得玩家点错
	LuaSay("驯兽师：最高倍数为@57倍@0!你就别刷了，刷了吃亏！")
	elseif(LuaItemStatusNormalCount("o_gold1y") >= b and LuaQueryTask("jl_beishu") < 7) then
		DelItem("o_gold1y",b )
    
		local r = LuaRandom(100)                        --------随机刷新倍数
		if(r >=0 and r <35)  then
		LuaSetTask("jl_beishu",1)
		elseif(r >= 35 and r< 65)  then
		LuaSetTask("jl_beishu",2)
		elseif(r >= 65 and r< 80)  then
		LuaSetTask("jl_beishu",3)
		elseif(r>=80 and r < 90)   then
		LuaSetTask("jl_beishu",4)
		elseif(r >= 90 and r < 95) then
		LuaSetTask("jl_beishu",5)
		elseif(r >= 95 and r<99) then
		LuaSetTask("jl_beishu",6)
		elseif(r == 99)  then
		LuaSetTask("jl_beishu",7)
		end

        LuaSay("驯兽师：你今天的奖励倍数更新为@5"..LuaQueryTask("jl_beishu").."倍@0!下一次道具刷新需要消耗@5"..(b+1).."@0个@9通宝@0！")
		if(b >= 1 and b <999999)    then
		LuaSetTask("shuaxin_YB",b+1)
		elseif(b == 999999)      then
 		LuaSay("驯兽师：适可而止吧，你已经刷得够多了！")        ----------上限YB
		end          
	elseif(LuaItemStatusNormalCount("o_gold1y") < b) then
	    LuaSay("驯兽师：你身上@9通宝@0不够！下一次刷新需要消耗@5"..b.."@0个@9通宝@0！")
	    UpdateTopSay("你身上的通宝不够！")
	end
elseif(answer=="LOOK")then
	local a = LuaQueryTask("shuaxin_TB")
	local b = LuaQueryTask("shuaxin_YB")
	LuaSay("驯兽师：你今天可以获得@5"..LuaQueryTask("jl_beishu").."倍@0奖励，每天完成10次有额外奖励！")
	LuaSay("驯兽师：下一次铜币刷新需要消耗@5"..a.."铜币@0！")
	LuaSay("驯兽师：下一次道具刷新需要消耗@5"..b.."@0个@9通宝@0！")
	if(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin") >=1800) then
	LuaSay("驯兽师：你目前可以用铜币刷新一次！")
	else
	LuaSay("驯兽师：铜币刷新时间间隔未到，你还得再等@5"..floor(30-(GetCurrentTime() - LuaQueryTask("shuaxin_CD_begin"))/60 ).."分钟@0！")
	end 
elseif(answer=="NO4")then
	if(LuaItemCount("o_mission372")>=1) then
		LuaSay("驯兽师：多谢少侠！我的宠物猴子有口福了！")
   	 	DelItem("o_mission372",1)
		LuaGive("o_food02",2*LuaQueryTask("jl_beishu"))
		LuaGive("o_food02",1*LuaQueryTask("jl_beishu"))
		local t= LuaQueryTask("times") +1                     --------每完成一次，次数+1
		if(t>=10)    then
		LuaSay("驯兽师：你今天已经完成了@510次@0，不能在做了，不然我的猴子就吃撑死了！这是给你的额外奖励！")
		LuaGive("o_food03",2*LuaQueryTask("jl_beishu"))
		LuaNotice(""..LuaQueryStr("name").."完成了10次无齿之猴任务，获得额外奖励！")
		DelLog("104")
		LuaSetTask("T104",99)
		LuaSetTask("times",t)
		UpdateMenu()
		else
 		LuaSetTask("times",t)
 		LuaSay("驯兽师：你今天已经完成了@5"..t.."次@0，还能完成@5"..(10-t).."次！@0")               -----------提示已经完成了几次，和没完成的次数
 		LuaSay("驯兽师：猴子还没吃够，劳烦你再去@4桃源径的冉闵@0那里弄包花生米来送我，在下必定重谢！")
 		LuaSetTask("T104",1)
 		UpdateMenu()
 		end
 	else
 		LuaSay("驯兽师：你身上没有相关任务道具！")
 	end
 	
 	----------------------祭拜阿猛--------------------------------- 
		
		
elseif(answer=="T105")then
	if(LuaQueryStrTask("T105_Taskday")~=GetCurrentDay()) then
		LuaSetTask("T105",0)
		LuaSetTask("T105_Taskday",GetCurrentDay())
	end
    if(LuaQueryTask("T105") == 0) then
		LuaSay("驯兽师：我曾经养过一只藏獒，叫阿猛。有一天出去办事，路遇两个强盗，多亏阿猛拼死相救，咬伤了强盗。")
		LuaSay("驯兽师：结果强盗负伤退去，阿猛身中数刀，失血过多而死，它以一己之死，换我性命，终生难忘。")
		LuaSay("驯兽师：我把阿猛埋在了@4建康城东郊@0，每天要烧三炷香给阿猛，劳烦少侠帮我去@4桃源村@0里@3老村长@0那里弄@3三炷香@0来。")
		LuaSay("@1提示@0：本任务必须当天完成，未在当天完成的再下一次接任务时自动重置！")
		LuaSetTask("T105",1)
		AddLog("祭拜阿猛【每日】",105)
		UpdateMenu()
		UpdateTopSay("去桃源村老村长那里弄三炷香来")
    elseif(LuaQueryTask("T105") == 1) then
        if(LuaItemCount("o_mission373")>=1) then
            LuaSay("驯兽师：多谢少侠！在下因为有事在身，抽不了身去祭拜阿猛，还得劳烦少侠走一趟！")
            LuaSay("驯兽师：阿猛的埋葬之处就在@4建康城东郊@0！")
            LuaSay("@1提示@0：本任务必须当天完成，未在当天完成的再下一次接任务时自动重置！")
            LuaSetTask("T105",2)
			UpdateMenu()
            UpdateTopSay("阿猛的埋葬之处就在建康城东郊")
  	    else
            LuaSay("驯兽师：去@3老村长@0那里弄三炷香来！他就在@4桃源村@0")
            LuaSay("@1提示@0：本任务必须当天完成，未在当天完成的再下一次接任务时自动重置！")
            UpdateTopSay("去驯兽师那里弄三炷香来")
		end
    elseif(LuaQueryTask("T105") == 2) then
        LuaSay("驯兽师：阿猛的埋葬之处就在@4建康城东郊@0！少侠帮我去祭拜下吧！")
        LuaSay("@1提示@0：本任务必须当天完成，未在当天完成的再下一次接任务时自动重置！")
        UpdateTopSay("阿猛的埋葬之处就在建康城东郊")
    elseif(LuaQueryTask("T105") == 3) then
        LuaSay("驯兽师：有劳少侠了，若有时间，我一定亲自去祭拜阿猛！")
        if(LuaFreeBag()>=3)then	
  		AddMenuItem("@7任务完成","")
		AddMenuItem("@3领取奖励","T105jl")
		AddMenuItem("@3领取2倍奖励","T105jl2")
		AddMenuItem("@3领取3倍奖励","T105jl3")
		AddMenuItem("@3领取5倍奖励","T105jl4")
		AddMenuItem("@3领取7倍奖励","T105jl5")
		else
	    LuaSay("提示：请至少保留3格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
	    end
    elseif(LuaQueryTask("T105") == 99) then
    	LuaSay("驯兽师：明天再来找我吧！")
    end
elseif(answer=="T105jl")then
		if(LuaQueryTask("T105")==3) then
		LuaGive("o_food03",3)
		LuaGive("o_food02",3)
		DelLog("105")
		LuaSetTask("T105",99)
		UpdateMenu()
		end
elseif(answer=="T105jl2")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=1) then
			DelItem("o_gold2y",1)
			LuaGive("o_food03",6)
			LuaGive("o_food02",6)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("驯兽师：需要1个@8银票@0")
			end
		end
elseif(answer=="T105jl3")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=2) then
			DelItem("o_gold2y",2)
			LuaGive("o_food03",9)
			LuaGive("o_food02",9)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("驯兽师：需要2个@8银票@0")
			end
		end
elseif(answer=="T105jl4")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=3) then
			DelItem("o_gold2y",3)
			LuaGive("o_food03",15)
			LuaGive("o_food02",15)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("驯兽师：需要3个@8银票@0")
			end
		end
elseif(answer=="T105jl5")then
		if(LuaQueryTask("T105")==3) then
			if(LuaItemStatusNormalCount("o_gold2y")>=4) then
			DelItem("o_gold2y",4)
			LuaGive("o_food03",21)
			LuaGive("o_food02",21)
			DelLog("105")
			LuaSetTask("T105",99)
			UpdateMenu()
			else
			LuaSay("驯兽师：需要4个@8银票@0")
			end
		end 


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>贴身伙伴
elseif(answer=="T362")then
	if(LuaQueryTask("T362")==1)then
		LuaSay(""..LuaQueryStr("name").."：受五斗山的天师教徒所托，来向大师您打探如何驯服宠物")
		LuaSay("驯兽师：心者，合其一也，这就是诀窍")
		LuaSay("驯兽师：宠物可以在任务、活动中得到，在商城中也能买到。")
		LuaSay("驯兽师：装备上宠物之后你的能力将会得到加成，具体得看宠物的资质与你的培育精心程度。")
		LuaSay("驯兽师：一只优秀的宠物是战斗中不可缺少的伙伴，在我这里你可以进行对@1生命、攻击、防御@0的提升。")
		LuaSay("驯兽师：我就告诉你这么多了，驯服是一项技术也是一项艺术。")
		AddLog("贴身伙伴【剧情】",362)
		LuaSetTask("T362",2)
		UpdateMenu()
		AddMenuItem("@7传送至五斗山天师教徒","")
		AddMenuItem("确认传送至五斗山天师教徒","Tcs_tsjt")
	elseif(LuaQueryTask("T362")==2)then
		LuaSay("驯兽师：去回复@2五斗山@0的@3天师教徒@0")
		AddMenuItem("@7传送至五斗山天师教徒","")
		AddMenuItem("确认传送至五斗山天师教徒","Tcs_tsjt")
	end
elseif(answer=="Tcs_tsjt")then
	ChangeMap("lu_wds",422,304)


elseif(answer=="hsxg") then
	AddMenuItem("@7坐骑相关","")
	AddMenuItem("@3坐骑属性说明","Thssm")
	AddMenuItem("@3坐骑使用说明","Tsysm")
	AddMenuItem("@3限时体验坐骑兑换坐骑蛋","Thzqd")
	AddMenuItem("@3购买坐骑蛋","Tbyzqd")
	if(LuaQueryTask("Tfhzqd")==0)  then
		AddMenuItem("@3孵化坐骑蛋","Tfhzqd")
	end
	if(LuaQueryTask("Tfhzqd")==1)  then
		AddMenuItem("@2领取孵化坐骑","Tfhzqd")
	end
 	AddMenuItem("@3坐骑强化","Tzqsj")
------------------------------------坐骑使用说明
elseif(answer=="Tsysm") then
	if(LuaQueryStr("MobieType") ~= "S20")then
		LuaSay("使用说明：点击@2菜单，再点击背包键@0@5打开背包@0，找到你要使用的坐骑，点击菜单@2再点装备键@0@5使用@0就能装备到玩家身上了。")
		LuaSay("乘骑说明：点击@2背包键@0，找到@2坐骑图标@0，点击它，再点击快捷键栏中任意一个快捷键小格，就能将其快捷键设置成功了，点击该快捷键就可以乘骑坐骑了。")
		LuaSay("@3御剑飞行@0：只要升级@2生活技能@0中的@3御剑飞行@0技能，自己@2设置好快捷键@0，点击对应快捷键就能使用御剑飞行技能了哦@!。")
	else
		LuaSay("使用说明：@2确定键+3键@0@5打开背包@0，找到你要使用的坐骑，@2确定键+1键@0@5使用@0就能装备到玩家身上了。")
		LuaSay("乘骑说明：按@29号键@0@4切换快捷栏@0，找到@28键@0，若@28键有默认技能图标@0，按下@28键@0就能乘骑坐骑了。")
		LuaSay("@3御剑飞行@0：只要升级@2生活技能@0中的@3御剑飞行@0技能，自己@2设置好快捷键@0，按对应快捷键就能使用御剑飞行技能了哦@!。")
	end
------------------------------------坐骑属性说明
elseif(answer=="Thssm") then
	LuaSay("坐骑共有@38种@0：@2云海@0，@2奔雷@0，@2灰影@0，@2赤炎@0，@2紫电@0，@2流云@0，@2雪羽@0，@2御风@0.")
	LuaSay("每种坐骑都有@2【+0】至【+8】@0@79个级别@0，级别越高，附加人物属性就越好，各种坐骑附加人物属性是不相同的。")
	LuaSay("值得注意的是：永久坐骑中，所有坐骑都是@3使用绑定@0，@2在没装备前可以赠送。摆摊@0，但是装备后就不能赠送、摆摊了")

------------------------------------坐骑强化
elseif(answer=="Tzqsj") then	
	AddMenuItem("@7坐骑种类","")
	if(LuaItemCount("e_horse010")>=1 or LuaItemCount("e_horse011")>=1 or LuaItemCount("e_horse012")>=1 or  LuaItemCount("e_horse013")>=1 or  LuaItemCount("e_horse014")>=1 or LuaItemCount("e_horse015")>=1 or  LuaItemCount("e_horse016")>=1 or  LuaItemCount("e_horse017")>=1 or  LuaItemCount("e_horse018")>=1) then
		AddMenuItem("@3云海强化","1")
	end
	if(LuaItemCount("e_horse020")>=1 or LuaItemCount("e_horse021")>=1 or LuaItemCount("e_horse022")>=1 or  LuaItemCount("e_horse023")>=1 or  LuaItemCount("e_horse024")>=1 or LuaItemCount("e_horse025")>=1 or  LuaItemCount("e_horse026")>=1 or  LuaItemCount("e_horse027")>=1 or  LuaItemCount("e_horse028")>=1) then
		AddMenuItem("@3奔雷强化","2")
	end
	if(LuaItemCount("e_horse030")>=1 or LuaItemCount("e_horse031")>=1 or LuaItemCount("e_horse032")>=1 or  LuaItemCount("e_horse033")>=1 or  LuaItemCount("e_horse034")>=1 or LuaItemCount("e_horse035")>=1 or  LuaItemCount("e_horse036")>=1 or  LuaItemCount("e_horse037")>=1 or  LuaItemCount("e_horse038")>=1) then
		AddMenuItem("@3灰影强化","3")
	end
	if(LuaItemCount("e_horse040")>=1 or LuaItemCount("e_horse041")>=1 or LuaItemCount("e_horse042")>=1 or  LuaItemCount("e_horse043")>=1 or  LuaItemCount("e_horse044")>=1  or LuaItemCount("e_horse045")>=1 or  LuaItemCount("e_horse046")>=1 or  LuaItemCount("e_horse047")>=1 or  LuaItemCount("e_horse048")>=1) then
		AddMenuItem("@3赤炎强化","4")
	end
	if(LuaItemCount("e_horse050")>=1 or LuaItemCount("e_horse051")>=1 or LuaItemCount("e_horse052")>=1 or  LuaItemCount("e_horse053")>=1 or  LuaItemCount("e_horse054")>=1  or LuaItemCount("e_horse055")>=1 or  LuaItemCount("e_horse056")>=1 or  LuaItemCount("e_horse057")>=1 or  LuaItemCount("e_horse058")>=1) then
		AddMenuItem("@3紫电强化","5")
	end
	if(LuaItemCount("e_horse060")>=1 or LuaItemCount("e_horse061")>=1 or LuaItemCount("e_horse062")>=1 or  LuaItemCount("e_horse063")>=1 or  LuaItemCount("e_horse064")>=1  or LuaItemCount("e_horse065")>=1 or  LuaItemCount("e_horse066")>=1 or  LuaItemCount("e_horse067")>=1 or  LuaItemCount("e_horse068")>=1) then
		AddMenuItem("@3流云强化","6")
	end
	if(LuaItemCount("e_horse070")>=1 or LuaItemCount("e_horse071")>=1 or LuaItemCount("e_horse072")>=1 or  LuaItemCount("e_horse073")>=1 or  LuaItemCount("e_horse074")>=1  or LuaItemCount("e_horse075")>=1 or  LuaItemCount("e_horse076")>=1 or  LuaItemCount("e_horse077")>=1 or  LuaItemCount("e_horse078")>=1) then
		AddMenuItem("@3雪羽强化","7")
	end
	if(LuaItemCount("e_horse080")>=1 or LuaItemCount("e_horse081")>=1 or LuaItemCount("e_horse082")>=1 or  LuaItemCount("e_horse083")>=1 or  LuaItemCount("e_horse084")>=1  or LuaItemCount("e_horse085")>=1 or  LuaItemCount("e_horse086")>=1 or  LuaItemCount("e_horse087")>=1 or  LuaItemCount("e_horse088")>=1) then
		AddMenuItem("@3御风强化","8")
	end
	if(LuaItemCount("e_horse010")<1 and LuaItemCount("e_horse011")<1 and LuaItemCount("e_horse012")<1 and  LuaItemCount("e_horse013")<1 and  LuaItemCount("e_horse014")<1 and LuaItemCount("e_horse015")<1 and  LuaItemCount("e_horse016")<1 and  LuaItemCount("e_horse017")<1 and  LuaItemCount("e_horse018")<1 and
		LuaItemCount("e_horse020")<1 and LuaItemCount("e_horse021")<1 and LuaItemCount("e_horse022")<1 and  LuaItemCount("e_horse023")<1 and  LuaItemCount("e_horse024")<1 and LuaItemCount("e_horse025")<1 and  LuaItemCount("e_horse026")<1 and  LuaItemCount("e_horse027")<1 and  LuaItemCount("e_horse028")<1 and
		LuaItemCount("e_horse030")<1 and LuaItemCount("e_horse031")<1 and LuaItemCount("e_horse032")<1 and  LuaItemCount("e_horse033")<1 and  LuaItemCount("e_horse034")<1 and LuaItemCount("e_horse035")<1 and  LuaItemCount("e_horse036")<1 and  LuaItemCount("e_horse037")<1 and  LuaItemCount("e_horse038")<1 and
		LuaItemCount("e_horse040")<1 and LuaItemCount("e_horse041")<1 and LuaItemCount("e_horse042")<1 and  LuaItemCount("e_horse043")<1 and  LuaItemCount("e_horse044")<1  and LuaItemCount("e_horse045")<1 and  LuaItemCount("e_horse046")<1 and  LuaItemCount("e_horse047")<1 and  LuaItemCount("e_horse048")<1 and
		LuaItemCount("e_horse050")<1 and LuaItemCount("e_horse051")<1 and LuaItemCount("e_horse052")<1 and  LuaItemCount("e_horse053")<1 and  LuaItemCount("e_horse054")<1  and LuaItemCount("e_horse055")<1 and  LuaItemCount("e_horse056")<1 and  LuaItemCount("e_horse057")<1 and  LuaItemCount("e_horse058")<1 and
		LuaItemCount("e_horse060")<1 and LuaItemCount("e_horse061")<1 and LuaItemCount("e_horse062")<1 and  LuaItemCount("e_horse063")<1 and  LuaItemCount("e_horse064")<1  and LuaItemCount("e_horse065")<1 and  LuaItemCount("e_horse066")<1 and  LuaItemCount("e_horse067")<1 and  LuaItemCount("e_horse068")<1 and
		LuaItemCount("e_horse070")<1 and LuaItemCount("e_horse071")<1 and LuaItemCount("e_horse072")<1 and  LuaItemCount("e_horse073")<1 and  LuaItemCount("e_horse074")<1  and LuaItemCount("e_horse075")<1 and  LuaItemCount("e_horse076")<1 and  LuaItemCount("e_horse077")<1 and  LuaItemCount("e_horse078")<1 and
		LuaItemCount("e_horse080")<1 and LuaItemCount("e_horse081")<1 and LuaItemCount("e_horse082")<1 and  LuaItemCount("e_horse083")<1 and  LuaItemCount("e_horse084")<1  and LuaItemCount("e_horse085")<1 and  LuaItemCount("e_horse086")<1 and  LuaItemCount("e_horse087")<1 and  LuaItemCount("e_horse088")<1 and LuaItemCount("e_horse000")<=1) then
		LuaSay("驯兽师：你还@3没有获得坐骑@0或者@3此种坐骑不能升级@0。")
	end
elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4" or answer=="5" or answer=="6" or answer=="7" or answer=="8") then
	n=answer+0--------坐骑种类

	AddMenuItem("@7强化类型","")
	if(LuaItemCount("e_horse0"..n..0)>=1) then
		AddMenuItem("@3【+0】强化至【+1】",answer..1)
	end
	if(LuaItemCount("e_horse0"..n..1)>=1) then
		AddMenuItem("@3【+1】强化至【+2】",answer..2)
	end
	if(LuaItemCount("e_horse0"..n..2)>=1) then
		AddMenuItem("@3【+2】强化至【+3】",answer..3)
	end
	if(LuaItemCount("e_horse0"..n..3)>=1) then
		AddMenuItem("@3【+3】强化至【+4】",answer..4)
	end
	if(LuaItemCount("e_horse0"..n..4)>=1) then
		AddMenuItem("@3【+4】强化至【+5】",answer..5)
	end
	if(LuaItemCount("e_horse0"..n..5)>=1) then
		AddMenuItem("@3【+5】强化至【+6】",answer..6)
	end
	if(LuaItemCount("e_horse0"..n..6)>=1) then
		AddMenuItem("@3【+6】强化至【+7】",answer..7)
	end
	if(LuaItemCount("e_horse0"..n..7)>=1) then
		AddMenuItem("@3【+7】强化至【+8】",answer..8)
	end
	if(LuaItemCount("e_horse0"..n..8)>=1) then
		AddMenuItem("@3【+8】强化至【+9】",answer..9)
	end
elseif(answer=="11" or answer=="21" or answer=="31" or answer=="41" or answer=="51" or answer=="61" or answer=="71" or answer=="81"
	    or answer=="12" or answer=="22" or answer=="32" or answer=="42" or answer=="52" or answer=="62" or answer=="72" or answer=="82"
	    or answer=="13" or answer=="23" or answer=="33" or answer=="43" or answer=="53" or answer=="63" or answer=="73" or answer=="83"
	    or answer=="14" or answer=="24" or answer=="34" or answer=="44" or answer=="54" or answer=="64" or answer=="74" or answer=="84"
	    or answer=="15" or answer=="25" or answer=="35" or answer=="45" or answer=="55" or answer=="65" or answer=="75" or answer=="85"
	    or answer=="16" or answer=="26" or answer=="36" or answer=="46" or answer=="56" or answer=="66" or answer=="76" or answer=="86"
	    or answer=="17" or answer=="27" or answer=="37" or answer=="47" or answer=="57" or answer=="67" or answer=="77" or answer=="87"
	    or answer=="18" or answer=="28" or answer=="38" or answer=="48" or answer=="58" or answer=="68" or answer=="78" or answer=="88"
	    or answer=="19" or answer=="29" or answer=="39" or answer=="49" or answer=="59" or answer=="69" or answer=="79" or answer=="89")then

	t=answer+0
	LuaSetTemp("zqzl",floor(t/10))	--坐骑种类
	LuaSetTemp("zqjj",t-LuaQueryTemp("zqzl")*10)	--强化到+几坐骑
	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	--LuaSay("t的值为："..t.."")
	--LuaSay("zqjj的值为："..zqjj.."")
	--LuaSay("zqzl的值为："..zqzl.."")
	AddMenuItem("@7强化细则","")
	AddMenuItem("@3强化材料所需说明","sjsm")
	AddMenuItem("@3下一级坐骑属性","zqsx")
	if(zqjj<=2) then
		AddMenuItem("@3强化","glv10")
	elseif(zqjj>=3) then
		AddMenuItem("@3强化成功率选择","sj")
	end

elseif(answer=="zqsx") then

	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	if(zqzl<=5) then
		if(zqzl==1 or zqzl==2 or zqzl==5) then
			LuaSay("驯兽师："..tS[zqzl][2].."【+"..zqjj.."】属性@0：@7速度@0:@2+"..tCost3[zqjj][1].."%@0  @7血上限@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0")
		elseif(zqzl==3 or zqzl==4) then
			if(zqjj==1) then
				LuaSay("驯兽师："..tS[zqzl][2].."【+"..zqjj.."】属性@0：@7速度@0:@2+"..tCost3[zqjj][1].."%@0  @7血上限@0:@2+"..tCost3[zqjj][3].."@0")
			else
				LuaSay("驯兽师："..tS[zqzl][2].."【+"..zqjj.."】属性@0：@7速度@0:@2+"..tCost3[zqjj][1].."%@0  @7血上限@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][5].."@0")
			end
		end
	elseif(zqzl>5) then
		if(zqjj<=3) then
			LuaSay("驯兽师："..tS[zqzl][2].."【+"..zqjj.."】属性@0：@7速度@0:@2+"..tCost3[zqjj][2].."%@0  @7血上限@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0")
		elseif(zqjj>3) then
			if(zqzl==6)then
				LuaSay("驯兽师："..tS[zqzl][2].."【+"..zqjj.."】属性@0：@7速度@0:@2+"..tCost3[zqjj][2].."%@0  @7血上限@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0  @7"..tS[zqzl][4].."@0:@2+"..tCost3[zqjj][7].."@0")
			elseif(zqzl==7 or zqzl==8) then
				LuaSay("驯兽师："..tS[zqzl][2].."【+"..zqjj.."】属性@0：@7速度@0:@2+"..tCost3[zqjj][2].."%@0  @7血上限@0:@2+"..tCost3[zqjj][3].."@0  @7"..tS[zqzl][3].."@0:@2+"..tCost3[zqjj][4].."@0  @7"..tS[zqzl][4].."@0:@2+"..tCost3[zqjj][6].."@0")
			end
		end
	end
	AddMenuItem("@7是否返回上级菜单","")
	AddMenuItem("@3返回","YES")
	AddMenuItem("@3不返回","NO")

elseif(answer=="sjsm")then
	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	--LuaSay("t的值为："..t.."")
	--LuaSay("zqjj的值为："..zqjj.."")
	--LuaSay("zqzl的值为："..zqzl.."")
	if(zqjj<=2) then
		LuaSay("驯兽师：@3【+"..(zqjj-1).."】强化至【+"..zqjj.."】@0需要"..tCost2[zqjj][1]..""..tCost2[zqjj][5].."个@0；")
	elseif(zqjj>2) then
		LuaSay("驯兽师：@3【+"..(zqjj-1).."】强化至【+"..zqjj.."】@0可以有两种选择，一种是@3概率强化成功@0（成功率不详），一种是@3100%强化成功@0。")
		if(zqjj<=5) then
			LuaSay("驯兽师：@3概率强化@0需要："..tCost1[zqjj][1]..""..tCost1[zqjj][5].."个；")
		else
			LuaSay("驯兽师：@3概率强化@0需要："..tCost1[zqjj][1]..""..tCost1[zqjj][5].."个@0和"..tCost1[zqjj][2]..""..tCost1[zqjj][6].."个@0；")
		end
		LuaSay("驯兽师：@3100%强化成功@0需要："..tCost2[zqjj][1]..""..tCost2[zqjj][5].."个@0和"..tCost2[zqjj][2]..""..tCost2[zqjj][6].."个@0；")		
	end
	AddMenuItem("@7是否返回上级菜单","")
	AddMenuItem("@3返回","YES")
	AddMenuItem("@3不返回","NO")

elseif(answer=="YES")then
	DoTalk(t)

elseif(answer=="sj") then
	AddMenuItem("@7强化成功率","")
	AddMenuItem("@3概率强化成功","glv3")
	AddMenuItem("@3100%强化成功","glv10")

elseif(answer=="glv3")then
	

	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	if(EquipInfo(7)=="")then
		if( LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )<1 ) then
			LuaSay("驯兽师：缺少"..tS[zqzl][2].."【+"..(zqjj-1).."】一个@0，强化失败！")
		elseif(zqjj<=5) then
			if(LuaItemStatusNormalCount( tCost1[zqjj][3] )<tCost1[zqjj][5]) then
				LuaSay("驯兽师：@3材料不足@0，强化失败！")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost1[zqjj][3] )>=tCost1[zqjj][5]) then
				local r=LuaRandom(100)
				if(r<=35) then
					LuaSay("驯兽师：恭喜你，强化成功！")
					DelItem("e_horse0"..zqzl..(zqjj-1),1)
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
					LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
				else
					LuaSay("驯兽师：哎，人品真差，这么高的概率都会失败！")
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
				end
			end
		elseif(zqjj>=6) then
			if(LuaItemStatusNormalCount( tCost1[zqjj][3] )<tCost1[zqjj][5] or LuaItemStatusNormalCount( tCost1[zqjj][4] )<tCost1[zqjj][6] ) then
				LuaSay("驯兽师：@3材料不足@0，强化失败！")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost1[zqjj][3] )>=tCost1[zqjj][5] and LuaItemStatusNormalCount( tCost1[zqjj][4] )>=tCost1[zqjj][6]) then
				local r=LuaRandom(100)
				if(r<=25) then
					LuaSay("驯兽师：恭喜你，强化成功！")
					DelItem("e_horse0"..zqzl..(zqjj-1),1)
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
					DelItem(tCost1[zqjj][4],tCost1[zqjj][6])
					LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
				else
					LuaSay("驯兽师：哎，人品真差，这么高的概率都会失败！")
					DelItem(tCost1[zqjj][3],tCost1[zqjj][5])
					DelItem(tCost1[zqjj][4],tCost1[zqjj][6])
				end
			end
		end
	else
		LuaSay("驯兽师：请将装备栏里坐骑位的坐骑卸载才能强化坐骑。")
	end
	
	
elseif(answer=="glv10")then
	local zqzl=LuaQueryTemp("zqzl")
	local zqjj=LuaQueryTemp("zqjj")
	if(EquipInfo(7)=="")then
		if( LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )<1 ) then
			LuaSay("驯兽师：缺少"..tS[zqzl][2].."【+"..(zqjj-1).."】一个@0，强化失败！")
		elseif(zqjj<=2) then
			if(LuaItemStatusNormalCount( tCost2[zqjj][3] )<tCost2[zqjj][5]) then
				LuaSay("驯兽师：@3材料不足@0，强化失败！")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost2[zqjj][3] )>=tCost2[zqjj][5]) then
				LuaSay("驯兽师：恭喜你，强化成功！")
				DelItem("e_horse0"..zqzl..(zqjj-1),1)
				DelItem(tCost2[zqjj][3],tCost2[zqjj][5])
				LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
			end	
		elseif(zqjj>=3) then
			if(LuaItemStatusNormalCount( tCost2[zqjj][3] )<tCost2[zqjj][5] or LuaItemStatusNormalCount( tCost2[zqjj][4] )<tCost2[zqjj][6] ) then
				LuaSay("驯兽师：@3材料不足@0，强化失败！")
			elseif(LuaItemCount( "e_horse0"..zqzl..(zqjj-1) )>=1 and  LuaItemStatusNormalCount( tCost2[zqjj][3] )>=tCost2[zqjj][5] and LuaItemStatusNormalCount( tCost2[zqjj][4] )>=tCost2[zqjj][6]) then
				LuaSay("驯兽师：恭喜你，强化成功！")
				DelItem("e_horse0"..zqzl..(zqjj-1),1)
				DelItem(tCost2[zqjj][3],tCost2[zqjj][5])
				DelItem(tCost2[zqjj][4],tCost2[zqjj][6])
				LuaGive("e_horse0"..zqzl..zqjj,1,"Tzqsj")
			end	
		end
	else
		LuaSay("驯兽师：请将装备栏里坐骑位的坐骑卸载才能强化坐骑。")
	end


elseif(answer=="Tfhzqd") then
	if(LuaQueryTask("Tfhzqd")==0) then
		if(LuaItemCount("o_mission415")>=1) then
			LuaSay("驯兽师：孵化坐骑需要@22小时@0，你把@3坐骑蛋@0给我，@22小时后@0再来领取孵化出的坐骑吧。")
			DelItem("o_mission415",1)
			time=GetCurrentTime()
			LuaSetTask("fhzqd_time",time)
			LuaSetTask("Tfhzqd",1)
			UpdateNPCMenu("xunshoushi")
		else
			LuaSay("驯兽师：你还没有@3坐骑蛋@0，是否@2返回上级菜单@0重新选择！")
			AddMenuItem("@7是否返回","")
			AddMenuItem("@3返回@0","YES_tz")
			AddMenuItem("不返回","NO")
			UpdateMenu()
		end
	elseif(LuaQueryTask("Tfhzqd")==1) then		
		local shijiancha=(GetCurrentTime() - LuaQueryTask("fhzqd_time"))-----孵化是否两小时
		-----LuaSay("孵化时间："..shijiancha..",")
		if(shijiancha>=7200) then
			if(LuaFreeBag()>=1)then
				local tzqlb={
					{"云海"},
					{"奔雷"},
					{"灰影"},
					{"赤炎"},
					{"紫电"},
					}
				local sh={
					{"恭喜！成功孵化坐骑！"},
					{"我就说嘛，我孵化的坐骑绝对与众不同！"},
					{"哎，小家伙太调皮了，快拿走，强化后一定是个强悍坐骑！"},
					{"它是我见过最温顺的坐骑，强化后绝对百依百顺！"},
					{"还没长大就这么漂亮了，强化后岂不更好看！"},
					{"终于有一只牛B的坐骑了！"},
					{"哇呀呀，老夫终于爆发一回了，孵出个好坐骑，我就说嘛，我长相没问题的！"},
					}
				local n=LuaRandom(100)------获得总几率
				local r=LuaRandom(5)+1 ------前5种地上坐骑
				--------90/100 地上坐骑  5/100 流云  4/100 雪羽  1/100 御风
				if(n<90) then--- 地上坐骑   50 30 10  (50/90)/5 -->+0  (30/90)/5 -->+1 (30/90)/5 -->+2
					m=LuaRandom(5)+1-------说话几率 1 2 3 4 5
					LuaSay("驯兽师："..sh[m][1].."")
					if(n<50) then
						LuaGive("e_horse0"..r..0,1,"Tfhzqd")  -----地上+0
					elseif(n<80) then
						LuaGive("e_horse0"..r..1,1,"Tfhzqd")  -----地上+1
					elseif(n<90) then
						LuaGive("e_horse0"..r..2,1,"Tfhzqd")  -----地上+2
						LuaNotice("恭喜玩家@3"..LuaQueryStr("name").."@0人品大爆发，在@3驯兽师@0处@3孵化坐骑蛋@0获得@3"..tzqlb[r][1].."【+2】@0坐骑！")
					end
				elseif(n<95) then ------流云  
					LuaSay("驯兽师："..sh[6][1].."")
					a=LuaRandom(100) --(5/100)*(60/100)-->+0  (5/100)*(30/100)-->+1  (5/100)*(10/100)-->+2   
					if(a<60) then
						LuaGive("e_horse060",1,"Tfhzqd")  -----流云+0
					elseif(a<90) then
						LuaGive("e_horse061",1,"Tfhzqd")  -----流云+1
					elseif(a<99) then
						LuaGive("e_horse062",1,"Tfhzqd")  -----流云+2
						LuaNotice("恭喜玩家@3"..LuaQueryStr("name").."@0人品大爆发，在@3驯兽师@0处@3孵化坐骑蛋@0获得@3流云【+2】@0坐骑！")
					end
				elseif(n<99) then ------雪羽  
					LuaSay("驯兽师："..sh[6][1].."")
					b=LuaRandom(100) --(4/100)*(60/100)-->+0  (4/100)*(30/100)-->+1  (4/100)*(10/100)-->+2
					if(b<60) then
						LuaGive("e_horse070",1,"Tfhzqd")  -----雪羽+0
					elseif(b<90) then
						LuaGive("e_horse071",1,"Tfhzqd")  -----雪羽+1
					elseif(b<99) then
						LuaGive("e_horse072",1,"Tfhzqd")  -----雪羽+2
						LuaNotice("恭喜玩家@3"..LuaQueryStr("name").."@0人品大爆发，在@3驯兽师@0处@3孵化坐骑蛋@0获得@3雪羽【+2】@0坐骑！")
					end
				elseif(n<100) then ------御风  
					LuaSay("驯兽师："..sh[7][1].."")
					c=LuaRandom(100) --(1/100)*(60/100)-->+0  (1/100)*(30/100)-->+1  (1/100)*(10/100)-->+2
					if(c<60) then
						LuaGive("e_horse080",1,"Tfhzqd")  -----御风+0
						LuaNotice("恭喜玩家@3"..LuaQueryStr("name").."@0人品大爆发，在@3驯兽师@0处@3孵化坐骑蛋@0获得@3御风【+0】@0坐骑！")
					elseif(c<90) then
						LuaGive("e_horse081",1,"Tfhzqd")  -----御风+1
						LuaNotice("恭喜玩家@3"..LuaQueryStr("name").."@0人品大爆发，在@3驯兽师@0处@3孵化坐骑蛋@0获得@3御风【+1】@0坐骑！")
					elseif(c<99) then
						LuaGive("e_horse082",1,"Tfhzqd")  -----御风+2
						LuaNotice("恭喜玩家@3"..LuaQueryStr("name").."@0人品大爆发，在@3驯兽师@0处@3孵化坐骑蛋@0获得@3御风【+2】@0坐骑！")
					end
				end
				LuaDelTask("Tfhzqd")-------删除数据（仅处理非临时数据） 
				UpdateNPCMenu("xunshoushi")
			else
				LuaSay("驯兽师：你的背包已经@4满了@0，清理下背包再来吧。")
			end
		else
			local h=floor(shijiancha/3600)
			local q=floor((shijiancha-h*3600)/60)
			local s=shijiancha-h*3600-q*60
			LuaSay("驯兽师：孵化坐骑是要耐心的，孵化@2才过了"..h.."小时"..q.."分钟"..s.."秒@0，等满@22小时@0再来吧，现在拿出来只会浪费了一颗蛋！")
		end
	end

elseif(answer=="Tbyzqd") then
	local a=LuaQueryTask("by_cs")+1 ------购买第几个坐骑蛋 1 2 3 4 5  
	local b=a*3000-------需要铜币 3000 2*3000 3*3000
	local c=a+14-------------需要等级  15 16 17 18
	LuaSay("驯兽师：你是不是对你现在拥有的坐骑不满意？")
	LuaSay("驯兽师：不要紧，我这提供最优质的@3坐骑蛋@0，拥有@3坐骑蛋@0后来我这里@4孵化@0，就有可能获得你梦寐以求的@3坐骑@0")
	LuaSay("@3购买条件@0：你现在是第@2"..a.."@0次购买坐骑蛋，需要铜币@2"..b.."@0，人物等级@2"..c.."级@0。")
	if(LuaQuery("level")>=c) then
		AddMenuItem("@7是否购买","")
		AddMenuItem("@3买@0","YES_by")
		AddMenuItem("不买","NO_by")
	else
		LuaSay("驯兽师：需要人物等级@2"..c.."级@0才能购买第@2"..a.."@0个坐骑蛋，赶快升级吧！")
	end
elseif(answer=="YES_by") then
	local a=LuaQueryTask("by_cs")+1 ------购买第几个坐骑蛋 1 2 3 4 5  
	local b=a*3000-------需要铜币 3000 2*3000 3*3000
	if(LuaItemCount("coin")>=b) then
		if(LuaFreeBag()>=1)then
			LuaSay("驯兽师：恭喜你获得一个@3坐骑蛋@0.")
			LuaGive("coin",-b,"Tbyzqd")
			LuaGive("o_mission415",1)
			LuaAddTask("by_cs",1)
			if(LuaQueryTask("Tfhzqd")==0) then
				AddMenuItem("@7是否现在孵化","")
				AddMenuItem("@3孵化@0","yes_fh")
				AddMenuItem("我现在很忙，有空再来","no_fh")
			else
				LuaSay("驯兽师：你已经@3孵化@0着一个@3坐骑蛋@0了，有空再来我这孵化吧！")
			end
		else
			LuaSay("驯兽师：你的背包已经@4满了@0，清理下背包再来吧。")
		end
			
	else
		LuaSay("驯兽师：你的钱还不够，赶快攒钱吧！")
	end

elseif(answer=="yes_fh") then
	DoTalk("Tfhzqd")
	 UpdateNPCMenu("xunshoushi")


elseif(answer=="Thzqd") then
	if(LuaItemCount("e_horse013t")>=1 or LuaItemCount("e_horse023t")>=1 or LuaItemCount("e_horse033t")>=1 or LuaItemCount("e_horse043t")>=1 or LuaItemCount("e_horse053t")>=1 or LuaItemCount("e_horse063t")>=1 or LuaItemCount("e_horse073t")>=1 or LuaItemCount("e_horse083t")>=1) then
		LuaSay("驯兽师：作为@3田伍长@0的好友，我实在不知道说什么好，他这样热心肠，迟早会被人拉下水，哎！")
		LuaSay("驯兽师：还好英雄是位重情重义之人，我这就用@3坐骑蛋@0和你换取@3限时体验坐骑@0")
		if(EquipInfo(7)=="")then
			if(LuaFreeBag()>=1) then
				LuaSay("驯兽师：这就是@3坐骑蛋@0，拿好,有空的时候来我这里@4孵化@0吧。")
				for i=1,8,1 do
					DelItem("e_horse0"..i.."3t",LuaItemCount("e_horse0"..i.."3t"))
				end
				LuaGive("o_mission415",1)
				if(LuaQueryTask("Tfhzqd")==0) then
					AddMenuItem("@7是否现在孵化","")
					AddMenuItem("@3孵化@0","yes_fh")
					AddMenuItem("我现在很忙，有空再来","no_fh")
				else
					LuaSay("驯兽师：你已经@3孵化@0着一个@3坐骑蛋@0了，有空再来我这孵化吧！")
				end
			else
				LuaSay("驯兽师：你的背包已经@4满了@0，清理下背包再来吧。")
			end
		else
			LuaSay("驯兽师：请将装备栏里坐骑位的坐骑卸载才能兑换坐骑蛋。")
		end
	else 
		LuaSay("驯兽师：你没有@3限时体验坐骑@0，不能兑换，是否@2返回上级菜单@0重新选择。")
		AddMenuItem("@7是否返回","")
		AddMenuItem("@3返回@0","YES_tz")
		AddMenuItem("不返回","NO")
		UpdateMenu()
	end

elseif(answer=="YES_tz") then
	DoTalk("hsxg")
	 UpdateNPCMenu("xunshoushi")



--半壁江山
elseif(answer=="T385")then
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_11")==1)then
					LuaSay("驯兽师：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_11",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_11")==2)then
					LuaSay("驯兽师：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_11",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("驯兽师：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("驯兽师：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end


elseif(answer=="Tsnpc_16")then
	if(LuaQueryTask("Tsnpc_16")==1)then
		LuaSay(""..LuaQueryStr("name").."：我们大人一早给你写的加急信件，大师您过目一下")
		LuaSay("驯兽师：好真是好久没见过你们打大人了啊，替我向他问好。")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_16",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_16")==2)then
		LuaSay("驯兽师：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_16")then
	if(LuaQueryTask("Tenpc_16")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主英明，信件容易丢失，让我带话给你说最近急需一批军马")
		LuaSay("驯兽师：随后几天就给他送过来，让他放心")
		LuaSetTask("Tenpc_16",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_16")==2)then
		LuaSay("驯兽师：回去找你家主子领赏吧")
	end




end
LuaSendMenu()
return 1
end
-------------------------------------SelfDefineFunctions--------------------------------
function SelfDefLevel2Exp(level)--每级经验--这块不常用,不用数组了吧
	local level= LuaQuery("level")
	if(level>80)then
		level=80
	end
	if(level<=1)then	return 0
	else	return 18*level^3+9*level^2+25*level+SelfDefLevel2Exp(level-1)-100
	end
end
------------------------------------------------------

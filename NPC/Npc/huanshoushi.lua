NPCINFO = {
serial= "108" ,
base_name="huanshoushi",
icon= 2530,
NpcMove=2530,
name= "法宝使者" , 
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" , 
lastsay="集天地之精华，取大地之灵气",
LuaType=1,                            
}
local pet={	
		{"e_pet01","@7元珠灵","1","@7蚩尤神鹅","e_pet13","绿","e_pet01y","o_material_22",1,"3级皮",200000},--4皮
		{"e_pet02","@7奇云灵","1","@7祝融异灵","e_pet14","绿","e_pet02y","o_material_58",1,"3级晶",200000},--4晶
		{"e_pet03","@7幻仙灵","1","@7轩辕灵犬","e_pet15","绿","e_pet03y","o_material_31",1,"3级肉",200000},--4肉
		{"e_pet04","@7勇精灵","1","@7女娲醉猫","e_pet16","绿","e_pet04y","o_material_13",1,"3级毛",200000},--4毛
		{"e_pet05","@5元珠灵","2","@5蚩尤神鹅","e_pet17","蓝","e_pet05y","o_material_24",1,"5级皮",400000},
		{"e_pet06","@5奇云灵","2","@5祝融异灵","e_pet18","蓝","e_pet06y","o_material_60",1,"5级晶",400000},
		{"e_pet07","@5幻仙灵","2","@5轩辕灵犬","e_pet19","蓝","e_pet07y","o_material_33",1,"5级肉",400000},
		{"e_pet08","@5勇精灵","2","@5女娲醉猫","e_pet20","蓝","e_pet08y","o_material_15",1,"5级毛",400000},
		{"e_pet09","@3元珠灵","3","@3蚩尤神鹅","e_pet21","金","e_pet09y","o_material_26",1,"7级皮",800000},
		{"e_pet10","@3奇云灵","3","@3祝融异灵","e_pet22","金","e_pet10y","o_material_62",1,"7级晶",800000},
		{"e_pet11","@3幻仙灵","3","@3轩辕灵犬","e_pet23","金","e_pet11y","o_material_35",1,"7级肉",800000},
		{"e_pet12","@3勇精灵","3","@3女娲醉猫","e_pet24","金","e_pet12y","o_material_17",1,"7级毛",800000},
	}
function do_talk(answer)
if(answer=="ask") then
	havetask =0
	AddTopSayMenuItem("@7任务列表","")   
	--[[AddTopSayMenuItem("@5宠物幻化","T970")
	AddTopSayMenuItem("@5宠物兑换","T972")
	AddTopSayMenuItem("@9宠物说明","T971")]]
	AddTopSayMenuItem("@5合高级法宝了","Magic")
	AddTopSayMenuItem("@5法宝炼化","pet")   
	AddTopSayMenuItem("@9法宝说明","pet_")   

	if(havetask ==2)then
		AddTopSayMenuItem("聊天","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("聊天","liaotian","1")
	else
		AddTopSayMenuItem("聊天","liaotian","0")
	end 
	return 1 
	    
elseif(answer=="liaotian") then
	LuaSay("幻兽师：集天地之精华，取大地之灵气，幻化出最厉害的幻兽")
elseif(answer=="T970")then
	local hpnum=LuaPetQuery("pet_hptime")
	local atnum=LuaPetQuery("pet_atttime")
	local denum=LuaPetQuery("pet_deftime")
	if(hpnum~=0)then
		hpnum=hpnum-1
	end
	if(atnum~=0)then
		atnum=atnum-1
	end
	if(denum~=0)then
		denum=denum-1
	end
	local Total=hpnum + atnum + denum
	local whatpet = LuaQueryTask("whatpet")
	if(GetCurrentDay()~=LuaQueryStrTask("T970day"))then
		if(LuaQueryTask("T970")~=0)then
			LuaSay("由于你前一次开始进化的距离现在已经很久了，现在重新开始进化")
		end
		LuaDelTask("T970")
		LuaDelTask("whatpet")
		LuaDelTask("Total")
		UpdateMenu()
	end
	if(LuaQueryTask("T970")==0)then
		if(EquipInfo(10)~="")then
			for i=1,12,1 do
				if(LuaItemCountNoEquipped(pet[i][1])>0 or LuaItemCountNoEquipped(pet[i][7])>0)then
					LuaSay("提示：你背包里还存在"..pet[i][2].."@0，请先将不需要幻化的宠物寄存到银行")
					LuaSetTemp("allfind",1)
					break
				end
			end
			if(LuaQueryTemp("allfind")==1)then
				LuaSetTemp("allfind",2)
				DoTalk("ask")
			else
				for i=1,12,1 do
					if(EquipInfo(10)==pet[i][2])then
						LuaSay("你的宠物是"..pet[i][2].."")
						LuaSetTask("whatpet",i)
						break
					end
				end
				if(LuaQueryTask("whatpet")==0)then
					LuaSay("提示：你的宠物已经幻化过了@!")
				else
					local food01
					local food02
					if(Total<=3)then
						food01=Total
						food02=0
					else
						food02=Total-3
						food01=3
					end
					LuaSay("已经进行过：*"..hpnum.."次HP炼化*"..atnum.."次攻击炼化*"..denum.."次防御炼化")
					LuaSay("幻化后将会得到"..pet[LuaQueryTask("whatpet")][4].."@0*"..food01.."个@5宠物食品[粗]@0*"..food02.."个@5宠物食品[优]@0")
					LuaSay("将消耗*@3"..pet[LuaQueryTask("whatpet")][10]..""..pet[LuaQueryTask("whatpet")][9].."个*铜币"..pet[LuaQueryTask("whatpet")][11].."")
					LuaSay("确认操作请取消此菜单将精灵从装备位上放到背包中再次点击此菜单开始进化")
					LuaSetTask("Total",Total)
					LuaSetTask("T970",1)
					LuaSetTask("T970day",GetCurrentDay())
					UpdateMenu()
				end
			end
			
			
		else
			LuaSay("提示：请将您需要幻化的宠物装备在身上")
		end
	elseif(LuaQueryTask("T970")==1)then
			LuaSay("提示：请再次确认你需要进化的精灵为"..pet[whatpet][2].."@0，并保证你所需要进化的宠物已经从装备位放到背包里，幻化一旦开始无法返回！")
			AddMenuItem("@5幻化确认","")
			AddMenuItem("@3开始幻化","star_Illusion")
			AddMenuItem("@3取消幻化","end_Illusion")
		
	end

elseif(answer=="end_Illusion")then
	LuaSay("幻兽师：收回我无穷的力量，取消幻化")
	LuaDelTask("T970")
	LuaDelTask("whatpet")
	LuaDelTask("Total")
	UpdateMenu()
elseif(answer=="star_Illusion")then
	local Total = LuaQueryTask("Total")
	local whatpet = LuaQueryTask("whatpet")
	local food01
	local food02
	local petnum=LuaItemCountNoEquipped(pet[whatpet][1]) + LuaItemCountNoEquipped(pet[whatpet][7])
	if(Total<=3)then
		food01=Total
		food02=0
	else
		food02=Total-3
		food01=3
	end
	if(EquipInfo(10)=="")then 
		if(petnum>0)then
			if(LuaItemStatusNormalCount(pet[whatpet][8])>=pet[whatpet][9] and LuaItemCount("coin")>=pet[whatpet][11])then 
				LuaSay("幻兽师：融天地之精华，取日月之神奇")
				if(LuaItemCountNoEquipped(pet[whatpet][1])>0)then
					DelItem(pet[whatpet][1],1)
				else
					DelItem(pet[whatpet][7],1)
				end
				DelItem(pet[whatpet][8],pet[whatpet][9])
				LuaGive("coin",-pet[whatpet][11],T970)
				LuaGive(pet[whatpet][5],1)
				if(Total<=2)then
					LuaGive("o_food01j",food01)
				else 
					LuaGive("o_food02j",food02)
					LuaGive("o_food01j",food01)
				end
				LuaSetTask("T970",0)
				LuaDelTask("whatpet")
				LuaDelTask("Total")
			else
				LuaSay("@5材料不足，当前宠物幻化需要:@0*@1材料：@0@3"..pet[whatpet][10].."@0"..pet[whatpet][9].."个*@1铜币：@0"..pet[whatpet][11].."")
			end
		else
			LuaSay("@1提示：你背包中未找到对应的宠物，请检查后重新操作")
		end
		
	else
		LuaSay("提示：将你需要幻化的宠物从装备位上取下来放在背包中")
	end
elseif(answer=="T971")then
	LuaSay("新推出宠物幻化功能，不但能跟随主人，更是有霸气的外表造型，当然它的@1基础属性@0也会上升很多")
	LuaSay("无论您的宠物当前为多少级，已经进行过多少次驯化，幻化成功后，您将得到的是一只全新外表@10级@0的新幻兽，你所炼化的属性也将消失，所以请谨慎操作！")
	LuaSay("我们会根据您驯化的次数，适当的给予一些宠物口粮，方便您再次炼化宠物等级，另外，幻化之后@5蓝色@0的宠物是可以交易的，@3金色@0的是不能交易的哦")
	LuaSay("如果你想要一直外表帅气而且拥有超凡攻击力的宠物，那就赶快进入宠物幻化阶段吧，幻化需要一定的材料来幻化，材料是幻化基本材料，")
	LuaSay("另外，新幻兽需要44版本以上，才能正常使用，如果你幻化之后看不到宠物图片，请更新你的客户端至044版本以上。")
	LuaSay("至于铜币嘛，老头子也要消费的不是，买酒，青楼。。你懂的@!")
	LuaSay("统一的勇士们，欢迎来到幻兽时代")

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
					LuaSetTemp("whatfb",1)
					break
				end

			end

 	AddMenuItem("@7法宝操作","")
	AddMenuItem("@3生命炼化","pet_hpts")
	AddMenuItem("@3攻击炼化","pet_attts")
	AddMenuItem("@3防御炼化","pet_defts")
	--------------------------------****法宝hp炼化开始****-----------------------------------



elseif(answer=="pet_hpts") then
	if(EquipInfo(10)=="")then
		LuaSay("请把你的法宝装备上@!")
	else		
	
		if(LuaQueryTemp("whatfb")==1)then
			LuaSay("你未将您的法宝装备在身上哦")
		else

			local pet_hptime=LuaPetQuery("pet_hptime")
			if(pet_hptime==0) then
				LuaPetSet("pet_hptime",1) --初始炼化次数为1
				pet_hptime=LuaPetQuery("pet_hptime")
			end
			local a=pet_hptime   -------炼化的次数
			LuaSetTemp("a",a)
			pet_hp={}
			pet_hp[1]={50,80,120,150,200,1000,"","",0,0}              ---5  每次炼化的生命（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
			pet_hp[2]={100,160,240,300,400,5000,"","",0,0}
			pet_hp[3]={150,240,360,450,600,20000,"o_material_20","1级皮",1,0}
			pet_hp[4]={200,320,480,600,800,50000,"o_material_21","2级皮",1,10}
			pet_hp[5]={250,400,600,750,1000,200000,"o_material_22","3级皮",1,50}
			pet_hp[6]={300,480,720,900,1200,500000,"o_material_23","4级皮",1,100}
			pet_hp[7]={350,560,840,1050,1400,1000000,"o_material_24","5级皮",1,150}
			pet_hp[8]={400,640,960,1200,1600,2000000,"o_material_25","6级皮",1,200}
			pet_hp[9]={450,720,1080,1350,1800,3000000,"o_material_25","5级皮",1,250}
			pet_hp[10]={500,800,1200,1500,2000,4000000,"o_material_25","6级皮",1,300}
			pet_hp[11]={550,880,1320,1650,2200,5000000,"o_material_25","6级皮",1,350}
			pet_hp[12]={600,960,1440,1800,2400,6000000,"o_material_25","6级皮",1,400}
			pet_hp[13]={650,1040,1560,1950,2600,7000000,"o_material_26","7级皮",1,450}
			pet_hp[14]={700,1120,1680,2100,2800,8000000,"o_material_26","7级皮",1,500}
			pet_hp[15]={750,1200,1800,2250,3000,9000000,"o_material_27","8级皮",1,400}

				
				
			local pet_pz=LuaPetQuery("type")   --法宝品质
			LuaSay("提示：你的法宝当前等级为@3"..LuaPetQuery("lv").."级！@0，你已经为该法宝炼化了@3"..(LuaPetQuery("pet_hptime")-1).."次生命！@0")
			LuaSay("@7本次可炼化生命至@0：@3"..pet_hp[a][pet_pz].."点")
			LuaSay("@7下次可炼化生命至@0：@3"..pet_hp[a+1][pet_pz].."点")

			if(a<=2) then
				LuaSay("@7炼化需耗费@0：@3"..(pet_hp[a][6]).."铜币")
			else
				--LuaSay("@7炼化需耗费@0：@3"..(pet_hp[a][6]).."铜币")
				LuaSay("@7炼化需耗费@0@3"..(pet_hp[a][6]).."铜币*"..pet_hp[a][9].."个"..pet_hp[a][8].."*元宝"..pet_hp[a][10].."个")
				
			end
			if(LuaPetQuery("pet_hptime")<=15)then
				AddMenuItem("@7法宝生命炼化","")
				AddMenuItem("@3确认炼化","pet_hpyes")
				AddMenuItem("@3不炼化","pet_hpno")
			else
				LuaSay("驯兽师：目前法宝生命已经达到极限，无法继续炼化属性了！敬请期待后续开放内容！")
			end
		end
	end

elseif(answer=="pet_hpyes") then
    		pet_hp={}
		pet_hp[1]={50,80,120,150,200,1000,"","",0,0}              ---5  每次炼化的生命（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_hp[2]={100,160,240,300,400,5000,"","",0,0}
		pet_hp[3]={150,240,360,450,600,20000,"o_material_20","1级皮",1,0}
		pet_hp[4]={200,320,480,600,800,50000,"o_material_21","2级皮",1,10}
		pet_hp[5]={250,400,600,750,1000,200000,"o_material_22","3级皮",1,50}
		pet_hp[6]={300,480,720,900,1200,500000,"o_material_23","4级皮",1,100}
		pet_hp[7]={350,560,840,1050,1400,1000000,"o_material_24","5级皮",1,150}
		pet_hp[8]={400,640,960,1200,1600,2000000,"o_material_25","6级皮",1,200}
		pet_hp[9]={450,720,1080,1350,1800,3000000,"o_material_25","5级皮",1,250}
		pet_hp[10]={500,800,1200,1500,2000,4000000,"o_material_25","6级皮",1,300}
		pet_hp[11]={550,880,1320,1650,2200,5000000,"o_material_25","6级皮",1,350}
		pet_hp[12]={600,960,1440,1800,2400,6000000,"o_material_25","6级皮",1,400}
		pet_hp[13]={650,1040,1560,1950,2600,7000000,"o_material_26","7级皮",1,450}
		pet_hp[14]={700,1120,1680,2100,2800,8000000,"o_material_26","7级皮",1,500}
		pet_hp[15]={750,1200,1800,2250,3000,9000000,"o_material_27","8级皮",1,400}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --法宝品质,
	if(LuaPetQuery("pet_hptime")<=LuaPetQuery("lv")/5 )  then
        	        if(a<=2) then
				if(LuaItemCount("coin")>=pet_hp[a][6]) then
					LuaGive("coin",-pet_hp[a][6],"Tpet_hp")   --Tpet_hp：法宝生命炼化
					LuaPetSet("max_hp",pet_hp[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
					LuaSay("@7炼化成功@0炼化生命至：@3"..pet_hp[a][pet_pz].."点")
				else
				LuaSay("@7炼化材料不足@0：需要@3"..(pet_hp[a][6]).."铜币")
				end
			else
				if(LuaItemCount("coin")>=pet_hp[a][6]) then
					if (LuaItemStatusNormalCount(pet_hp[a][7])<pet_hp[a][9]) then
						LuaSay("@7炼化材料不足@0需要"..pet_hp[a][9].."个"..pet_hp[a][8].."")
					else
						if (LuaQueryMoney()<pet_hp[a][10])then
	
							LuaSay("@7炼化材料不足@0需要元宝"..pet_hp[a][10].."个")
						else
							LuaGive("coin",-pet_hp[a][6],"Tpet_hp")   --Tpet_hp：法宝生命炼化
							LuaAddYB(1,-pet_hp[a][10],"Tpet_hpyb")
							DelItem(pet_hp[a][7],pet_hp[a][9])
							LuaPetSet("max_hp",pet_hp[a][pet_pz])
							LuaPetSet("pet_hptime",LuaPetQuery("pet_hptime")+1)
							FlushMyInfo("1")
							LuaSay("@7炼化成功@0炼化生命至：@3"..pet_hp[a][pet_pz].."点")
						end
					end
				else
					LuaSay("@7炼化材料不足@0：需要@3"..(pet_hp[a][6]).."铜币*"..pet_hp[a][9].."个*"..pet_hp[a][8].."元宝"..pet_hp[a][10].."个")
				end
			end
	else
	LuaSay("驯兽师：法宝每多升5级就能多炼化1次属性等级，你快去给法宝喂食，炼化法宝等级吧！")
	end

elseif(answer=="pet_hpno") then
    		pet_hp={}
		pet_hp[1]={50,80,120,150,200,1000,"","",0,0}              ---5  每次炼化的生命（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，消费YB道具，名字，数量
		pet_hp[2]={100,160,240,300,400,5000,"","",0,0}
		pet_hp[3]={150,240,360,450,600,20000,"o_material_20","1级皮",1,0}
		pet_hp[4]={200,320,480,600,800,50000,"o_material_21","2级皮",1,10}
		pet_hp[5]={250,400,600,750,1000,200000,"o_material_22","3级皮",1,50}
		pet_hp[6]={300,480,720,900,1200,500000,"o_material_23","4级皮",1,100}
		pet_hp[7]={350,560,840,1050,1400,1000000,"o_material_24","5级皮",1,150}
		pet_hp[8]={400,640,960,1200,1600,2000000,"o_material_25","6级皮",1,200}
		pet_hp[9]={450,720,1080,1350,1800,3000000,"o_material_25","5级皮",1,250}
		pet_hp[10]={500,800,1200,1500,2000,4000000,"o_material_25","6级皮",1,300}
		pet_hp[11]={550,880,1320,1650,2200,5000000,"o_material_25","6级皮",1,350}
		pet_hp[12]={600,960,1440,1800,2400,6000000,"o_material_25","6级皮",1,400}
		pet_hp[13]={650,1040,1560,1950,2600,7000000,"o_material_26","7级皮",1,450}
		pet_hp[14]={700,1120,1680,2100,2800,8000000,"o_material_26","7级皮",1,500}
		pet_hp[15]={750,1200,1800,2250,3000,9000000,"o_material_27","8级皮",1,400}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --法宝品质
    LuaSay("驯兽师：还可以炼化你法宝的生命哦，@7可炼化生命@0：@3"..pet_hp[a][pet_pz].."点！")

        --------------------------------****法宝hp炼化结束****-----------------------------------



--------------------------------****法宝att炼化开始****-----------------------------------



elseif(answer=="pet_attts") then
	if(EquipInfo(10)=="")then
		LuaSay("请把你的法宝装备上@!")
	else		
	
		if(LuaQueryTemp("whatfb")==1)then
			LuaSay("请携带你的法宝@!")
		else
			local pet_atttime=LuaPetQuery("pet_atttime")
			if(pet_atttime==0) then
			LuaPetSet("pet_atttime",1) --初始炼化次数为1
			pet_atttime=LuaPetQuery("pet_atttime")
			end
			local a=pet_atttime   -------炼化的次数
			LuaSetTemp("a",a)

				pet_att={}                                                          
				pet_att[1]={10,15,20,25,30,1000,"","",0,0}              ---5  每次炼化的攻击力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，元宝
				pet_att[2]={20,30,40,50,55,5000,"","",0,0}              ---10
				pet_att[3]={30,45,60,75,80,20000,"o_material_47","1级矿",1,0} 
				pet_att[4]={40,60,80,100,120,50000,"o_material_48","2级矿",1,10}              ---15
				pet_att[5]={50,75,100,125,150,200000,"o_material_49","3级矿",1,50}              ---20
				pet_att[6]={60,90,120,150,180,500000,"o_material_50","4级矿",1,100}              ---30
				pet_att[7]={70,105,140,175,210,1000000,"o_material_51","5级矿",1,150}              ---35
				pet_att[8]={80,120,160,200,240,2000000,"o_material_52","6级矿",1,200}              ---40
				pet_att[9]={90,135,180,225,270,3000000,"o_material_52","6级矿",1,250}              ---45
				pet_att[10]={100,150,200,250,300,4000000,"o_material_52","6级矿",1,300}              ---50
				pet_att[11]={110,165,220,275,330,5000000,"o_material_52","6级矿",1,350}              ---55
				pet_att[12]={120,180,240,300,360,6000000,"o_material_52","6级矿",1,400}             ---60
				pet_att[13]={130,195,260,325,390,7000000,"o_material_53","7级矿",1,450}               ---65
				pet_att[14]={140,210,280,350,420,8000000,"o_material_53","7级矿",1,500}              ---70
				pet_att[15]={150,225,300,375,450,9000000,"o_material_54","8级矿",1,550}
				
				
				pet_pz=LuaPetQuery("type")   --法宝品质
				LuaSay("提示：你的法宝当前等级为@3"..LuaPetQuery("lv").."级！@0，你已经为该法定炼化了@3"..(LuaPetQuery("pet_atttime")-1).."次攻击力！@0")
				LuaSay("@7本次可炼化攻击力至@0：@3"..pet_att[a][pet_pz].."点")
				LuaSay("@7下次可炼化攻击力至@0：@3"..pet_att[a+1][pet_pz].."点")
			if(a<=2) then
			LuaSay("@7炼化需耗费@0：@3"..(pet_att[a][6]).."铜币")
			else
			LuaSay("@7炼化需耗费@0：@3"..(pet_att[a][6]).."铜币*"..pet_att[a][9].."个*"..pet_att[a][8].."元宝"..pet_att[a][10].."个")
			end
			if(LuaPetQuery("pet_atttime")<=15)then
			AddMenuItem("@7法宝攻击力炼化","")
			AddMenuItem("@3确认炼化","pet_attyes")
			AddMenuItem("@3不炼化","pet_attno")
			else
			LuaSay("驯兽师：目前法宝攻击力已经达到极限，无法继续炼化属性了！敬请期待后续开放内容！")
			end
		end
	end		
		
elseif(answer=="pet_attyes") then
		pet_att={}                                                          
		pet_att[1]={10,15,20,25,30,1000,"","",0,0}              ---5  每次炼化的攻击力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，元宝
		pet_att[2]={20,30,40,50,55,5000,"","",0,0}              ---10
		pet_att[3]={30,45,60,75,80,20000,"o_material_47","1级矿",1,0} 
		pet_att[4]={40,60,80,100,120,50000,"o_material_48","2级矿",1,10}              ---15
		pet_att[5]={50,75,100,125,150,200000,"o_material_49","3级矿",1,50}              ---20
		pet_att[6]={60,90,120,150,180,500000,"o_material_50","4级矿",1,100}              ---30
		pet_att[7]={70,105,140,175,210,1000000,"o_material_51","5级矿",1,150}              ---35
		pet_att[8]={80,120,160,200,240,2000000,"o_material_52","6级矿",1,200}              ---40
		pet_att[9]={90,135,180,225,270,3000000,"o_material_52","6级矿",1,250}              ---45
		pet_att[10]={100,150,200,250,300,4000000,"o_material_52","6级矿",1,300}              ---50
		pet_att[11]={110,165,220,275,330,5000000,"o_material_52","6级矿",1,350}              ---55
		pet_att[12]={120,180,240,300,360,6000000,"o_material_52","6级矿",1,400}             ---60
		pet_att[13]={130,195,260,325,390,7000000,"o_material_53","7级矿",1,450}               ---65
		pet_att[14]={140,210,280,350,420,8000000,"o_material_53","7级矿",1,500}              ---70
		pet_att[15]={150,225,300,375,450,9000000,"o_material_54","8级矿",1,550}

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --法宝品质
	if(LuaPetQuery("pet_atttime")<=LuaPetQuery("lv")/5 )  then
        	        if(a<=2) then
				if(LuaItemCount("coin")>=pet_att[a][6]) then
					LuaGive("coin",-pet_att[a][6],"Tpet_att")   --Tpet_att：法宝攻击力炼化
					LuaPetSet("att",pet_att[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					LuaSay("@7炼化成功@0炼化攻击力至：@3"..pet_att[a][pet_pz].."点")
				else
				LuaSay("@7炼化材料不足@0：需要@3"..(pet_att[a][6]).."铜币")
				end
			else
				if(LuaItemCount("coin")>=pet_att[a][6] and LuaItemStatusNormalCount(pet_att[a][7])>=pet_att[a][9] and LuaQueryMoney()>=pet_att[a][10]) then
					LuaGive("coin",-pet_att[a][6],"Tpet_att")   --Tpet_att：法宝攻击力炼化
					LuaAddYB(1,-pet_att[a][10],"Tpet_attyb")
					DelItem(pet_att[a][7],pet_att[a][9])
					LuaPetSet("att",pet_att[a][pet_pz])
					LuaPetSet("pet_atttime",LuaPetQuery("pet_atttime")+1)
					FlushMyInfo("1")
					LuaSay("@7炼化成功@0炼化攻击力至：@3"..pet_att[a][pet_pz].."点")
				else
				LuaSay("@7炼化材料不足@0：需要@3"..(pet_att[a][6]).."铜币*"..pet_att[a][9].."个*"..pet_att[a][8].."元宝"..pet_att[a][10].."个")
				end
			end
	else
	LuaSay("驯兽师：法宝每多升5级就能多炼化1次属性等级，你快去给法宝喂食，炼化法宝等级吧！")
	end

elseif(answer=="pet_attno") then
		pet_att={}                                                          
		pet_att[1]={10,15,20,25,30,1000,"","",0,0}              ---5  每次炼化的攻击力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，元宝
		pet_att[2]={20,30,40,50,55,5000,"","",0,0}              ---10
		pet_att[3]={30,45,60,75,80,20000,"o_material_47","1级矿",1,0} 
		pet_att[4]={40,60,80,100,120,50000,"o_material_48","2级矿",1,10}              ---15
		pet_att[5]={50,75,100,125,150,200000,"o_material_49","3级矿",1,50}              ---20
		pet_att[6]={60,90,120,150,180,500000,"o_material_50","4级矿",1,100}              ---30
		pet_att[7]={70,105,140,175,210,1000000,"o_material_51","5级矿",1,150}              ---35
		pet_att[8]={80,120,160,200,240,2000000,"o_material_52","6级矿",1,200}              ---40
		pet_att[9]={90,135,180,225,270,3000000,"o_material_52","6级矿",1,250}              ---45
		pet_att[10]={100,150,200,250,300,4000000,"o_material_52","6级矿",1,300}              ---50
		pet_att[11]={110,165,220,275,330,5000000,"o_material_52","6级矿",1,350}              ---55
		pet_att[12]={120,180,240,300,360,6000000,"o_material_52","6级矿",1,400}             ---60
		pet_att[13]={130,195,260,325,390,7000000,"o_material_53","7级矿",1,450}               ---65
		pet_att[14]={140,210,280,350,420,8000000,"o_material_53","7级矿",1,500}              ---70
		pet_att[15]={150,225,300,375,450,9000000,"o_material_54","8级矿",1,550}
	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --法宝品质
    LuaSay("驯兽师：还可以炼化你法宝的攻击力哦，@7可炼化攻击力至@0：@3"..pet_att[a][pet_pz].."点！")

        --------------------------------****法宝att炼化结束****-----------------------------------



--------------------------------****法宝def炼化开始****-----------------------------------



elseif(answer=="pet_defts") then
	if(EquipInfo(10)=="")then
		LuaSay("请把你的法宝装备上@!")
	else		
	
		if(LuaQueryTemp("whatfb")==1)then
			LuaSay("请携带你的法宝@!")
		else

				local pet_deftime=LuaPetQuery("pet_deftime")
			if(pet_deftime==0) then
				LuaPetSet("pet_deftime",1) --初始炼化次数为1
				pet_deftime=LuaPetQuery("pet_deftime")
			end
			local a=pet_deftime   -------炼化的次数
			LuaSetTemp("a",a)
				pet_def={}
				pet_def[1]={4,5,6,7,8,1000,"","",0,0}                --每次炼化的防御力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，元宝
				pet_def[2]={8,10,12,14,16,5000,"","",0,0}
				pet_def[3]={12,15,18,21,24,20000,"o_material_38","1极木",1,0}  
				pet_def[4]={16,20,24,28,32,50000,"o_material_39","2极木",1,10} 
				pet_def[5]={20,25,30,35,40,200000,"o_material_40","3极木",1,50}  
				pet_def[6]={24,30,36,42,48,500000,"o_material_41","4极木",1,100}
				pet_def[7]={28,35,42,49,56,1000000,"o_material_42","5极木",1,150}  
				pet_def[8]={32,40,48,56,64,2000000,"o_material_43","6极木",1,200}
				pet_def[9]={36,45,54,63,72,3000000,"o_material_43","6极木",1,250}
				pet_def[10]={40,50,60,70,80,4000000,"o_material_43","6极木",1,300}
				pet_def[11]={44,55,66,77,88,5000000,"o_material_43","6极木",1,350}
				pet_def[12]={48,60,72,84,96,6000000,"o_material_43","6极木",1,400}
				pet_def[13]={52,65,78,91,104,7000000,"o_material_44","7极木",1,450}
				pet_def[14]={56,70,84,98,112,8000000,"o_material_44","7极木",1,500}
				pet_def[15]={60,75,90,105,120,9000000,"o_material_45","8极木",1,550}

				pet_pz=LuaPetQuery("type")   --法宝品质
				LuaSay("提示：你的法宝当前等级为@3"..LuaPetQuery("lv").."级！@0，你已经为该法宝炼化了@3"..(LuaPetQuery("pet_deftime")-1).."次防御力！@0")
				LuaSay("@7本次可炼化防御力至@0：@3"..pet_def[a][pet_pz].."点")
				LuaSay("@7下次可炼化防御力至@0：@3"..pet_def[a+1][pet_pz].."点")

			if(a<=2) then
			LuaSay("@7炼化需耗费@0：@3"..(pet_def[a][6]).."铜币")
			else
			LuaSay("@7炼化需耗费@0：@3"..(pet_def[a][6]).."铜币*"..pet_def[a][9].."个*"..pet_def[a][8].."元宝"..pet_def[a][10].."个")
			end
			if(LuaPetQuery("pet_deftime")<=15)then
			AddMenuItem("@7法宝防御力炼化","")
			AddMenuItem("@3确认炼化","pet_defyes")
			AddMenuItem("@3不炼化","pet_defno")
			else
			LuaSay("驯兽师：目前法宝防御力已经达到极限，无法继续炼化属性了！敬请期待后续开放内容！")
			end

		end
	end

elseif(answer=="pet_defyes") then
		pet_def={}
		pet_def[1]={4,5,6,7,8,1000,"","",0,0}                --每次炼化的防御力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，元宝
		pet_def[2]={8,10,12,14,16,5000,"","",0,0}
		pet_def[3]={12,15,18,21,24,20000,"o_material_38","1极木",1,0}  
		pet_def[4]={16,20,24,28,32,50000,"o_material_39","2极木",1,10} 
		pet_def[5]={20,25,30,35,40,200000,"o_material_40","3极木",1,50}  
		pet_def[6]={24,30,36,42,48,500000,"o_material_41","4极木",1,100}
		pet_def[7]={28,35,42,49,56,1000000,"o_material_42","5极木",1,150}  
		pet_def[8]={32,40,48,56,64,2000000,"o_material_43","6极木",1,200}
		pet_def[9]={36,45,54,63,72,3000000,"o_material_43","6极木",1,250}
		pet_def[10]={40,50,60,70,80,4000000,"o_material_43","6极木",1,300}
		pet_def[11]={44,55,66,77,88,5000000,"o_material_43","6极木",1,350}
		pet_def[12]={48,60,72,84,96,6000000,"o_material_43","6极木",1,400}
		pet_def[13]={52,65,78,91,104,7000000,"o_material_44","7极木",1,450}
		pet_def[14]={56,70,84,98,112,8000000,"o_material_44","7极木",1,500}
		pet_def[15]={60,75,90,105,120,9000000,"o_material_45","8极木",1,550}

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --法宝品质
	if(LuaPetQuery("pet_deftime")<=LuaPetQuery("lv")/5 )  then
        	        if(a<=2) then
				if(LuaItemCount("coin")>=pet_def[a][6]) then
					LuaGive("coin",-pet_def[a][6],"Tpet_def")   --Tpet_def：法宝防御力炼化
					LuaPetSet("def",pet_def[a][pet_pz])
					FlushMyInfo("1")
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					LuaSay("@7炼化成功@0炼化防御力至：@3"..pet_def[a][pet_pz].."点")
				else
				LuaSay("@7炼化材料不足@0：需要@3"..(pet_def[a][6]).."铜币")
				end
			else
				if(LuaItemCount("coin")>=pet_def[a][6] and LuaItemStatusNormalCount(pet_def[a][7])>=pet_def[a][9] and LuaQueryMoney()>=pet_def[a][10]) then
					LuaGive("coin",-pet_def[a][6],"Tpet_def")   --Tpet_def：法宝防御力炼化
					LuaAddYB(1,-pet_def[a][10],"Tpet_defyb")
					DelItem(pet_def[a][7],pet_def[a][9])
					LuaPetSet("def",pet_def[a][pet_pz])
					LuaPetSet("pet_deftime",LuaPetQuery("pet_deftime")+1)
					FlushMyInfo("1")
					LuaSay("@7炼化成功@0。炼化防御力至：@3"..pet_def[a][pet_pz].."点")
				else
				LuaSay("@7炼化材料不足@0：需要@3"..(pet_def[a][6]).."铜币*"..pet_def[a][9].."个*"..pet_def[a][8].."元宝"..pet_def[a][10].."个")
				end
			end
	else
	LuaSay("驯兽师：法宝每多升5级就能多炼化1次属性等级，你快去给法宝喂食，炼化法宝等级吧！")
	end

elseif(answer=="pet_defno") then
		pet_def={}
		pet_def[1]={4,5,6,7,8,1000,"","",0,0}                --每次炼化的防御力（绿，蓝，黄，紫），消费铜币，消费材料，名字，材料数量，元宝
		pet_def[2]={8,10,12,14,16,5000,"","",0,0}
		pet_def[3]={12,15,18,21,24,20000,"o_material_38","1极木",1,0}  
		pet_def[4]={16,20,24,28,32,50000,"o_material_39","2极木",1,10} 
		pet_def[5]={20,25,30,35,40,200000,"o_material_40","3极木",1,50}  
		pet_def[6]={24,30,36,42,48,500000,"o_material_41","4极木",1,100}
		pet_def[7]={28,35,42,49,56,1000000,"o_material_42","5极木",1,150}  
		pet_def[8]={32,40,48,56,64,2000000,"o_material_43","6极木",1,200}
		pet_def[9]={36,45,54,63,72,3000000,"o_material_43","6极木",1,250}
		pet_def[10]={40,50,60,70,80,4000000,"o_material_43","6极木",1,300}
		pet_def[11]={44,55,66,77,88,5000000,"o_material_43","6极木",1,350}
		pet_def[12]={48,60,72,84,96,6000000,"o_material_43","6极木",1,400}
		pet_def[13]={52,65,78,91,104,7000000,"o_material_44","7极木",1,450}
		pet_def[14]={56,70,84,98,112,8000000,"o_material_44","7极木",1,500}
		pet_def[15]={60,75,90,105,120,9000000,"o_material_45","8极木",1,550}

	local a = LuaQueryTemp("a")
	local pet_pz=LuaPetQuery("type")   --法宝品质
	LuaSay("驯兽师：还可以炼化你法宝的防御力哦，@7可炼化防御力至@0：@3"..pet_def[a][pet_pz].."点！")

        --------------------------------****法宝def炼化结束****-----------------------------------






elseif(answer=="Magic")then      --Magic weapon
        LuaSay("想称霸天下,成为人上人么,那就合成一件属于你自己的法宝")
	LuaSay("请选择你要合成的法宝种类")
	AddMenuItem("法宝合成选择","")
	AddMenuItem("嗜血珠","FB_dj1")
	AddMenuItem("七星剑","FB_dj2")
	AddMenuItem("玲珑塔","FB_dj3")
		elseif(answer=="FB_dj1")then
			AddMenuItem("法宝合成等级选择","")
			AddMenuItem("5个一品合成一个@7[二品]@0","FB_dj1_1")
			AddMenuItem("5个二品合成一个@5[三品]@0","FB_dj1_2")
			AddMenuItem("5个三品合成一个@3[四品]@0","FB_dj1_3")
			AddMenuItem("5个四品合成一个@2[五品]@0","FB_dj1_4")
			AddMenuItem("5个五品合成一个@2[六品]@0","FB_dj1_5")
				elseif(answer=="FB_dj1_1")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab1")
					AddMenuItem("取消","")
						elseif(answer=="fab1")then
							if(LuaItemCount("e_pet100") >=5)then
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								DelItem("e_pet100",1)
								LuaSay("恭喜你合成成功获得一个二品嗜血珠")
								LuaGive("e_pet101",1,"fab1")
							else
								LuaSay("请至少带有5个以上的一品嗜血珠")
							end
				elseif(answer=="FB_dj1_2")then
				        AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab2")
					AddMenuItem("取消","")
						elseif(answer=="fab2")then
							if(LuaItemCount("e_pet101") >=5)then
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								DelItem("e_pet101",1)
								LuaSay("恭喜你合成成功获得一个三品嗜血珠")
								LuaGive("e_pet102",1,"fab2")
							else
								LuaSay("请至少带有5个以上的二品嗜血珠")
							end
				elseif(answer=="FB_dj1_3")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab3")
					AddMenuItem("取消","")
						elseif(answer=="fab3")then
							if(LuaItemCount("e_pet102") >=5)then
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								DelItem("e_pet102",1)
								LuaSay("恭喜你合成成功获得一个四品嗜血珠")
								LuaGive("e_pet103",1,"fab3")
							else
								LuaSay("请至少带有5个以上的三品嗜血珠")
							end
				elseif(answer=="FB_dj1_4")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab4")
					AddMenuItem("取消","")
						elseif(answer=="fab4")then
							if(LuaItemCount("e_pet103") >=5)then
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								DelItem("e_pet103",1)
								LuaSay("恭喜你合成成功获得一个五品嗜血珠")
								LuaGive("e_pet104",1,"fab4")
							else
								LuaSay("请至少带有5个以上的四品嗜血珠")
							end
				elseif(answer=="FB_dj1_5")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab5")
					AddMenuItem("取消","")
						elseif(answer=="fab5")then
							if(LuaItemCount("e_pet104") >=5)then
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								DelItem("e_pet104",1)
								LuaSay("恭喜你合成成功获得一个六品嗜血珠")
								LuaGive("e_pet105",1,"fab5")
							else
								LuaSay("请至少带有5个以上的五品嗜血珠")
							end
		elseif(answer=="FB_dj2")then
			AddMenuItem("法宝合成等级选择","")
			AddMenuItem("5个一品合成一个@7[二品]@0","FB_dj2_1")
			AddMenuItem("5个二品合成一个@5[三品]@0","FB_dj2_2")
			AddMenuItem("5个三品合成一个@3[四品]@0","FB_dj2_3")
			AddMenuItem("5个四品合成一个@2[五品]@0","FB_dj2_4")
				elseif(answer=="FB_dj2_1")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab1_1")
					AddMenuItem("取消","")
						elseif(answer=="fab1_1")then
							if(LuaItemCount("e_pet200") >=5)then
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								DelItem("e_pet200",1)
								LuaSay("恭喜你合成成功获得一个二品七星剑")
								LuaGive("e_pet201",1,"fab1_1")
							else
								LuaSay("请至少带有5个以上的一品七星剑")
							end
				elseif(answer=="FB_dj2_2")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab2_1")
					AddMenuItem("取消","")
						elseif(answer=="fab2_1")then
							if(LuaItemCount("e_pet201") >=5)then
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								DelItem("e_pet201",1)
								LuaSay("恭喜你合成成功获得一个三品七星剑")
								LuaGive("e_pet202",1,"fab2_1")
							else
								LuaSay("请至少带有5个以上的二品七星剑")
							end
				elseif(answer=="FB_dj2_3")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab3_1")
					AddMenuItem("取消","")
						elseif(answer=="fab3_1")then
							if(LuaItemCount("e_pet202") >=5)then
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								DelItem("e_pet202",1)
								LuaSay("恭喜你合成成功获得一个四品七星剑")
								LuaGive("e_pet203",1,"fab3_1")
							else
								LuaSay("请至少带有5个以上的三品七星剑")
							end
				elseif(answer=="FB_dj2_4")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab4_1")
					AddMenuItem("取消","")
						elseif(answer=="fab4_1")then
							if(LuaItemCount("e_pet203") >=5)then
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								DelItem("e_pet203",1)
								LuaSay("恭喜你合成成功获得一个五品七星剑")
								LuaGive("e_pet204",1,"fab4_1")
							else
								LuaSay("请至少带有5个以上的四品七星剑")
							end
		elseif(answer=="FB_dj3")then
			AddMenuItem("法宝合成等级选择","")
			AddMenuItem("5个一品合成一个@7[二品]@0","FB_dj3_1")
			AddMenuItem("5个二品合成一个@5[三品]@0","FB_dj3_2")
			AddMenuItem("5个三品合成一个@5[四品]@0","FB_dj3_3")
			AddMenuItem("5个四品合成一个@5[五品]@0","FB_dj3_4")
				elseif(answer=="FB_dj3_1")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab1_2")
					AddMenuItem("取消","")
						elseif(answer=="fab1_2")then
							if(LuaItemCount("e_pet300") >=5)then
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								DelItem("e_pet300",1)
								LuaSay("恭喜你合成成功获得一个二品玲珑塔")
								LuaGive("e_pet301",1,"fab1_2")
							else
								LuaSay("请至少带有5个以上的一品玲珑塔")
							end
				elseif(answer=="FB_dj3_2")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab2_2")
					AddMenuItem("取消","")
						elseif(answer=="fab2_2")then
							if(LuaItemCount("e_pet301") >=5)then
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								DelItem("e_pet301",1)
								LuaSay("恭喜你合成成功获得一个三品玲珑塔")
								LuaGive("e_pet302",1,"fab2_2")
							else
								LuaSay("请至少带有5个以上的二品玲珑塔")
							end
				elseif(answer=="FB_dj3_3")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab3_2")
					AddMenuItem("取消","")
						elseif(answer=="fab3_2")then
							if(LuaItemCount("e_pet302") >=5)then
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								LuaSay("恭喜你合成成功获得一个四品玲珑塔")
								LuaGive("e_pet303",1,"fab3_2")
							else
								LuaSay("请至少带有5个以上的三品玲珑塔")
							end
				elseif(answer=="FB_dj3_4")then
					AddMenuItem("@5合成选择","")
					AddMenuItem("@1[推荐]@0@5确定合成","fab4_2")
					AddMenuItem("取消","")
						elseif(answer=="fab4_2")then
							if(LuaItemCount("e_pet303") >=5)then
								DelItem("e_pet303",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								DelItem("e_pet302",1)
								LuaSay("恭喜你合成成功获得一个五品玲珑塔")
								LuaGive("e_pet304",1,"fab4_2")
							else
								LuaSay("请至少带有5个以上的四品玲珑塔")
							end

elseif(answer=="pet_")then
	LuaSay("全新@2法宝系统@0闪亮出击，法宝一共分为三类，@2嗜血珠@0为主@3攻击@0、@2七星剑@0为主@3血上限@0、@2玲珑塔@0为主@3防御@0")
	LuaSay("每种法宝一共分为5种品质，品质最高5品，分别对应@2紫色@0、@3金色@0、@5蓝色@0、@7绿色@0和白色。品质越高，基础属性越高。")
	LuaSay("五品@2嗜血珠@0基础攻击力更是能达到250的攻击，所以法宝乃是危险物品，持有者威力剧增，凡人不愈靠近")
	LuaSay("法宝可以合成，通过低品质的合成高品质的法宝，五个一品的合成一个二品法宝。")
	LuaSay("同时当你获得一件很好的法宝的时候，你可以对您心爱的法宝进行炼化，炼化是在法宝的基础属性上增加额外的属性，炼化最高能到15层")
	LuaSay("不同品质的法宝炼化所增加的属性有所差异，五品法宝增加最多，炼化到15层@2紫色法宝@0，最多能额外增加@3450攻击@0、@33000血上限@0、@3120防御@0")
	LuaSay("法宝能通过宠物粮食来提高他的等级，目前和宠物装备在同一个装备位，同时也具有改名、变换颜色的功能！")
	LuaSay("炎热的酷夏，赶快寻找属于自己的法宝吧，给力法宝外形变化，敬请期待，统一有您更精彩@!")



--嗜血珠	--攻击
--七星剑	--血量
--玲珑塔	--防御
elseif(answer=="T972")then
	local Discount=100  --打折设定。价格以及材料数量=Discount/100
	LuaSetTemp("Discount",Discount)
	--LuaSay("@7全新宠物兑换只需要一半的材料就能兑换到一只令你心旷神怡的宠物，另外缩减版用户将看不到新宠物的形象哦，所以请谨慎操作")
	--LuaSay("@5为感谢广大玩家对《统一OL》一直以来的支持，在七夕节期间开放全新顶级宠物兑换服务，帅气的造型，卓越的属性，等你拿！")
	--LuaSay("@5并且在七夕期间所有兑换需要的材料减半，心动不如行动，还等什么呢，赶快来选择一只属于你自己的宠物吧")
	LuaSay("@5全新宠物兑换为你开启，主需要凑够足够的材料便可以在我这个兑换到你心仪的宠物，包括金色的哦，心动的不如行动，赶快来参与吧@!")
	LuaSay("@9需要说明一下的是缩减版用户将看不到新宠物的形象哦，所以请谨慎操作")
	AddMenuItem("@7选择宠物颜色","")
	AddMenuItem("@5蓝色","blue")
	AddMenuItem("@3金色","gold")
	elseif(answer=="blue")then
		LuaSetTemp("color",1)
		AddMenuItem("@7选择宠物种类","")
		AddMenuItem("@5上古猎豹","1")
		AddMenuItem("@5夸父蛮师","2")
		AddMenuItem("@5盘古奇驹","3")
		AddMenuItem("@5伏羲神牛","4")
	elseif(answer=="gold")then
		LuaSetTemp("color",2)
		AddMenuItem("@7选择宠物种类","")
		AddMenuItem("@3上古猎豹","1")
		AddMenuItem("@3夸父蛮师","2")
		AddMenuItem("@3盘古奇驹","3")
		AddMenuItem("@3伏羲神牛","4")
	elseif(answer=="1" or answer=="2" or answer=="3" or answer=="4")then
		local type=answer+0
		LuaSetTemp("type",type)
		AddMenuItem("@7选择宠物操作","")
		AddMenuItem("确认兑换","11")
		AddMenuItem("@9查看材料","12")
	elseif(answer=="11")then
		local type=LuaQueryTemp("type")
		local color=LuaQueryTemp("color")
		local Discount=LuaQueryTemp("Discount")
		local date={ExchangePet(type)}
		local num1=date[7]+0
		local num2=date[8]+0
		if(color==1)then
			--LuaSay("你需要兑换的是"..date[3].."，由于你当前5折兑换，你只需要花费材料"..date[13]..""..(num1/2).."个，"..date[11].."1个")
			LuaSay("你需要兑换的是"..date[3].."，需要花费材料"..date[13]..""..num1.."个，"..date[11].."1个")
		elseif(color==2)then
			--LuaSay("你需要兑换的是"..date[4].."，由于你当前5折兑换，你只需要花费材料"..date[13]..""..(num2/2).."个，"..date[12].."1个")
			LuaSay("你需要兑换的是"..date[4].."，需要花费材料"..date[13]..""..num2.."个，"..date[12].."1个")
		end
		AddMenuItem("@7确认兑换","")
		AddMenuItem("@3确认兑换","yes")
		AddMenuItem("@9放弃兑换","no")
		
		elseif(answer=="yes")then
			local type=LuaQueryTemp("type")
			local color=LuaQueryTemp("color")
			local Discount=LuaQueryTemp("Discount")
			local date={ExchangePet(type)}
			local num1=date[7]+0
			local num2=date[8]+0
			if(color==1)then
				if(LuaItemStatusNormalCount(date[5])>=num1 and LuaItemStatusNormalCount(date[9])>=1)then
					LuaSay("@5提示：兑换成功")
					DelItem(date[5],num1)
					DelItem(date[9],1)
					LuaGive(date[1],1,"changepet")
				else
					LuaSay("提示：材料不足")
					--LuaSay("当前打折是5折，你只需要需要材料"..date[13]..""..(num1/2).."个，"..date[11].."1个")
					LuaSay("需要花费材料"..date[13]..""..num1.."个，"..date[11].."1个")
				end
			elseif(color==2)then
				if(LuaItemStatusNormalCount(date[5])>=num2 and LuaItemStatusNormalCount(date[10])>=1)then
					LuaSay("@3提示：兑换成功")
					DelItem(date[5],num2)
					DelItem(date[10],1)
					LuaGive(date[2],1,"changepet")
				else
					LuaSay("提示：材料不足")
					--LuaSay("当前打折是5折，你只需要需要材料"..date[13]..""..(num2/2).."个，"..date[12].."1个")
					LuaSay("需要花费材料"..date[13]..""..num2.."个，"..date[12].."1个")
				end
			end

	elseif(answer=="12")then
		local type=LuaQueryTemp("type")
		local color=LuaQueryTemp("color")
		local Discount=LuaQueryTemp("Discount")
		local date={ExchangePet(type)}
		local num1=date[7]+0
		local num2=date[8]+0
		if(color==1)then
			LuaSay("你需要兑换的是"..date[3].."")
			LuaSay("需要材料"..date[13]..""..num1.."个，"..date[11].."1个")
			--LuaSay("当前打折是5折，你只需要需要材料"..date[13]..""..(num1/2).."个，"..date[11].."1个")
			--LuaSay("原需要花费材料"..date[13]..""..num1.."个，"..date[11].."1个")
		elseif(color==2)then
			LuaSay("你需要兑换的是"..date[4].."")
			LuaSay("需要材料"..date[13]..""..num2.."个，"..date[12].."1个")
			--LuaSay("当前打折是5折，你只需要需要材料"..date[13]..""..(num2/2).."个，"..date[12].."1个")
			--LuaSay("原需要花费材料"..date[13]..""..num2.."个，"..date[12].."1个")
		end
end
LuaSendMenu()
return 1
end
function ExchangePet(type)
--type,		宠物类型。
--color,	宠物颜色 1 蓝 2 金	
--Discount,	打折	实际价格=（Discount/100）*配置价格
--Operating	操作类型 1 兑换 2查看材料

table1={}
table1[1]={"e_pet29","e_pet33","@5上古猛虎@0","@3上古猛虎@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","破旧古董","甲鱼","@7青纱券@0"}
table1[2]={"e_pet30","e_pet34","@5夸父蛮师@0","@3夸父蛮师@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","破旧古董","甲鱼","@7青纱券@0"}
table1[3]={"e_pet31","e_pet35","@5盘古奇驹@0","@3盘古奇驹@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","破旧古董","甲鱼","@7青纱券@0"}
table1[4]={"e_pet32","e_pet36","@5伏羲神牛@0","@3伏羲神牛@0","o_zhaiquan1y","o_zhaiquan1y",6,8,"o_mission018","o_mission168","破旧古董","甲鱼","@7青纱券@0"}

str1=table1[type][1]
str2=table1[type][2]
str3=table1[type][3]
str4=table1[type][4]
str5=table1[type][5]
str6=table1[type][6]
str7=table1[type][7]
str8=table1[type][8]
str9=table1[type][9]
str10=table1[type][10]
str11=table1[type][11]
str12=table1[type][12]
str13=table1[type][13]

return 	str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13
	
end
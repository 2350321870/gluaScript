NPCINFO = {
serial= "29" ,
base_name="simayuanxian",
icon= 2530,
NpcMove=2530,
name= "司马元显" , 
iconaddr=1,
butt="10|10|63",
name_color = "CEFFCE" , 
lastsay="在这人流不息的地方看美女，人生一大乐事也",
LuaType=1,                            
}
function do_talk(answer)
if(answer=="ask") then
    havetask =0
    local T110= LuaQueryTask("T110")
    local T111= LuaQueryTask("T111")
    local level= LuaQuery("level")
    AddTopSayMenuItem("@7任务列表","")   

		if(LuaQueryTask("Ttaozhuang30jl")==0) then
		AddTopSayMenuItem("@325级领套装奖励","Ttaozhuang30jl")
		else
		if(LuaQueryTask("Ttaozhuang30A")==0 or LuaQueryTask("Ttaozhuang30B")==0 or LuaQueryTask("Ttaozhuang30C")==0) then
		AddTopSayMenuItem("@330级套装出处指引","Ttaozhuang30jl")
		end
		end
	if(LuaQueryTask("T112")==0 and LuaQueryTask("T114")==99)  then
		AddTopSayMenuItem("父子情仇【剧情】","T112")          
		havetask =1
	end 
--	if(LuaQueryTask("T114")==0 and level>=20) then
--		AddTopSayMenuItem("纨绔子弟【剧情】","T114")
--		havetask =1
--	end
	if(LuaQueryTask("T115")==0 and LuaQueryTask("T290")==99) then
		AddTopSayMenuItem("父子相残【剧情】","T115")
		havetask =1
	end
	if(LuaQueryTask("T299")==0 and level>=20)then
		AddTopSayMenuItem("承包土地【剧情】","T299")
		havetask=1
	end

	if(LuaQueryTask("T385")==1)then
		if(LuaQueryTask("TfindNPC_8")==1 or LuaQueryTask("TfindNPC_8")==2)then
			AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
			havetask=2
		end
	elseif(LuaQueryTask("T385")==98 and LuaQueryTask("TfindNPC_8")==98)then
		AddTopSayMenuItem("@2半壁江山【循环】@0","T385")
	end
	

	
	if(LuaQueryTask("T115")==1) then
		AddTopSayMenuItem("@2父子相残【剧情】","T115")
		if(LuaQueryTask("T115A") == 99 and LuaQueryTask("T115B") == 99) then
		havetask =2
		end
	end
	if(LuaQueryTask("T114")==1) then
		AddTopSayMenuItem("@2纨绔子弟【剧情】","T114")
		if(LuaItemStatusNormalCount("o_mission020")>=1)then
		havetask =2
		end
	end
	if((LuaQueryTask("Tsnpc_13")==1 or LuaQueryTask("Tsnpc_13")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_13")
		if(LuaQueryTask("Tsnpc_13")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_13")==1 or LuaQueryTask("Tenpc_13")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_13")
		if(LuaQueryTask("Tenpc_13")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tsnpc_14")==1 or LuaQueryTask("Tsnpc_14")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_14")
		if(LuaQueryTask("Tsnpc_14")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_14")==1 or LuaQueryTask("Tenpc_14")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_14")
		if(LuaQueryTask("Tenpc_14")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("T120")==1 and LuaQueryTask("T120A")<98) then
		AddTopSayMenuItem("@2爱的考验【每日】@0","T120A")
		havetask =2 
	end
	if(LuaQueryTask("pettask") ==5) then
		AddTopSayMenuItem("@2送货[每日]","pettask")
		havetask=2
		end
	if(LuaQueryTask("T302")==10 and LuaQueryTask("T302J")==0) then
		AddTopSayMenuItem("@2每日信使@0","T302J")
		havetask =2 
	end 
	if(LuaQueryTask("T112")==1)  then
		AddTopSayMenuItem("@2父子情仇【剧情】@0","T112")
		if(LuaQueryTask("T112A")==99) then
		havetask =2
		end
	end 
	if(LuaQueryTask("T290") ==2) then
		AddTopSayMenuItem("@2望子成龙【剧情】@0","T290") 
		havetask =2
	end
	if(LuaQueryTask("T299")==1 or LuaQueryTask("T299")==2)then
		AddTopSayMenuItem("@2承包土地【剧情】","T299")
		if(LuaQueryTask("T299")==2)then
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
	    
elseif(answer=="liaotian") then
	LuaSay("司马元显：在这人流不息的地方看美女，真是人生一大乐事啊。")
	if(LuaItemCount("o_fatescroll")>=1 and LuaQueryStr("gender")=="男性")then
	LuaSay("@5告诉你一个秘密@!，只要你在聊天里喊一句“@0我是美女@5”，然后打开@4天机卷轴@5，也许会有意外的惊喜。")--天机
	end
elseif(answer=="pettask")then
	if(LuaQueryStrTask("pettaskday")~=GetCurrentDay())then
		LuaSetTask("ptnumber",0)
		LuaSetTask("pettaskday",GetCurrentDay())
	end
	if(LuaQueryTask("pettask") ==5) then
	LuaSay("司马元显:唔哈哈,有了这对小墨猴,不说我是文人雅客也不行了。")
	LuaSetTask("pettask",6)
	LuaAddTask("ptnumber",1)
	DelItem("o_mission049",LuaItemCount("o_mission049"))
	LuaGive("o_food02",10,"pettask")
	UpdateMenu()
	end



elseif(answer=="T120A") then
	if(LuaQueryTask("T120A")==0) then
	LuaSay("司马元显：从来就不相信那些所谓的誓言与承诺,在我眼里,任何东西都是能够用金钱衡量的。")
	LuaSay("司马元显：只要你抛弃你的情侣,我就可以给你很多的金钱。")
	LuaSay("司马元显：@31000铜币@0,你愿意抛弃吗？")
	AddMenuItem("抛弃?","")
	AddMenuItem("抛弃","YES1")
	AddMenuItem("不抛弃","NO1")
	end
    elseif(answer=="YES1") then
	if(LuaQueryTask("T120A")<98)then
	LuaGive("coin",1000,"T120")
	LuaSetTask("T120A",98)
	LuaSay("司马元显：功名利禄,终归尘土,年轻人,你又何必走陈世美的老路呢！")
	DoTalk("1000")
	UpdateMenu()
	end
    elseif(answer=="NO1") then
	LuaSay("司马元显：@35000铜币@0,你愿意抛弃吗？")
	AddMenuItem("抛弃?","")
	AddMenuItem("抛弃","YES2","")
	AddMenuItem("不抛弃","NO2","")
    elseif(answer=="YES2") then
    if(LuaQueryTask("T120A")<98)then
	LuaGive("coin",5000,"T120")
	LuaSetTask("T120A",98)
	LuaSay("司马元显：功名利禄,终归尘土,年轻人,你又何必走陈世美的老路呢？")
	DoTalk("5000")
	UpdateMenu()
	end
    elseif(answer=="NO2") then
	LuaSay("司马元显：我就不相信金钱不是万能的,最后一次,@31W铜币@0,你愿意抛弃情侣吗？")
	AddMenuItem("抛弃?","")
	AddMenuItem("抛弃","YES3","")
	AddMenuItem("不抛弃","NO3","")
    elseif(answer=="YES3") then
    if(LuaQueryTask("T120A")<98)then
	LuaGive("coin",10000,"T120")
	LuaSetTask("T120A",98)
	LuaSay("司马元显：终究还是倒在了金钱面前,功名利禄,终归尘土,年轻人,你又何必走陈世美的老路呢？")
	DoTalk("10000")
	UpdateMenu()
	end
    elseif(answer=="NO3") then
	LuaSay("司马元显：真是食古不化啊,你可知道这些钱可以找多少个情侣呢？")
	LuaSetTask("T120A",99)		
    elseif(answer=="1000" or answer=="5000" or answer=="10000")then--选钱的大家一起来鄙视
	local r1=LuaRandom(10)
	local r2=LuaRandom(10)
	local r3=LuaRandom(10)
	local r4=LuaRandom(10)
	if(r1<5)then
		LuaNotice(""..LuaQueryStr("name").."竟然为了"..answer.."铜抛弃情侣,大家一起鄙视他吧！")
		if(r2<3)then
			LuaNotice("陈世美发来贺电：恭喜啊，我老陈真是后继有人啊，哈哈!")
			LocalMsg("某小三:"..LuaQueryStr("name").."!你好伟大,快去办了离婚手续,然后咱俩结婚吧！")
			LocalMsg("谢安曰:唉！现在的年轻人啊！")
		else
			if(r3<4)then
				LuaNotice("某小三发来贺电:"..LuaQueryStr("name").."!你好伟大,快去办了离婚手续,然后咱俩结婚吧！")
				LocalMsg("陈世美发来贺电:恭喜啊，我老陈真是后继有人啊，哈哈!")
				LocalMsg("谢安曰:唉！现在的年轻人啊！")
			else
				if(r4<6)then
				LuaNotice("谢安曰:唉！现在的年轻人啊！")
				else
				LocalMsg("谢安曰:唉！现在的年轻人啊！")
				end
				LocalMsg("某小三:"..LuaQueryStr("name").."!你好伟大,快去办了离婚手续,然后咱俩结婚吧！")
				LocalMsg("陈世美发来贺电:恭喜啊，我老陈真是后继有人啊，哈哈!")
			end
		end
	LuaShowNotify("提示:你被鄙视了!")
	end
	LuaSay("司马元显:抛弃情侣会有@210%@0的机率解除婚姻关系,汝当好自为之。")
	--if(LuaRandom(100)<10)then DisMarry() LuaShowNotify("提示:离婚成功!") end--暂不用，上句只是吓唬人的
	UpdateMenu()

elseif(answer=="T302J") then
	   LuaSay(""..LuaQueryStr("name").."：这是马夫托我带给你的信件。")
       LuaSay("司马元显：不知道又是哪家的小姑娘给我写的情书。@!")
	   DelItem("o_mission076",1) 
	   LuaSetTask("T302J",99)
	   UpdateMenu()

elseif(answer=="T112") then                     ----------------父子情仇
		if(LuaQueryTask("T112") == 0 ) then 
				LuaSay("司马元显：我司马族乃是天下皇族，我父乃是当朝丞相。可笑的是，在他眼里权利永远都比我重要。")
				LuaSay("司马元显：我不甘心！我要让他后悔！这里有一包@2药粉@0，请阁下撒于@4建康城东郊@0，给他制造点小混乱。")
				if(LuaQueryStr("MobieType") ~= "S20")then
					LuaSay("司马元显：在@4建康城东郊@0，点击@3菜单@0，再点击@33背包键@0，在@3任务背包@0中点击@2药粉@0再点击@3使用@0即可。")
				else
					LuaSay("司马元显：在@4建康城东郊@0，按@3左软键@0，再按@33背包@0，在@3任务背包@0中点击@2药粉@0再按@3使用@0即可。")
				end
				LuaSetTask("T112",1) 
				LuaGive("o_mission054",1)
				UpdateTopSay("把药粉撒在建康城东郊")
				AddLog("父子情仇【剧情】",112) 
				UpdateMenu() 
		elseif(LuaQueryTask("T112")==1) then
			if(LuaQueryTask("T112A")==99) then
				LuaSay(""..LuaQueryStr("name").."：见你也是可怜人才帮你做这件事，不过父子之间何必如此。")
				LuaSay("司马元显：我的事不用你管，这是给你的奖励。")
				AddMenuItem("@7任务完成","")
				AddMenuItem("领取奖励","T112jl")
			 else
			    LuaSay("司马元显：你还没有将@2药粉@0撒到@4建康城东郊@0呢，别想忽悠我。")
			 end
			end
		        elseif(answer=="T112jl")then
                if(LuaQueryTask("T112")==1) then
			if(LuaQueryTask("T112A")==99) then
				LuaSetTask("T112",99) 
				LuaAddJx("combat_exp",145000,"T112") 
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("112") 
				UpdateMenu() 
				end
				end

elseif(answer=="T114") then
	if(LuaQueryTask("T114")==0)then
	LuaSay("司马元显：北方战乱，那些可恶的贱民全都涌到南方来了，占足空间，还要浪费国库粮食。")
	LuaSay("司马元显：贱民就配吃贱食，到@4建康城@0的@3渔翁@0处进行@2钓鱼@0，钓@2一块劣质鱼肉@0来给我吧！")
	AddLog("纨绔子弟【剧情】",114)
	LuaSetTask("T114",1)
	UpdateMenu()
	elseif(LuaQueryTask("T114")==1 and LuaItemStatusNormalCount("o_mission020")==0)then
	LuaSay("司马元显：你还没有钓到@2一块劣质鱼肉@0，快到@4建康城@0的@3渔翁@0处@2钓鱼@0吧！")
	elseif(LuaQueryTask("T114")==1 and LuaItemStatusNormalCount("o_mission020")>=1)then
	LuaSay("司马元显：哈哈，好！下次就把这些劣质鱼肉发放给那些贱民。")
	LuaSay("@1温馨提示：您已经达到20级，可以去@4建康城@0的@3驯兽师@0处领取免费的@3经验宝宝@0时间了！@!")
	AddMenuItem("@7任务完成","")
	AddMenuItem("领取奖励","T114jl")
	end
	elseif(answer=="T114jl")then
	if(LuaQueryTask("T114")==1) then	 
	DelItem("o_mission020",1)
	DelLog("114")
 	LuaSetTask("T114",99)
	LuaAddJx("combat_exp",119000,"T114")
	LuaAddAchievementSchedule("Task_num",1)
	UpdateMenu()
	end


elseif(answer=="T290") then              ------------------------望子成龙 
		if(LuaQueryTask("T290")==2 ) then  
		LuaSay("司马元显：哼！权势权势！除了权势他还关心过我什么？总有一天我会夺走他手里的权势，到时看他如何。")
	            AddMenuItem("@7任务完成","")
	            AddMenuItem("领取奖励","T290jl")
		end 
		elseif(answer=="T290jl")then	            
		       if(LuaQueryTask("T290")==2)then
				LuaSetTask("T290",99) 
				LuaAddJx("combat_exp",119000,"T290")
				LuaAddAchievementSchedule("Task_num",1)
				DelLog("290") 
				UpdateMenu() 
				end

elseif(answer=="T115") then                    ------------父子相残 
		if(LuaQueryTask("T115") == 0) then
		LuaSay("司马元显：如今时机成熟，本公子正需要一个有勇有谋的英雄去帮我完成两件事，你可愿意？。")
		LuaSay("司马元显：第一件：把这壶酒送与我父亲司马道子喝下。第二件：奏请晋帝，让我代替我父的权位。")
		LuaSay("司马元显：他们都在建康的宫殿里，先将药酒赠与我父司马道子吧。期待你的好消息啊。")
		LuaSay(""..LuaQueryStr("name").."：司马道子这个老贼处处要害我，如今我便帮帮司马元显这小子。")
		LuaSetTask("T115",1) 
		LuaGive("o_mission010",1)
		AddLog("父子相残【剧情】",115)
		UpdateTopSay("帮助司马元显完成两件事")
		UpdateMenu()     
        elseif(LuaQueryTask("T115") == 1) then   
            if(LuaQueryTask("T115A") == 99 and LuaQueryTask("T115B") == 99) then 
		LuaSay("司马元显：哈哈哈..做儿子的没什么狠，只是会让他大病不起！他玩弄权势一生，现在也该休息休息了。")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T115jl")
            else
		LuaSay("司马元显：第一件：把这壶酒送与我父亲司马道子喝下。第二件：凑请晋帝，让我代替我父的权位。你还没完成。")
		LuaSay("司马元显：他们都在建康的宫殿里。期待你的好消息啊。")           
            end          
	   end
	       elseif(answer=="T115jl") then
		 if(LuaQueryTask("T115") == 1) then   
	          LuaDelTask("T115A")
		  LuaDelTask("T115B")
	          LuaSetTask("T115",99)
	          DelLog("115")
	          LuaAddJx("combat_exp",119000,"T115")
			  LuaAddAchievementSchedule("Task_num",1)
		  LuaGive("coin",1000,"T115")
	          UpdateMenu()
		  end



elseif(answer=="T299")then
	if(LuaQueryTask("T299")==0)then
		if(gender=="男性")then
			LuaSay("司马元显：敢不敢自己去当下包租公，但是我看你好像对承包土地还不怎么理解，别惊讶土地也是能承包的@!")
		else
			LuaSay("司马元显：敢不敢自己去当下包租婆，但是我看你好像对承包土地还不怎么理解，别惊讶土地也是能承包的@!")
		end
		LuaSay("司马元显：你到种植园的包租公那里去了解一下承包土地的相关事宜，建康城一直向右走你就能看见种植园了@!")
		LuaSetTask("T299",1)
		AddLog("承包土地【剧情】",299)
		UpdateMenu()
	elseif(LuaQueryTask("T299")==1)then
		LuaSay("司马元显：到种植园的包租公哪里去了解一下承包土地的相关事宜，建康城一直向右走你就能看见种植园了@!")
	elseif(LuaQueryTask("T299")==2)then
		LuaSay("司马元显：看样子你已经了解的差不多了，想要承包土地的话就去找@2种植园@0的包租公吧！")
		AddMenuItem("@7任务完成","")
		AddMenuItem("领取奖励","T299jl")
	end

	elseif(answer=="T299jl")then
		if(LuaQueryTask("T299")==2)then
			if(LuaFreeBag()>=1)then
				LuaAddJx("combat_exp",145000,"T112") 
				LuaAddAchievementSchedule("Task_num",1)	
				LuaGive("coin",1000)
				LuaGive("e_head165",1,2,"T299")
				LuaSetTask("TtaozhuangC",99)
				LuaSetTask("T299",99)
				DelLog("299")
				UpdateMenu()
			else
				LuaSay("提示：你的背包空间不足1格，请先清理背包再来领取哦@!")
			end
		end
			

--半壁江山
elseif(answer=="T385")then
	local level= LuaQuery("level")
	if(TeamCount()>=2)then
		if(LuaQueryTask("T385")==1)then
			if(TeamQueryTask("T385")>=1)then
				if(LuaQueryTask("TfindNPC_8")==1 )then
					LuaSay("司马元显：很好，谢谢你给我带来@2江山画卷[上卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_8",98)
					DelItem("o_mission417",1)
					UpdateMenu()
				elseif(LuaQueryTask("TfindNPC_8")==2)then
					LuaSay("司马元显：很好，谢谢你给我带来@2江山画卷[下卷]@0，让我及时的了解到了前方的情况。")
					LuaSetTask("T385",98)
					LuaSetTask("TfindNPC_8",98)
					DelItem("o_mission418",1)
					UpdateMenu()
				end
			else
				LuaSay("司马元显：你的队友还没接任务哇，赶快通知他接任务哦")
			end
		elseif(LuaQueryTask("T385")==98)then
			LuaSay("司马元显：你已经将一半的江山画卷送到了我的手上，快去找王振恶领取奖励吧。")

		end
	else
		LuaSay("提示：该任务需要组队才能进行下一步")	
	end





--<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<..环形任务结束

--方便测试的材料领取
--[[elseif(answer=="lingqu")then
	if(LuaQueryTask("Txhuanxing")==2)then
		coldata2={AutoSearchTask_Goods(0,LuaQueryTask("Txhxcol"))}
		LuaGive(coldata2[2],coldata2[4])
		LuaSay("领取成功")
	elseif(LuaQueryTask("Txhuanxing")==4)then
		coldata4={AutoSearchTask_Material(0,LuaQueryTask("Txhxcol"))}
		LuaGive(coldata4[2],coldata4[4])
		LuaSay("领取成功")
	elseif(LuaQueryTask("Txhuanxing")==5)then
		coldata5={AutoSearchTask_Planting(0,LuaQueryTask("Txhxcol"))}
		LuaGive(coldata5[5],1)
		LuaSay("领取成功")
	else
		LuaSay("当前任务没有材料可以领取")
	end]]

elseif(answer=="Tsnpc_13")then
	if(LuaQueryTask("Tsnpc_13")==1)then
		LuaSay(""..LuaQueryStr("name").."：我们大人一早给你写的加急信件，大人您过目一下")
		LuaSay("司马元显：嗯，好。")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_13",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_13")==2)then
		LuaSay("司马元显：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_13")then
	if(LuaQueryTask("Tenpc_13")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主英明，信件容易丢失，让我带话给你，前方战事一切良好，请大人放心")
		LuaSay("司马元显：嗯，这样就好")
		LuaSetTask("Tenpc_13",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_13")==2)then
		LuaSay("司马元显：嗯，国家平安就好啊，回去找你大人领赏吧")
	end
elseif(answer=="Tsnpc_14")then
	if(LuaQueryTask("Tsnpc_14")==1)then
		LuaSay(""..LuaQueryStr("name").."：我们大人一早给你写的加急信件，大人您过目一下")
		LuaSay("司马元显：嗯，好。")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_14",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_14")==2)then
		LuaSay("司马元显：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_14")then
	if(LuaQueryTask("Tenpc_14")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主英明，信件容易丢失，让我带话给你，前方战事一切良好，请大人放心")
		LuaSay("司马元显：嗯，这样就好")
		LuaSetTask("Tenpc_14",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_14")==2)then
		LuaSay("司马元显：嗯，国家平安就好啊，回去找你大人领赏吧")
	end

elseif(answer=="Ttaozhuang30jl")then
	local level= LuaQuery("level")
	if(level>=25)  then
		if(LuaQueryTask("Ttaozhuang30jl")==0) then
			if(LuaFreeBag()>=5)then	
				LuaSay("司马元显：恭喜您！得到@330级极品套装8件套中的5件@0。")
				LuaSay("司马元显：剩余的3件，分别将在完成：@2军营前哨处谢琰@0的@3提升士气2任务@0，@2淝水之滨处何谦@0的@3渡河任务@0。")
				LuaSay("司马元显：@2淝水对岸@0的@3鏖战万蛇【BOSS】任务@0，就能得到。")
				LuaSay("司马元显：收集并@2穿上一套炫酷的极品套装@0，就会有@3华丽的套装效果@0，让别人拜服在英明神武的您脚下吧！@!")
				LuaGive("e_sword166",1,3,"Ttaozhuang30jl")
				LuaGive("e_shoes166",1,2,"Ttaozhuang30jl")
				LuaGive("e_knife166",1,2,"Ttaozhuang30jl")
				LuaGive("e_earring166",1,2,"Ttaozhuang30jl")
				LuaGive("e_necklace166",1,2,"Ttaozhuang30jl")
				LuaSetTask("Ttaozhuang30jl",99)
				UpdateMenu() 
			else
				LuaSay("提示：请至少保留5格包裹空间，你可以去建康城钱庄老板那里把东西存仓库！") 
			end
		else
			LuaSay("司马元显：剩余的3件，分别将在完成：@2军营前哨处谢琰@0的@3提升士气2任务@0，@2淝水之滨处何谦@0的@3渡河任务@0。")
			LuaSay("司马元显：@2淝水对岸@0的@3鏖战万蛇【BOSS】任务@0，就能得到。")
			LuaSay("司马元显：收集并@2穿上一套炫酷的极品套装@0，就会有@3华丽的套装效果@0，让别人拜服在英明神武的您脚下吧！@!")
		end
	else
		LuaSay("司马元显：统一ol@3炫酷极品套装免费赠送@0，只要您达到@225级@0，就可以到我这里来领取@3炫酷拉风的极品套装@0。")
	end	



end
LuaSendMenu()
return 1
end
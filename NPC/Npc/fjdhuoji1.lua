NPCINFO = {
serial= "63" ,
base_name="fjdhuoji1",
icon= 2506, 
NpcMove=2506, 
name= "防具商人【商】" , 
--level=10 ,
iconaddr=1, 
butt="20|15|63", 
name_color = "CEFFCE" , 
lastsay="防御的关键是镶嵌！",
have_sell_item=1,
LuaType=1,
}


addBuyitem={
count=6,

--{"e_shield005" , 2000, 8 },
--{"e_shield007" , 2000, 8 },
{"e_clothes016" , 2000, 8 },
{"e_clothes019" , 2000, 8 },
{"e_pants016" , 2000, 8 },
{"e_pants019" , 2000, 8 },
{"e_head016" , 2000, 8 },
{"e_head019" , 2000, 8 },
} 
function do_talk(answer)
 if (answer=="ask") then
	havetask =0
	local havetask0=0	--默认没有
	local havetask1=0	--感叹号
	local havetask2=0	--黄色问号
	local havetask4=0	--灰色问号

	Tbprw9=LuaQueryTask("Tbprw9")
	Tbprw9_0=LuaQueryTask("Tbprw9_0")

	AddTopSayMenuItem("@7任务列表","")
	AddTopSayMenuItem("买卖","buy1")
	   -------------------
	if(LuaQueryTask("T486")==1 or LuaQueryTask("T486")==2 or LuaQueryTask("T486")==3)then
		AddTopSayMenuItem("@2知恩图报【剧情】","T486")
		if(LuaQueryTask("T486")==1) then--显示黄色
			havetask2=1
		end
		if(LuaQueryTask("T486")==2) then--显示灰色
			havetask4=1
		end
	end
	----------------
	if((LuaQueryTask("Tsnpc_47")==1 or LuaQueryTask("Tsnpc_47")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2驿站小吏","Tsnpc_47")
		if(LuaQueryTask("Tsnpc_47")==1)then
			havetask2=1
		end
	end
	if((LuaQueryTask("Tenpc_47")==1 or LuaQueryTask("Tenpc_47")==2) and LuaQueryTask("Tfjtx")==1)then
		AddTopSayMenuItem("@2千里传音","Tenpc_47")
		if(LuaQueryTask("Tenpc_47")==1)then
			havetask2=1
		end
	end
	if(LuaQueryTask("Tbprw9_0")==1) then
		AddTopSayMenuItem("@2购买物资【每日】","Tbprw9_0")
		havetask=2
	end
	if(LuaQueryTask("Tcoc")==23)then
		AddTopSayMenuItem("@2商贾向背","Tcoc")
		havetask =2
	end
if(havetask2==1)then
	havetask=2
elseif(havetask4==1)then
	havetask=4
elseif(havetask1==1)then
	havetask=1
else--(包括了havetask0=1)
	havetask=0
end
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==4) then
	AddTopSayMenuItem("聊天","liaotian","4")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1
elseif(answer=="buy1") then
    DoBuy()
elseif(answer=="liaotian") then
     LuaSay("防具店店伙计：欢迎前来购买防具。")
     
elseif(answer=="Tcoc")then---------------------商贾向背8 Tcoc===19
	if(LuaQueryTask("Tcoc")==23)then
		LuaSay("防具店店伙计：唉,洛阳太乱，加入个组织也好，算我一个吧.")
		LuaSetTask("Tcoc",24)
		LuaSetTask("T955",24)
		AddLog("商贾向背【每日】",955)
		LuaGive("coin",1000,"Tcoc")
		LuaGive("o_drug_mp4",4,"Tcoc")
		UpdateMenu()
	end 
----------------------------------------------- 知恩图报
elseif(answer=="T486")  then
	if(LuaQueryTask("T486")==1) then
		LuaSay(""..LuaQueryStr("name").."：小二哥，你有没有听说过连环铠甲")
		LuaSay("防具商人:连环铠甲！少侠真是问对地方了，连环铠甲就在我们店里")
		LuaSay(""..LuaQueryStr("name").."：请问这件铠甲多少钱出售!")
		LuaSay("防具商人 ：价钱倒不贵，就是我店有个特殊规定，只有杀了20只@2鬃毛熊@0的勇士，才有资格拿走这件衣服，@3鬃毛熊@0就在@2洛阳郊外@0哦@!")
		LuaSay(""..LuaQueryStr("name").."那就请小二哥稍等。我去去就来！")
		LuaSetTask("T486",2)
		LuaSetTask("task_kill/mon_026/T486",1)
		UpdateMenu()
	elseif(LuaQueryTask("T486")==2) then
		if(LuaQueryTask("task_kill/mon_026/T486")>=21) then
			LuaSay("防具商人:少侠真是神勇，这么快就杀了20只鬃毛熊，这件铠甲就给你吧,快把他拿给@3符坚@0吧")
	        LuaGive("o_mission330",1)
	        LuaSetTask("T486",3)
		    LuaGive("coin",3000,"T486")
		    UpdateMenu()
		    UpdateNPCMenu("fujian")
		else
		LuaSay("少侠杀够20只鬃毛熊了吗？它们就在@2洛阳郊外@0")
		end
	elseif(LuaQueryTask("T486")==3) then
		LuaSay("防具商人:铠甲已经给你了，快把他拿给@3符坚@0吧")
	end
elseif(answer=="Tbprw9_0")  then
	if(LuaQueryStrTask("Tbprw9day")==GetCurrentDay())then
		if(LuaQueryTask("Tbprw9_0")==1) then
			LuaSay(""..LuaQueryStr("name").."：我奉晋帝的圣旨前来购买@3晋国御用防具@0，还望行个方便。")
			LuaSay("防具商人：购买@3晋国御用防具@0要使用@33000铜币@0")
			AddMenuItem("选择列表","")
			AddMenuItem("买","YES")
			AddMenuItem("不买","NO1")
		end
		if(LuaQueryTask("Tbprw9")==2) then
			LuaSay("防具商人：快去把@3晋国御用防具@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
		end
	else
		LuaSay("防具商人：新的一天，新的开始，你今天以前的@3购买物资【每日】@0任务还没完成！")
		LuaSay("防具商人：现在到@4宫殿@0找@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0重新接取任务@3购买物资【每日】@0任务吧！")
	end
elseif(answer=="YES") then
	if(LuaQueryTask("Tbprw9_0")== 1) then
		if(LuaItemCount("coin")>=3000) then
			LuaGive("o_mission402",1)
			LuaGive("coin",-3000,"Tbprw9")
			LuaSay("防具商人：快去把@3晋国御用防具@0送给@4宫殿@0的@3晋帝@0或者@4帮派主寨@0的@3帮派总管@0吧！")
			LuaSetTask("Tbprw9",2)
			LuaSetTask("Tbprw9_0",99)
		elseif(LuaItemCount("coin")<3000) then
			LuaSay("防具商人：你身上只有@3"..LuaItemCount("coin").."铜币@0,不足@330000铜币@0啊！")
			LuaSay("防具商人：你虽然是晋帝派来买@3晋国御用防具@0的，但也不能让我做亏本生意啊！")
		end
	end
elseif(answer=="NO1") then
	if(LuaQueryTask("Tbprw9_0")== 1) then
		LuaSay("防具商人：这么小气，@33000铜币@0都不愿出。")
		LuaSay("防具商人：听说晋帝很大气哦，你替他办事，他绝对不会亏待你的。")
		LuaSay("防具商人：还是买吧，回去好交差。")
		AddMenuItem("选择列表","")
        AddMenuItem("买","YES")
	    AddMenuItem("不买","NO2")
	end
elseif(answer=="NO2") then
	if(LuaQueryTask("Tbprw9_0")== 1) then
		LuaSay("防具商人：哎，不买就算了吧，我也不强迫你，可怜我快穷死了。")
	end



elseif(answer=="Tsnpc_47")then
	if(LuaQueryTask("Tsnpc_47")==1)then
		LuaSay(""..LuaQueryStr("name").."：这是大人给你的@4富甲天下@0的信件")
		LuaSay("防具商人：我先看看，回去替我问候大人")
		DelItem("o_mission426",1)
		LuaSetTask("Tsnpc_47",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tsnpc_47")==2)then
		LuaSay("防具商人：信我看到了，你回去复命吧。")
	end
elseif(answer=="Tenpc_47")then
	if(LuaQueryTask("Tenpc_47")==1)then
		LuaSay(""..LuaQueryStr("name").."：我主神勇，信件容易丢失，让我带话给你，说前方一切稳定")
		LuaSay("防具商人：这都是大人的功劳啊")
		LuaSetTask("Tenpc_47",2)
		UpdateMenu()
	elseif(LuaQueryTask("Tenpc_47")==2)then
		LuaSay("防具商人：话已经带到了，快回去领取奖励吧")
	end

end
LuaSendMenu()
return 1
end
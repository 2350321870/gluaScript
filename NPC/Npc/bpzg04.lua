NPCINFO = { 
serial="60" ,
base_name="bpzg04" ,
icon=2567,
NpcMove=2567 ,
name="德明张" ,
iconaddr=1 ,
butt="10|15|62" ,

lastsay="帮主万岁万岁万万岁！",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then 
	havetask =0 
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7选项","")
	AddTopSayMenuItem("@3物资供给","Twzgj")
	--AddTopSayMenuItem("@3帮贡换奖励","bghjl")
        AddTopSayMenuItem("@3战场巡视","Tpt5")
	AddTopSayMenuItem("@3离开地图","Tpt6")
	AddTopSayMenuItem("@3聊天","liaotian ")

	return 1
--------------------------------------------------------------------------------------------------------------------		
elseif(answer=="liaotian")then
	LuaSay("床前明月光，疑是地上霜，举头望明月，我叫德明张！")
elseif(answer=="Twzgj") then 
	local level= LuaQuery("level")
	if(GetCurrentDay()~=LuaQueryStrTask("Twzgjday")) then
		LuaSetTask("Twzgj",0)
	end
	if(LuaQueryTask("Twzgj")==0) then
		if(level>14) then
			LuaSay("提示：三军未动粮草先行，这是@3价值1w6的20个蓝药，20个红药@0，派送药品是无法赠送他人的哦") 
			LuaSetTask("Twzgj",99)
			LuaSetTask("Twzgjday",GetCurrentDay())
			LuaGive("o_drug_hp4",20,"Twzgj")
			LuaGive("o_drug_mp4",20,"Twzgj")
		else
			LuaSay("提示：达到15级的玩家，每日可领取价值1w6的药品")
		end
	else
		LuaSay("提示：你已经领取了今天的药品派送，明天再来吧")
	end
elseif(answer=="bghjl")then
	if(GetCurrentDay()~=LuaQueryStrTask("bghjlday"))then 
		LuaSetTask("bghjl",0)
	else
		LuaSay("一天只能兑换一次，一次消耗10点帮贡，你还是明天来吧！注意自己是否有帮贡！")
	end
	if(LuaQueryTask("bghjl")==0)then
		GetEquipByOffer() 
		LuaSay("你耗费10点帮贡换取了奖励，一天只能一次机会，谢谢惠顾!")
		LuaSetTask("bghjlday",GetCurrentDay())
		LuaSetTask("bghjl",99)
	else
		LuaSay("你今天的兑换机会用过了")
	end

elseif(answer=="Tpt5")then 
	if(LuaQueryTask("Tpt5")==1)then
		LuaSay("哦,这位兄弟，我看你眉宇宣扬，定是组织上派来的人，看来组织上还没忘记我！好了你在战斗结束后，再回复上头领奖励了！不过既然来了，看下你是否有意为小弟将这里BOSS给干掉一个。")
		LuaSetTask("Tpt5",2)
	elseif(LuaQueryTask("Tpt5")==2)then
		LuaSay("哦,这位兄弟，你还不回去复命！这两帮战斗我站中间，每天都挨几下冤枉刀，真是命苦呀！")
        elseif(LuaQueryTask("Tpt5")==99)then
		LuaSay("哦,这位兄弟，你任务都做完了！明天可以再来")
	else
		LuaSay("小子，你哪个单位的？东张西望？难道你进来时，@3战争使者@0没叫你带来任务？那可是有丰厚的奖励呀")
	end
    
elseif(answer=="Tpt6")then
	ChangeMap("lu_jkc")
---------------
end 
LuaSendMenu()
return 1
end 

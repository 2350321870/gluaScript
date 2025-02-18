NPCINFO = {
serial= "121" ,
base_name="shiwei02" ,
icon= 2537,
NpcMove=2537,
name= "侍卫乙" ,
iconaddr=1, 
butt="10|10|54", 
name_color = "CEFFCE" ,
lastsay="想要进入宫殿，就得给钱",
LuaType=1,
}
function do_talk(answer)
name=LuaQueryStr("name")
if (answer=="ask") then
AddTopSayMenuItem("@7任务列表","","0")
        if(LuaQueryTask("T1000B") == 0)  then
	AddTopSayMenuItem("侍卫通传","T1000B")
	havetask ==1
	end
	if(LuaQueryTask("T730") == 0)  then
	AddTopSayMenuItem("越境偷袭帮派","T730")
	havetask ==1
	end
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end

return 1
elseif(answer=="T1000B") then
if(LuaQueryTask("T1000B") ==0 or LuaQueryTask("T1000B") == 88) then
	LuaSay(""..name.."：这位官爷，在下有要事入宫面圣，还望行个方便！")
	LuaSay("侍卫乙：尔等不甚烦扰，扰我兄弟繁多，怎么也得意思意思吧？")
	AddTopSayMenuItem("@7意思意思?","")
	AddMenuItem("打赏200铜币","YES","")
	AddMenuItem("贿赂20000铜币","NO","")
end
elseif(answer=="YES") then
        if(LuaItemCount("coin") >= 200  ) then
		LuaGive("coin",-200,"T1000B")    
		LuaSetTask("T1000B",1)
		LuaSay("侍卫乙：算你还懂规矩，我对面的兄弟，是不是？呵呵，你懂就好！")
		UpdateMenu()
	else
		LuaSay(""..name.."：呃……在下携带铜币不足@3200@0，叨扰了。")
	end
elseif(answer=="NO") then
	if(LuaItemCount("coin") >= 20000  ) then
		LuaGive("coin",-20000,"T1000B")    
		LuaSetTask("T1000B",99)
		LuaSetTask("T1000A",99)
		LuaSay(""..name.."：小小意思，不成敬意，还望大哥与众兄弟以后行个方便！")
		LuaSay("侍卫乙：哎呀！阁下出手不凡，来日绝非池中之物，兄弟们尽皆仰慕啊！以后出入宫殿不再为难阁下！")
		LuaAdd("repute",1)
		UpdateMenu()
	else
		LuaSay(""..name.."：呃……在下携带铜币不足@320000@0，叨扰了。")
	end
elseif(answer=="T730") then
	if(GetCurrentDay()~=LuaQueryStrTask("T730Day")) then
		LuaSetTask("T730",0)
	end 
	if(LuaQueryTask("T730")==0) then  
		LuaSay("周天子：尔等忠勇为国，孤又得卿15万铜币相助，孤每日奖励卿5000铜币，再与帮派1000，以表孤之爱才之心！")
		LuaGive("coin",5000,"bprx")
		LuaSetTask("T730",1)
		LuaSetTask("T730Day",GetCurrentDay())
	end

end
LuaSendMenu()
return 1
end

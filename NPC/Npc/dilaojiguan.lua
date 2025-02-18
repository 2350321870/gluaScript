NPCINFO = {
serial="21" ,
base_name="dilaojiguan" ,
icon=2539,
NpcMove=2539 ,
name="地牢机关" ,
iconaddr=1 ,
butt="10|10|65" ,
name_color="CEFFCE" ,
lastsay="开启机关后可直接出去" ,
LuaType=1,
}
function do_talk(answer)                    
if (answer=="ask") then
        havetask =0
	local level= LuaQuery("level")
	local T241= LuaQueryTask("T241")
	AddTopSayMenuItem("@7任务列表","")		--9  4 
	if(Tdilaojiguan~=99) then
	AddTopSayMenuItem("开启机关（地牢）","Tdilaojiguan")
	havetask =1
	end	
	AddTopSayMenuItem("石窟机关（副本）","Tfbskyi")
	if(havetask ==2)then
		AddTopSayMenuItem("说明","liaotian","2")
	elseif(havetask ==1) then
		AddTopSayMenuItem("说明","liaotian","1")
	else
		AddTopSayMenuItem("说明","liaotian","0")
	end 	
	return 1

elseif(answer=="liaotian")then
	LuaSay("提示：当a桶中只有7桶水时，成功开启机关")

elseif(answer=="Tdilaojiguan")then		--针对单个人的机关     
	LuaSay("提示：a可装9桶水，b可装4桶水，当a内只有7桶水时，开启机关成功，目前ab均为空桶")
		AddMenuItem("@7如何操作","")
		if(LuaQueryTask("Tdilaojiguana")==7) then
			AddMenuItem("机关开启成功","ok")
		else
			AddMenuItem("将a装满","a")
			AddMenuItem("将b装满","b")
			AddMenuItem("将a清空","c")
			AddMenuItem("将b清空","d")
			AddMenuItem("将a中的水倒入b中","e")
			AddMenuItem("将b中的水倒入a中","f")
		end

	elseif(answer=="a") then
		LuaSetTask("Tdilaojiguana",9)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")
	elseif(answer=="b") then
		LuaSetTask("Tdilaojiguanb",4)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")
	elseif(answer=="c") then
		LuaSetTask("Tdilaojiguana",0)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="d") then
		LuaSetTask("Tdilaojiguanb",0)
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="e") then		--a倒入b
		local a=LuaQueryTask("Tdilaojiguana")	--a中的水
		local b=LuaQueryTask("Tdilaojiguanb")	--b中的水
		if(a<=4-b) then			--倒之后ab中的水
			LuaSetTask("Tdilaojiguana",0)
			LuaAddTask("Tdilaojiguanb",a)
		else
			LuaAddTask("Tdilaojiguana",b-4)
			LuaSetTask("Tdilaojiguanb",4)
		end
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="f") then		--b倒入a
		local a=LuaQueryTask("Tdilaojiguana")	--a中的水
		local b=LuaQueryTask("Tdilaojiguanb")	--b中的水
		if(9-a>=b) then			--倒之后ab中的水
			LuaSetTask("Tdilaojiguanb",0)
			LuaAddTask("Tdilaojiguana",b)
		else
			LuaAddTask("Tdilaojiguanb",a-9)
			LuaSetTask("Tdilaojiguana",9)
		end
		LuaAddTask("Tdljgtime",1)
		DoTalk("Tdilaojiguan")

	elseif(answer=="ok") then		--成功开启机关
		LuaSay("提示：你总共用了@3"..LuaQueryTask("Tdljgtime").."@0步，成功的开启了机关")
		LuaDelTask("Tdljgtime")
		LuaDelTask("Tdilaojiguana")
		LuaDelTask("Tdilaojiguanb")

elseif(answer=="Tfbskyi")then		--公共机关：如何1人开启，其他人可以进呢？每个地图1个；该副本使用的公共参数 
	local mapname=MapName()
	local a
	if(mapname=="lu_shikuyi") then
	a=1
	elseif(mapname=="lu_shikuyi1") then
	a=2
	elseif(mapname=="lu_shikuyi2") then
	a=3
	elseif(mapname=="lu_shikuyi3") then
	a=4
	elseif(mapname=="lu_shikuyi4") then
	a=5
	elseif(mapname=="lu_shikuyi5") then
	a=6
	end
	LuaSetTemp("a",a)
	LuaSay("提示：a可装9桶水，b可装4桶水，当a内只有7桶水时，开启机关成功，目前ab均为空桶")
		AddMenuItem("@7如何操作","")
		if(LuaPublicQuery("Tfbskyi"..a.."a")==7) then--该副本使用的公共参数 
			AddMenuItem("机关开启成功","ok1")
		else
			AddMenuItem("将a装满","a1")
			AddMenuItem("将b装满","b1")
			AddMenuItem("将a清空","c1")
			AddMenuItem("将b清空","d1")
			AddMenuItem("将a中的水倒入b中","e1")
			AddMenuItem("将b中的水倒入a中","f1")
		end

	elseif(answer=="a1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."a",9)
		DoTalk("Tfbskyi")
	elseif(answer=="b1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."b",4)
		DoTalk("Tfbskyi")
	elseif(answer=="c1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."a",0)
		DoTalk("Tfbskyi")

	elseif(answer=="d1") then
		local a=LuaQueryTemp("a")
		LuaPublicSet("Tfbskyi"..a.."b",0)
		DoTalk("Tfbskyi")

	elseif(answer=="e1") then		--a倒入b
		local a=LuaPublicQuery("Tfbskyi"..a.."a")	--a中的水
		local b=LuaPublicQuery("Tfbskyi"..a.."b")	--b中的水
		if(a<=4-b) then			--倒之后ab中的水
			LuaPublicSet("Tfbskyi"..a.."a",0)
			LuaPublicAdd("Tfbskyi"..a.."b",a)
		else
			LuaPublicAdd("Tfbskyi"..a.."a",b-4)
			LuaPublicSet("Tfbskyi"..a.."b",4)
		end
		DoTalk("Tfbskyi")

	elseif(answer=="f1") then		--b倒入a
		local a=LuaPublicQuery("Tfbskyi"..a.."a")	--a中的水
		local b=LuaPublicQuery("Tfbskyi"..a.."b")	--b中的水
		if(9-a>=b) then			--倒之后ab中的水
			LuaPublicSet("Tfbskyi"..a.."b",0)
			LuaPublicAdd("Tfbskyi"..a.."a",b)
		else
			LuaPublicAdd("Tfbskyi"..a.."b",a-9)
			LuaPublicSet("Tfbskyi"..a.."a",9)
		end
		DoTalk("Tfbskyi")

	elseif(answer=="ok1") then		--成功开启机关
		LuaSay("提示：成功的开启了机关")
		LuaPublicDel("Tfbskyi"..a.."a")
		LuaPublicDel("Tfbskyi"..a.."b")

end 
LuaSendMenu()
return 1
end
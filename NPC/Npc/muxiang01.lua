NPCINFO = {
serial= "21" ,
base_name="muxiang01",
icon= 2589,
NpcMove=2589,
name= "木箱" , --NPC名
iconaddr=1, --图片放的位置1服务器2客户端
butt="10|10|28", --碰撞 碰撞区长|碰撞区宽|角色高
name_color = "CEFFCE" , 
LuaType=1,
lastsay="此地无银三百两",
}
function do_talk(answer)
if (answer=="ask") then
	local T294=LuaQueryTask("T294")
	local T294A=LuaQueryTask("T294A")
	local level= LuaQuery("level")
    AddTopSayMenuItem("@7任务列表","")
		if(T294==1 and T294A==0)  then
			AddTopSayMenuItem("打开箱子","T294A")
			end
		if(level >15)  then
			AddTopSayMenuItem("@7使用铁钥匙@0","usekey1")	
			AddTopSayMenuItem("@7使用铜钥匙@0","usekey2")	
			AddTopSayMenuItem("@7使用银钥匙@0","usekey3")	
			AddTopSayMenuItem("@7使用金钥匙@0","usekey4")	
			AddTopSayMenuItem("@7使用玉钥匙@0","usekey5")	

		end
			AddTopSayMenuItem("@6抢开箱子活动说明","info")		
-------------------------------------------------------------------------
if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1
-------------------------------------------------------------------------
elseif(answer=="T294A") then	
  if(LuaQueryTask("T294A")==0) then 
    LuaGive("o_mission048",1)
    LuaSetTask("T294A",99)
    LuaSay("提示：你得到一个@2手稿@0") 
    UpdateMenu()
  end

elseif(answer=="usekey1" or answer=="usekey2" or answer=="usekey3" or answer=="usekey4" or answer=="usekey5") then
	local level= LuaQuery("level")
	if(LuaQuery("hp")>0)then		--若角色死亡前打开了菜单，防止等待开锁
		lockn=LuaGetLockNum()
		if(lockn~=0)then		--防止无锁时消耗钥匙，先判断一次是否有锁
			if(answer=="usekey1")then
				key_n=1
				key_unlock=30		--30%几率打开
			elseif(answer=="usekey2")then
				key_n=2
				key_unlock=45
			elseif(answer=="usekey3")then
				key_n=3
				key_unlock=55
			elseif(answer=="usekey4")then
				key_n=4
				key_unlock=70
			elseif(answer=="usekey5")then
				key_n=5
				key_unlock=80
			end
			if(LuaItemStatusNormalCount("o_key"..(key_n+99).."")>=1)then							--是否有钥匙
				usekeytime=LuaQueryTask("usekeytime")
				cd=lockn*12		--按层数设CD，最多60，最少12秒
				if(usekeytime+cd<GetCurrentTime())then							--使用钥匙CD秒
					if(LuaRandom(100)<key_unlock-5*(5-lockn))then				--几率与钥匙种类和锁数相关，
						locknum=LuaSaveUnlock()						--/发送宝箱开锁请求，并返回本次开锁层数(locknum)

						if(locknum==0) then 								--已被别人打开
							LuaSay("提示：这个宝箱已被人打开了，里面空空如也")
						elseif(locknum==1)then							--打开最后一道
							DelItem("o_key"..(key_n+99).."",1)					--删除1个所选用钥匙
							LuaSetTask("usekeytime",GetCurrentTime())
							LuaSay("提示：你成功打开了最后一道锁，得到了里面的宝贝")
							if(LuaRandom(5)<4)then						
								money=LuaRandom(20000)+1
								LuaGive("coin",money,"Tunlockbox")
								if(money>10000)then
								LuaNotice("@2"..LuaQueryStr("name").."@0开宝箱得到@2"..money.."铜币。@0")
								end
							end
							rb=LuaRandom(10)
							if(rb==2)then
								LuaGive("o_cangbaotu",1,"Tunlockbox")
								LuaNotice("@2"..LuaQueryStr("name").."@0在箱底发现了一张@2藏宝图@0")
							--elseif(rb==3)then
							--	LuaGive("o_fatescroll",1,"Tunlockbox")
							--	LuaNotice("@2"..LuaQueryStr("name").."@0在箱底发现了一个奇怪的@2天机卷轴@0")
							end
							if(LuaRandom(10)<9)then
								LuaGive("o_material_"..(11+9*LuaRandom(6)).."",1,"Tunlockbox") 	--1级材料随其一
							end
							if(LuaRandom(5)<3)then
								LuaGive("o_material_"..(12+9*LuaRandom(6)).."",1,"Tunlockbox") 	--2级材料随其一
							end
							if(LuaRandom(10)<3)then
								LuaGive("o_material_"..(13+9*LuaRandom(6)).."",1,"Tunlockbox") 	--3级材料随其一
							end
							if(LuaRandom(11)<1)then
								LuaGive("o_material_"..(14+9*LuaRandom(6)).."",1,"Tunlockbox") 	--4级材料随其一
								LuaNotice("@2"..LuaQueryStr("name").."@0开宝箱得到@24级材料@0一个")
							end
							if(LuaRandom(50)<1)then
								LuaGive("o_material_"..(15+9*LuaRandom(6)).."",1,"Tunlockbox")	--5级材料随其一
								LuaNotice("@2"..LuaQueryStr("name").."@0开宝箱得到@25级材料@0一个")
							end
							
						else										
							level= LuaQuery("level")
							DelItem("o_key"..(key_n+99).."",1)					
							LuaSetTask("usekeytime",GetCurrentTime())
							LuaSay("提示：你成功打开了第"..(6-locknum).."道锁")		--提示锁层数从外向内
							if(LuaRandom(10)<3)then						
								LuaGive("coin",LuaRandom(8000)+2000,"Tunlockbox")
							end
						end										
					else
						DelItem("o_key"..(key_n+99).."",1)
						LuaSetTask("usekeytime",GetCurrentTime())
						LuaSay("提示：你的钥匙不小心弄断了")
					end

				else
					LuaSay("提示：你还需要"..(usekeytime+cd-GetCurrentTime()).."秒才能使用钥匙.")
				end
			else
				LuaSay("提示：你没有带这种钥匙.想开箱子就去士兵乙那里购买吧。")		
			end
		else
		LuaSay("提示：这个宝箱已被人打开了，里面空空如也")
		end
	else
	LuaSay("提示：角色已死亡不能开锁")
	end
elseif(answer=="info") then	
	local level= LuaQuery("level")
	if(level<=15)then
	LuaSay("@1提示:@016级以上才能参加开箱子")
	end
	LuaSay("这个宝箱每隔一定时间会有人藏上东西，并加上5层锁，如果你听到有人藏宝的消息，不妨去@2饰品商人@0那里买上几把钥匙来试试运气。")
	LuaSay("@6每次使用钥匙都会消耗掉一个钥匙，无论是否成功开启")
	LuaSay("@6使用钥匙开箱后需要一定时间间隔才能再次使用钥匙，剩余锁数越少，间隔越短")
	LuaSay("@6开启箱子成功几率与钥匙和锁数相关，好的钥匙开锁几率高，即同样的钥匙下一层的锁要比上一层难开")
	LuaSay("@6开启箱子前4层会有机率得到一定量的铜币，开启最后一层有机率得到铜币、各种礼包并有机会开出7级材料")
end
LuaSendMenu()
return 1
end    	
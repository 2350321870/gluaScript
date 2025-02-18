function do_use()
	LuaDelTask("Tlx_coin")
	LuaDelTask("Tlx_jy")
	if(LuaQueryTask("Tlx_max")~=0) then
		local d=floor(LuaQueryTask("Tlx_max")/86400)  --天        Tlx_max--为最大离线时间
		local h=floor((LuaQueryTask("Tlx_max")-d*86400)/3600)  --小时
		local f=floor((LuaQueryTask("Tlx_max")-d*86400-h*3600)/60)  --分钟
		local tS_lx="你@2最长的离线时间@0为："
		if(d~=0) then  --离线时间>=1天
			if(h~=0) then  
				if(f~=0) then
					tS_lx=tS_lx.."@3"..d.."天零"..h.."小时"..f.."分@0"
				else  --f==0
					tS_lx=tS_lx.."@3"..d.."天零"..h.."小时@0"
				end
			else --h==0
				if(f~=0) then
					tS_lx=tS_lx.."@3"..d.."天零"..f.."分钟@0"
				else  --f==0
					tS_lx=tS_lx.."@3"..d.."天整@0"
				end
			end
		else  --d==0
			if(h~=0) then  
				if(f~=0) then
					tS_lx=tS_lx.."@3"..h.."小时零"..f.."分@0"
				else --f==0
					tS_lx=tS_lx.."@3"..h.."小时整@0"
				end
			else  --h==0
				if(f~=0) then
					tS_lx=tS_lx..""..f.."分钟@0"
				else  --f==0  防止离线不足1分钟   d h f都为0
					tS_lx=tS_lx.."@3不足1分钟..@0"
				end
			end
		end
		--[[设定：  1-10级   离线经验为1-10级升级经验基数+离线经验  	只要离线就能领取
					10-20级  离线经验为10-14级升级经验基数+离线经验  	20分钟领取一次
					正常离线经验：1小时一下不能领取  1-6小时花钱补足6小时领取6小时经验，6小时以上可以花双倍的钱领取双倍，如果双倍花费超过150000则出现花费20通宝领取双倍]]
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
		if(level<10) then--小于10级
			LuaSay(""..tS_lx.."，你现在的等级为@2"..level.."级@0，可免费领取离线经验")
			local jy=floor(90424+LuaQueryTask("Tlx_max")/3600*7000)  --经验   --90424为1级升至10的经验   LuaQueryTask("Tlx_max")/3600*7000为5个小时升至11级
			LuaSetTask("Tlx_jy",jy)
		elseif(level<20) then--小于20级
			if(floor(LuaQueryTask("Tlx_max")/60)<20) then --离线小于20分钟 -->不能领取
				LuaSay(""..tS_lx.."，@5不足20分钟@0，不能领取离线经验")
			else
				LuaSay(""..tS_lx.."，你现在的等级为@2"..level.."级@0，可免费领取离线经验")
				local jy=floor(249617+LuaQueryTask("Tlx_max")/3600*15000)  --经验   --249617为11级升至14级经验	LuaQueryTask("Tlx_max")/3600*15000为8个小时升至15级
				LuaSetTask("Tlx_jy",jy)
			end
		else  -->=20级  领取正常离线经验
			if(floor(LuaQueryTask("Tlx_max")/3600)>=6) then  --离线超过6小时
				LuaSay(""..tS_lx.."")
				local coin=floor(level^2*LuaQueryTask("Tlx_max")/3600*2) --花费铜币
				local jy=floor(level^2*(LuaQueryTask("Tlx_max")-6*3600)/3600*300/24+level^2*2000/24)  --经验
				--level*(LuaQueryTask("Tlx_max")-6*3600)/3600*300   为每小时增长经验（6小时以下花铜补足设置Tlx_max=6*3600）  
				--level*2000 为保底经验（6小时以下补铜领6小时）
				if(jy>100000000) then --上限为1亿经验 
					LuaSay("你的离线经验@2超过1亿@0，@5只能领取一亿经验（双倍两亿）@0")
					jy=100000000
				end
				LuaSetTask("Tlx_coin",coin)
				LuaSetTask("Tlx_jy",jy)
			elseif(floor(LuaQueryTask("Tlx_max")/3600)>=1) then  --离线1-6小时间
				LuaSay(""..tS_lx.."，@5不足6个小时@0，可以@7花费铜币补足离线时间6小时@0来领取离线经验！")
				local coin=floor(level^2*(6*3600-LuaQueryTask("Tlx_max"))/3600*3+level^2*LuaQueryTask("Tlx_max")/3600*2) --花费铜币
				local jy=floor(level^2*2000/24)  --经验
				LuaSetTask("Tlx_coin",coin)
				LuaSetTask("Tlx_jy",jy)
			else  --离线不足一小时
				LuaSay(""..tS_lx.."，@5不足1个小时@0，不能领取离线经验")
			end
		end
		if(LuaQueryTask("Tlx_jy")~=0) then
			if(level<20) then
				AddMenuItem("@2免费@0领取@3"..LuaQueryTask("Tlx_jy").."经验@0","sysinfo o_mission516 m","离线经验")
				AddMenuItem("放弃领取离线经验","none","离线经验")
			else
				if(floor(LuaQueryTask("Tlx_max")/3600)>=6) then --离线大于6小时
					if(floor(LuaQueryTask("Tlx_coin")*1.9)>=150000) then  --有通宝领经验的选项
						AddMenuItem("花费@2"..LuaQueryTask("Tlx_coin").."铜币@0领取@3"..LuaQueryTask("Tlx_jy").."经验@0","sysinfo o_mission516 x","离线经验")
						AddMenuItem("花费@2"..floor(LuaQueryTask("Tlx_coin")*1.9).."铜币@0领取@3双倍经验@0（@2"..2*LuaQueryTask("Tlx_jy").."@0经验）","sysinfo o_mission516 y","离线经验")
						AddMenuItem("花费@220通宝@0领取@3双倍经验@0（@2"..2*LuaQueryTask("Tlx_jy").."@0经验）","sysinfo o_mission516 v","离线经验")
						AddMenuItem("放弃领取离线经验","none","离线经验")
					else --双倍消耗铜币没有15w以上 -->没有通宝领经验的选项
						AddMenuItem("花费@2"..LuaQueryTask("Tlx_coin").."铜币@0领取@3"..LuaQueryTask("Tlx_jy").."经验@0","sysinfo o_mission516 x","离线经验")
						AddMenuItem("花费@2"..floor(LuaQueryTask("Tlx_coin")*1.9).."铜币@0领取@3双倍经验@0（@2"..2*LuaQueryTask("Tlx_jy").."@0经验）","sysinfo o_mission516 y","离线经验")
						AddMenuItem("放弃领取离线经验","none","离线经验")
					end
				else--离线时间<6小时 >=1小时
					AddMenuItem("花费@2"..LuaQueryTask("Tlx_coin").."铜币@0补足离线6小时离线 领取@3"..LuaQueryTask("Tlx_jy").."经验@0","sysinfo o_mission516 z","离线经验")
					AddMenuItem("放弃领取离线经验","none","离线经验")
				end
			end
		end
	elseif(LuaQueryTask("Tlx_max")==0) then
		LuaSay("@2你的离线经验已经领取@0，不能再领取了")
	end		
	LuaOtherSendMenu()
	return 0 
end	
function nc_combine(type)
	if(type=="x") then  --6小时以上领取一倍离线
		--LuaPrint("Tlx_max的值为："..LuaQueryTask("Tlx_max").."")
		if(LuaItemCount("coin")>=LuaQueryTask("Tlx_coin")) then
			LuaSay("恭喜你领取离线经验成功，获得@3"..LuaQueryTask("Tlx_jy").."经验@0")
			LuaGive("coin",-LuaQueryTask("Tlx_coin"),"Tlx")
			LuaAddJx("combat_exp",LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
			LuaOtherSendMenu()
		else
			LuaSay("你身上的铜币不足"..LuaQueryTask("Tlx_coin").."，凑够钱到@2建康城@0处@7系统公告-离线经验@0领取离线经验吧")
			LuaOtherSendMenu()
		end
	elseif(type=="y") then  --6小时以上领取2倍离线
		--LuaPrint("Tlx_max的值为："..LuaQueryTask("Tlx_max").."")
		if(LuaItemCount("coin")>=floor(LuaQueryTask("Tlx_coin")*1.9)) then
			LuaSay("恭喜你领取离线经验成功，获得@3"..2*LuaQueryTask("Tlx_jy").."经验@0")
			LuaGive("coin",-floor(LuaQueryTask("Tlx_coin")*1.9),"Tlx")
			LuaAddJx("combat_exp",2*LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
		else
			LuaSay("你身上的铜币不足"..floor(LuaQueryTask("Tlx_coin")*1.9).."，凑够钱到@2建康城@0的@3布告牌@0处@7系统公告-离线经验@0领取离线经验吧")
		end
	elseif(type=="z") then  --离线时间<6小时 >=1小时
		if(LuaItemCount("coin")>=LuaQueryTask("Tlx_coin")) then
			LuaSay("恭喜你领取离线经验成功，获得@3"..LuaQueryTask("Tlx_jy").."经验@0")
			LuaGive("coin",-LuaQueryTask("Tlx_coin"),"Tlx")
			LuaAddJx("combat_exp",LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
		else
			LuaSay("你身上的铜币不足"..LuaQueryTask("Tlx_coin").."，凑够钱到@2建康城@0处@7系统公告-离线经验@0领取离线经验吧")
		end
	elseif(type=="v") then  --通宝领取
		if(LuaItemCount("o_gold1y") >=20) then 
			LuaSay("恭喜你领取离线经验成功，获得@3"..2*LuaQueryTask("Tlx_jy").."经验@0")
			DelItem("o_gold1y",20,"Tlx")
			LuaAddJx("combat_exp",2*LuaQueryTask("Tlx_jy"),"Tlx")
			LuaDelTask("Tlx_max")
			LuaDelTask("Tlx_now")
			LuaDelTask("Tlx_coin")
			LuaDelTask("Tlx_jy")
		else
			LuaSay("你身上没有@220通宝@0，可到@5[商城-元宝-其他]@0中购买后到@2建康城@0处@7系统公告-离线经验@0领取离线经验吧")
		end
	elseif(type=="m") then  --20级一下领取
		LuaSay("恭喜你领取免费离线经验成功，获得@3"..LuaQueryTask("Tlx_jy").."经验@0")
		LuaAddJx("combat_exp",LuaQueryTask("Tlx_jy"),"Tlx")
		LuaDelTask("Tlx_max")
		LuaDelTask("Tlx_now")
		LuaDelTask("Tlx_coin")
		LuaDelTask("Tlx_jy")	
	end
	LuaOtherSendMenu()
	return 0 
end
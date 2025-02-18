function do_use()
	local map=MapName()
	local num=getnum()
	local level=LuaQuery("level")
	if(map=="lu_zzy01" or map=="lu_zzy02")then
		if(gettrue()==1)then
			if(LuaPublicQuery(""..map.."/"..num.."/gs")==0 or LuaPublicQuery(""..map.."/"..num.."/cbq")==0  )then 
				LuaShowNotify("这块土地还没被承包！或承包期已经为0,不能投毒")
			else
					local r=LuaRandom(3)
					if(LuaPublicQuery(""..map.."/"..num.."/bh")==1 and r==2)then
						LocalMsg("呔！"..LuaQueryStr("name").."妄想投毒"..num.."号农场，被保安当场抓住并扭送进了局子,真是不幸啊！")
						ChangeMap("lu_dilao")
					end
					LuaPublicAdd(""..map.."/"..num.."/cbq",-10)
					LuaPublicAdd(""..map.."/"..num.."/exp",-100)
					LuaShowNotify("第"..num.."号农场获得你的投毒效果，承包期减少10点，植物成长度下降100点")
					LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tcj")
					LuaOtherSendMenu()
					return 1	
			end
		else
			LuaShowNotify("到土地上进行投毒哦，坏要坏在点子上")
		end
	else
		LuaShowNotify("该物品只能在种植园中使用！")
	end
end
function getnum()
	local x=LuaQueryTemp("posx")
	local y=LuaQueryTemp("posy")
	n=floor (x/255)
	if(y<232)then
		n=n+1
	else
		n=n+11
	end
	return n
end

function gettrue()
	local x=LuaQueryTemp("posx")
	local y=LuaQueryTemp("posy")
	local Xvalue=0
	local Yvalue=0
	for i=1,10,1 do
		if((x-(i-1)*256)>32 and (x-(i-1)*256)<=224)then
			Xvalue=1
			break
		else
			Xvalue=0
		end
	end
	if((y>248 and y<=336) or (y>25 and y<=112))then----经实际测试调整了坐标
		Yvalue=1
	else
		Yvalue=0
	end
	if(Xvalue==1 and Yvalue==1)then
		return 1
	else
		return 0
	end
end
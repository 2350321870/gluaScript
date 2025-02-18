function do_use()
local map=MapName()
local num=getnum()
local level=LuaQuery("level")
	if(map=="lu_zzy01" or map=="lu_zzy02")then
		if(gettrue()==1)then
			if(LuaPublicQuery(""..map.."/"..num.."/gs")==0 )then 
				LuaShowNotify("这块土地还没被承包！你的施肥毫无反应")
			else
				
					LuaPublicAdd(""..map.."/"..num.."/cbq",10)
					LuaPublicAdd(""..map.."/"..num.."/exp",100)
					LuaShowNotify("第"..num.."号农场得到您的施肥效果，承包期增加10点，植物成长度上升100点")
					LuaAddJx("combat_exp",floor(level/5-1)*1000,"Tcj")
					LuaOtherSendMenu()
					return 1
				
			end
		else
			LuaShowNotify("施肥请施给土地哦，不要施给道路！")
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
	--if((y>256 and y<=384) or (y>32 and y<=160))then
	if((y>248 and y<=336) or (y>25 and y<=112))then --经实际测试调整了坐标
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
function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
local r=LuaRandom(6)
if(r==1)then
LuaSay("@1��@2��@3��@4��@5ֻ@6��@7��")
elseif(r==2)then
LuaSay("@3��@2��@1ֻ@7��@4��@8��@9��")
elseif(r==3)then
LuaSay("@5��@4ֻ@1��@7��@3��@8һ@3��")
elseif(r==4)then
LuaSay("@1ִ@6��@7֮@3��@2��@4��@5��@8��")
elseif(r==5)then
LuaSay("@3��@9��@2��@1��@7��@5��@6��@4��")
elseif(r==0)then
LuaSay("@7��@3��@5��@9��@2��@8��@6ֹ@4��")
end
--LuaSay("")
LuaAddJx("combat_exp",(LuaRandom(20)+10)*level^2,"Tmission038")
LuaOtherSendMenu()
return 1
end

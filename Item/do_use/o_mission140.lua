function do_use()
local level=LuaQuery("level")
	if(level>80)then
		level=80
	end
local r=LuaRandom(6)
if(r==1)then
LuaSay("@1我@2的@3心@4中@5只@6有@7你")
elseif(r==2)then
LuaSay("@3世@2界@1只@7有@4我@8和@9你")
elseif(r==3)then
LuaSay("@5我@4只@1在@7乎@3你@8一@3人")
elseif(r==4)then
LuaSay("@1执@6子@7之@3手@2与@4子@5偕@8老")
elseif(r==5)then
LuaSay("@3青@9青@2子@1衿@7悠@5悠@6我@4心")
elseif(r==0)then
LuaSay("@7天@3长@5地@9久@2爱@8无@6止@4境")
end
--LuaSay("")
LuaAddJx("combat_exp",(LuaRandom(20)+10)*level^2,"Tmission038")
LuaOtherSendMenu()
return 1
end

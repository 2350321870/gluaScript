function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
local level=LuaQuery("level")
local kj=LuaItemStatusNormalCount("o_key002j")
local ky=LuaItemStatusNormalCount("o_key002y")
if(kj+ky>=1)then
	LuaSay("@2幸@3运@4开@5开@7开")
	LuaSay("@1恭@2喜@3你@4获@5得@6百@7万@8大@9奖")
	LuaGive("coin",1000000,"Tbox002s")
	LuaNotice("@2"..LuaQueryStr("name").."@0被一坨鸟粪砸中,急忙打开@3幸运宝盒@0发现里面有@21000000@0铜币。")
	if(kj>=1)then
	DelItem("o_key002j",1)
	else
	DelItem("o_key002y",1)
	end
	LuaOtherSendMenu()
	return 1
else
LuaSay("开启需要@3幸运钥匙@0,@3幸运钥匙@0可以在商城中其他中购买")
LuaSay("开启@3幸运宝盒@0,有机会获得@2百万大奖，高级材料和大量经验")
LuaOtherSendMenu()
return 0
end
end

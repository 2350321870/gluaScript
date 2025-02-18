function do_use()
if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end
local level=LuaQuery("level")
if(level>=1) then
--------------------------------------战备物资 
--	LuaGive("o_gold2j",1,"Tpresent42")   --银票
--	LuaGive("o_zhaiquan1y",1,"Tpresent42")--青纱券
	local r=LuaRandom(15)
	if(r==0)then
	LuaGive("o_state016j",1,"Tpresent42")--还魂丹
	elseif(r==1)then
	LuaGive("o_state101j",1,"Tpresent42")--御龙丹
	elseif(r==2)then
	LuaGive("o_state060j",1,"Tpresent42")--超级经验卷
	elseif(r==3)then
	LuaGive("o_state061j",1,"Tpresent42")--疯狂经验卷
	elseif(r==4)then
	LuaGive("o_gold1j",1,"Tpresent42")  --通宝
	elseif(r==5)then
	LuaGive("o_present032",1,"Tpresent42")--6级单一材料包
	elseif(r==6)then
	LuaGive("o_box001j",1,"Tpresent42")--宝箱 
	elseif(r==7)then
	LuaGive("o_box002",1,"Tpresent42")--幸运宝盒
	elseif(r==8)then
	LuaGive("o_cwmbs2",1,"Tpresent42")--宠物名变色【高级】
	elseif(r==9)then
	LuaGive("o_cwgm2",1,"Tpresent42")--宠物改名  
	elseif(r==10)then 
	LuaGive("o_state102j",1,"Tpresent42")--解绑卡 
	elseif(r==11)then
	LuaAddYB(2,50)
	LuaSay("恭喜你获得50金币，你可以小退下再登录查看所获得的金币！")
	elseif(r==12)then
	LuaAddYB(2,100)
	LuaSay("恭喜你获得100金币，你可以小退下再登录查看所获得的金币！")
	elseif(r==13)then
	LuaAddYB(2,200)
	LuaSay("恭喜你获得200金币，你可以小退下再登录查看所获得的金币！")
	elseif(r==14)then
	LuaAddYB(2,500)
	LuaSay("恭喜你获得500金币，你可以小退下再登录查看所获得的金币！")
	end
--------------------------------------
	LuaOtherSendMenu()
	return 1
else
  LuaShowNotify("该物品需要等级1级,你还不能打开")
  return 0
end
end

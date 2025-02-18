function do_use()
	--if(LuaFreeBag()<1)then	LuaShowNotify("请至少保有@21@0格背包空间")	return 0 end--没给物品，暂时不加
local flag=1
local name=LuaQueryStr("name")
local ret=LuaQueryTempStr("last_channel_msg")
local gender=LuaQueryStr("gender")
local ran=LuaRandom(10)
		local level= LuaQuery("level")
		if(level>80)then
			level=80
		end
if(ret=="我很帅" and gender=="男性")then
LuaSay("卷轴化为一道清烟消失了...")
LuaSay("你被雷霹死了")
LuaNotice("@2"..name.."@0当众说谎,结果被雷霹死了")
LuaAddJx("combat_exp",30*level^2,"Tfate")
LuaSet("hp",0)
elseif(ret=="我是美女" and gender=="男性")then
LuaSay("卷轴化为一道清烟消失了...")
LuaSay("你被雷霹死了")
LuaNotice("@2"..name.."@0当众扮人妖,结果被雷霹死了")
LuaAddJx("combat_exp",30*level^2,"Tfate")
LuaSet("hp",0)
elseif(ret=="我是帅哥" and gender=="女性")then
LuaSay("卷轴化为一道清烟消失了...")
LuaSay("你被雷霹死了")
LuaNotice("@2"..name.."@0当众说谎,结果被雷霹死了")
LuaAddJx("combat_exp",30*level^2,"Tfate")
LuaSet("hp",0)
elseif(ret=="招财进宝")then
LuaSay("卷轴化为一道清烟消失了...")
LuaSay("嗡~你被钱砸趴下了")
LuaNotice("@2"..name.."@0脑袋嗡的一声就失去了知觉,醒来后发现头上起了几个大包,身边还有一堆钱")
LuaGive("coin",LuaRandom(5)*1000+2000,"Tfate")
LuaSet("hp",0)
elseif(ret=="我爱霸王" or ret="我爱客服" or ret="我爱指头" or ret="我爱GM" or ret="我爱Gm" or ret="我爱gm" or ret="我爱gM")then
LuaSay("卷轴化为一道清烟消失了...")
LuaSay("你的血魔全满了")
LuaNotice("@2"..name.."@0的表白感动了上苍,身上金光乍现,散发出无穷活力")
LuaSet("hp",LuaQuery("max_hp"))
LuaSet("mp",LuaQuery("max_mp"))
elseif(ret=="打死我也不说")then
LuaSay("卷轴化为一道清烟消失了...")
LuaSay("噼啪~你被一帮蒙面人一顿群殴,奄奄一息")
LocalMsg("蒙面人大喊:兄弟们快跑,打错人啦!")
LuaNotice("一帮蒙面人把@2"..name.."@0揍的奄奄一息,揍完后大喊:兄弟们快跑,打错人啦!")
LuaSet("hp",0)
LuaSay("逃跑中蒙面人一袋钱掉落在你地上被醒来后的你捡到.")
LuaGive("coin",LuaRandom(7)*1000+2000,"Tfate")



--[[重整
我爱客服/我爱指头/我爱GM/我爱Gm/我爱gm/我爱gM
大家不明白的可以问我/不会的问我/有人需要帮助吗
谁要钱
霸王真好玩
打死我也不说--结果被打死了
信兴哥原地复活
乱世霸王,文成武德,千秋万载,一统江湖

福,物品
禄,望勋
寿,食药
喜,经验
财,铜钱
--众神值勤



]]
else
	flag=0
	LuaSay("奇怪的卷轴,不要问GM它有什么功能,你可以找一些NPC聊天或许有什么线索.")
end

--[[
if(flag==1)then
FlushMyInfo("0x1004")
elseif(flag==2)then--统一处理
	FlushMyInfo("0x1004")
	local	r=LuaRandom(22)
	if(r==0)then
	if(level>=20)then
	LuaGive("o_cangbaotu",1,"Tfate")
	else
	LuaGive("o_state001",1,"Tfate")
	end
	elseif(r==1)then
	LuaGive("o_box002",1,"Tfate")
	end
end--]]
LuaOtherSendMenu()
return flag
end

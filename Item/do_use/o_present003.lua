function do_use()
local vip = 1
local ingot= 0

local level = LuaQuery("level")
if(GetCurrentDay()~=LuaQueryStrTask("present003_day"))then
	LuaDelTask("present003_num")
end
local num = LuaQueryTask("present003_num")	--今日适使用次数
local num1=num+num
local exp = floor((7*level*level*level+350*level+50000)*(18/20))
local exp1 = floor(exp*(1+num/10)+num*20000)
local exp2 =  floor(exp*(1+(num+1)/10)+(num+1)*20000)

--[[local exp1= floor(exp*1.1)			--vip1用户经验值即充值2000YB|
local exp2= exp1 - exp				--升级成vip和普通用户的经验差	
local exp3 = floor(exp*0.1*vip)			--下一个vip经验和当前vip经验差
local exp4 = floor(exp*0.1*(vip+1))
local exp5 = exp4 - exp3

]]
if(level>=15)then
	
	if(num==0)then
		if(exp>=400000)then
			local a = 400000
			LuaSay("恭喜您今天第一次获得免费的经验"..a.."，第二次使用滋养丹你将会得到"..exp.."经验哦@!")
			LuaAddJx("combat_exp",a,"Tpresent003_1")
			LuaSetTask("present003_num",1)
			LuaSetTask("present003_day",GetCurrentDay())
		else
			LuaSay("恭喜您今天第一次获得免费的经验"..exp.."")
			LuaAddJx("combat_exp",exp,"Tpresent003")
			LuaSetTask("present003_num",1)
			LuaSetTask("present003_day",GetCurrentDay())
		end
	elseif(num<50)	then
		LuaSay("今日您第"..(num+1).."次使用滋养丹,将会得到经验@3["..exp1.."]@0,消耗元宝"..num1.."个")
		if(LuaQueryMoney()>=num1)then
			--[[if(LuaItemCount("o_gold1j")>=num1)then
				DelItem("o_gold1j",num1)
			elseif((LuaItemCount("o_gold1j")+LuaItemCount("o_gold1y"))>=num1)then
				local a = LuaItemCount("o_gold1j")
				DelItem("o_gold1j",a)
				DelItem("o_gold1y",num1-a)
			else
				DelItem("o_gold1y",num1)
			end]]
			--LuaQueryMoney() 元宝余额
			--LuaQueryCost() 元宝消费
			local a = 0 - num1
			LuaAddYB(1,a)
			dis()
			LuaAddJx("combat_exp",exp1,"Tpresent003")
			if(num<=50)then
				LuaSay("恭喜您今天第"..(num+1).."次获得经验，今日还可以使用"..(9-num).."次,下一次使用可获得经验为"..exp2.."")
			else
				LuaSay("今日你已经使用已达上限，明日才能继续使用哦")
			end
			LuaAddTask("present003_num",1)
			LuaSetTask("present003_day",GetCurrentDay())
		else
			LuaSay("提示:您的元宝不足，总共需要"..num1.."个元宝")
		end
	else
		LuaSay("今日你已经使用已达上限，明日才能继续使用哦")
	end
else
	LuaSay("提示：此物品需要15级以上才能使用的哦")
end
LuaOtherSendMenu()
end


function dis()
disdate={}
disdate[1]={"头晕目眩，耳目轰鸣，修为得到提升"}
disdate[2]={"天混混，地暗暗，修为得到提升"}


local r = LuaRandom(2)+1
LuaSay(""..disdate[r][1].."")
end
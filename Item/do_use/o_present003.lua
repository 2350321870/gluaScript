function do_use()
local vip = 1
local ingot= 0

local level = LuaQuery("level")
if(GetCurrentDay()~=LuaQueryStrTask("present003_day"))then
	LuaDelTask("present003_num")
end
local num = LuaQueryTask("present003_num")	--������ʹ�ô���
local num1=num+num
local exp = floor((7*level*level*level+350*level+50000)*(18/20))
local exp1 = floor(exp*(1+num/10)+num*20000)
local exp2 =  floor(exp*(1+(num+1)/10)+(num+1)*20000)

--[[local exp1= floor(exp*1.1)			--vip1�û�����ֵ����ֵ2000YB|
local exp2= exp1 - exp				--������vip����ͨ�û��ľ����	
local exp3 = floor(exp*0.1*vip)			--��һ��vip����͵�ǰvip�����
local exp4 = floor(exp*0.1*(vip+1))
local exp5 = exp4 - exp3

]]
if(level>=15)then
	
	if(num==0)then
		if(exp>=400000)then
			local a = 400000
			LuaSay("��ϲ�������һ�λ����ѵľ���"..a.."���ڶ���ʹ���������㽫��õ�"..exp.."����Ŷ@!")
			LuaAddJx("combat_exp",a,"Tpresent003_1")
			LuaSetTask("present003_num",1)
			LuaSetTask("present003_day",GetCurrentDay())
		else
			LuaSay("��ϲ�������һ�λ����ѵľ���"..exp.."")
			LuaAddJx("combat_exp",exp,"Tpresent003")
			LuaSetTask("present003_num",1)
			LuaSetTask("present003_day",GetCurrentDay())
		end
	elseif(num<50)	then
		LuaSay("��������"..(num+1).."��ʹ��������,����õ�����@3["..exp1.."]@0,����Ԫ��"..num1.."��")
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
			--LuaQueryMoney() Ԫ�����
			--LuaQueryCost() Ԫ������
			local a = 0 - num1
			LuaAddYB(1,a)
			dis()
			LuaAddJx("combat_exp",exp1,"Tpresent003")
			if(num<=50)then
				LuaSay("��ϲ�������"..(num+1).."�λ�þ��飬���ջ�����ʹ��"..(9-num).."��,��һ��ʹ�ÿɻ�þ���Ϊ"..exp2.."")
			else
				LuaSay("�������Ѿ�ʹ���Ѵ����ޣ����ղ��ܼ���ʹ��Ŷ")
			end
			LuaAddTask("present003_num",1)
			LuaSetTask("present003_day",GetCurrentDay())
		else
			LuaSay("��ʾ:����Ԫ�����㣬�ܹ���Ҫ"..num1.."��Ԫ��")
		end
	else
		LuaSay("�������Ѿ�ʹ���Ѵ����ޣ����ղ��ܼ���ʹ��Ŷ")
	end
else
	LuaSay("��ʾ������Ʒ��Ҫ15�����ϲ���ʹ�õ�Ŷ")
end
LuaOtherSendMenu()
end


function dis()
disdate={}
disdate[1]={"ͷ��Ŀѣ����Ŀ��������Ϊ�õ�����"}
disdate[2]={"���죬�ذ�������Ϊ�õ�����"}


local r = LuaRandom(2)+1
LuaSay(""..disdate[r][1].."")
end
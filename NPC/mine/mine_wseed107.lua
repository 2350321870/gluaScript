NPCINFO = {
name="土豆",
butt="0|0|42",
isboss = 2, 
serial= "979",
icon= 10524,
NpcMove= 10524, 
iconaddr= 1,
maxnum= 1,
booty= "o_material_38",
getrate= 100,
bootyrate="100",
gettime= 3,
getlevel= 1,
candig=1,
act=1,
ondig=1,
}
function OnDig()
local tIndex={--坐标处于的土豆编号表
{224,128},--1
{224,192},--2
{224,320},--3
{224,384},--4
{288,128},--5
{288,192},--6
{288,256},--7
{288,320},--8
{288,384},--9
{352,128},--10
{352,192},--11
{352,256},--12
{352,320},--13
{352,384},--14
{416,128},--15
{416,192},--16
{416,320},--17
{416,384},--18
}
local iX=LuaQueryTemp("posx")--X坐标
LuaPrint("取iX")
local iY=LuaQueryTemp("posy")--Y坐标
LuaPrint("取iY")
local iIndex=-1  --计算本土豆号
local iDx 	--坐标差x
local iDy 	--坐标差y
for i=1,18 do
	LuaPrint("循环第"..i.."次。。。。")
	iDx=tIndex[i][1]-iX
	LuaPrint("取iDx ="..iDx.."")
	iDy=tIndex[i][2]-iY
	LuaPrint("取iDy ="..iDy.."")
	if(iDx>-30 and iDx<30 and iDy>-30 and iDy<30)then
		iIndex = i
		LuaPrint("找到符合条件的iIndex = i ="..i.."。。。。。")
		break
	end
end
if(iIndex==-1)then
	LuaShowNotify("此处木有土豆！")
	return 1
end
LuaPrint("循环结束")
local DOTIME=30		--人工设置CD,采薯/下夹调控
local BRUSHTIME=180	--系统自己重置CD调控

local iTime=LuaPublicQuery("potato/"..iIndex.."/time")	--上次变动时间
	LuaPrint("查询iTime成功值为："..iTime.."")
local iState 
if(GetCurrentTime()-iTime>BRUSHTIME)then--长时间未动的随机重置刷新
	LuaPrint("长时间未动的随机重置刷新成功")
	if(LuaRandom(10)<5)then
	iState=0
	else
	iState=1
	end
	LuaPublicSet("potato/"..iIndex.."/state",iState)
	LuaPrint("重新设置时间成功")
else
	iState=LuaPublicQuery("potato/"..iIndex.."/state")--读取土豆状态
	LuaPrint("读取土豆状态成功")
end
LuaPrint("if结束")
local iTask=LuaQueryTask("Tpotato")	--接了偷土豆任务还是下夹子任务
	LuaPrint("检测接了偷土豆任务还是下夹子任务")
local iSubHp 
if(iTask==0)then
	LuaShowNotify("未接任务不能采集")
	return 1
end
LuaPrint(">>>>>>>>>>>>>进入任务流程<<<<<<<<<<<<<<")
if(iState==0)then		--是土豆
	LuaPrint("判断是土豆任务成功")
	if(iTask==1)then	--下夹子-o_mission194
		LuaPrint("判断iTask==1成功既 下架子任务")
		if(LuaItemCount("o_mission194")>0)then
			LuaPrint("判断o_mission194>0成功")
			if(GetCurrentTime()-iTime>DOTIME)then
				LuaPrint("时间差判断成功")
			DelItem("o_mission194",1)
			LuaPublicSet("potato/"..iIndex.."/state",1)
			LuaPublicSet("potato/"..iIndex.."/time",GetCurrentTime())
			LuaShowNotify("安放鼠夹成功")
			return 1
			else
			LuaPrint("时间差判断失败")
			LuaShowNotify("此处刚刚下过夹了")
			return 1
			end
		else
		LuaSay("鼠夹已安完,回报薯农吧")
		LuaPrint("判断o_mission194>0失败")
		end
	elseif(iTask==2)then	--偷土豆+o_mission193
	LuaPrint("判断iTask==2成功既 偷土豆任务")	
		if(LuaItemCount("o_mission193")<10)then
			LuaPrint("o_mission193)<10成功")
			if(GetCurrentTime()-iTime>DOTIME)then
				LuaPrint("判断时间差成功")
			LuaGive("o_mission193",1)
			LuaPrint("给土豆成功")
			LuaPublicSet("potato/"..iIndex.."/time",GetCurrentTime())
			LuaPrint("重新设置时间成功")
			LuaShowNotify("挖到一个土豆")
			return 1
			else
			LuaShowNotify("此处刚刚挖过了")
			return 1
			end
		else
		LuaSay("已采足10个土豆,快快交给薯贼吧")
		end
	end
elseif(iState==1)then		--是夹子
	if(iTask==1)then	--下夹子	
		iSubHp=50+LuaRandom(150)	--守土豆的人掉血调控
	elseif(iTask==2)then	--偷土豆
		iSubHp=200+LuaRandom(300)	--偷土豆的人掉血调控
	end
	LuaPrint("踩到夹子减血")
	LuaShowNotify("踩到夹子hp-"..iSubHp)
	local iNewHp=LuaQuery("hp")-iSubHp
	if(iNewHp>0)then
		LuaSet("hp",iNewHp)
		LuaPrint("重新设置新的血量成功")
	else
		LuaSet("hp",0)
		LuaPrint("死亡")
	end
	FlushMyInfo("0")
	LuaPrint("刷新角色信息成功")
	return 1
else
LuaSay("Bug！脑袋被门夹了")
LuaPrint("FUCK!")
end
LuaPrint(">>>>>>>>>>>>>任务流程结束<<<<<<<<<<<<<<")

LuaOtherSendMenu()
return 1
end

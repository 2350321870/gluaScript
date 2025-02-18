function detach(key,itemnum,value,id)	--最高获得4级材料，value= 0属性：基础值*10%；1属性：value值*30%；2属性：value值*50%；3属性：60%。绑定的：还需要再乘以1%

--特殊装备分解，不在特殊表中的继续后面的普通分解
local tS={			--装备ID,分解成种类，产品1，产品2，。。。
{"e_xysj2",0,""},
{"e_falchion121",1,"o_material_122"},
{"e_falchion122",1,"o_material_123"},
{"e_falchion123",1,"o_material_124"},
{"e_falchion124",1,"o_material_125"},
{"e_falchion125",1,"o_material_126"},
{"e_falchion126",1,"o_material_127"},
{"e_falchion127",1,"o_material_128"},
{"e_falchion128",1,"o_material_129"},
{"e_falchion129",1,"o_material_130"},
{"e_falchion130",0,""},
{"e_sword121",1,"o_material_122"},
{"e_sword122",1,"o_material_123"},
{"e_sword123",1,"o_material_124"},
{"e_sword124",1,"o_material_125"},
{"e_sword125",1,"o_material_126"},
{"e_sword126",1,"o_material_127"},
{"e_sword127",1,"o_material_128"},
{"e_sword128",1,"o_material_129"},
{"e_sword129",1,"o_material_130"},
{"e_sword130",0,""},
{"e_staff121",1,"o_material_122"},
{"e_staff122",1,"o_material_123"},
{"e_staff123",1,"o_material_124"},
{"e_staff124",1,"o_material_125"},
{"e_staff125",1,"o_material_126"},
{"e_staff126",1,"o_material_127"},
{"e_staff127",1,"o_material_128"},
{"e_staff128",1,"o_material_129"},
{"e_staff129",1,"o_material_130"},
{"e_staff130",0,""},
{"e_shield121",1,"o_material_122"},
{"e_shield122",1,"o_material_123"},
{"e_shield123",1,"o_material_124"},
{"e_shield124",1,"o_material_125"},
{"e_shield125",1,"o_material_126"},
{"e_shield126",1,"o_material_127"},
{"e_shield127",1,"o_material_128"},
{"e_shield128",1,"o_material_129"},
{"e_shield129",1,"o_material_130"},
{"e_shield130",0,""},
{"e_knife121",1,"o_material_122"},
{"e_knife122",1,"o_material_123"},
{"e_knife123",1,"o_material_124"},
{"e_knife124",1,"o_material_125"},
{"e_knife125",1,"o_material_126"},
{"e_knife126",1,"o_material_127"},
{"e_knife127",1,"o_material_128"},
{"e_knife128",1,"o_material_129"},
{"e_knife129",1,"o_material_130"},
{"e_knife130",0,""},
{"e_book121",1,"o_material_122"},
{"e_book122",1,"o_material_123"},
{"e_book123",1,"o_material_124"},
{"e_book124",1,"o_material_125"},
{"e_book125",1,"o_material_126"},
{"e_book126",1,"o_material_127"},
{"e_book127",1,"o_material_128"},
{"e_book128",1,"o_material_129"},
{"e_book129",1,"o_material_130"},
{"e_book130",0,""},
{"e_clothes121",1,"o_material_122"},
{"e_clothes122",1,"o_material_123"},
{"e_clothes123",1,"o_material_124"},
{"e_clothes124",1,"o_material_125"},
{"e_clothes125",1,"o_material_126"},
{"e_clothes126",1,"o_material_127"},
{"e_clothes127",1,"o_material_128"},
{"e_clothes128",1,"o_material_129"},
{"e_clothes129",1,"o_material_130"},
{"e_clothes130",0,""},
{"e_pants121",1,"o_material_122"},
{"e_pants122",1,"o_material_123"},
{"e_pants123",1,"o_material_124"},
{"e_pants124",1,"o_material_125"},
{"e_pants125",1,"o_material_126"},
{"e_pants126",1,"o_material_127"},
{"e_pants127",1,"o_material_128"},
{"e_pants128",1,"o_material_129"},
{"e_pants129",1,"o_material_130"},
{"e_pants130",0,""},
{"e_shoes121",1,"o_material_122"},
{"e_shoes122",1,"o_material_123"},
{"e_shoes123",1,"o_material_124"},
{"e_shoes124",1,"o_material_125"},
{"e_shoes125",1,"o_material_126"},
{"e_shoes126",1,"o_material_127"},
{"e_shoes127",1,"o_material_128"},
{"e_shoes128",1,"o_material_129"},
{"e_shoes129",1,"o_material_130"},
{"e_shoes130",0,""},
{"e_head121",1,"o_material_122"},
{"e_head122",1,"o_material_123"},
{"e_head123",1,"o_material_124"},
{"e_head124",1,"o_material_125"},
{"e_head125",1,"o_material_126"},
{"e_head126",1,"o_material_127"},
{"e_head127",1,"o_material_128"},
{"e_head128",1,"o_material_129"},
{"e_head129",1,"o_material_130"},
{"e_head130",0,""},
{"e_necklace121",1,"o_material_122"},
{"e_necklace122",1,"o_material_123"},
{"e_necklace123",1,"o_material_124"},
{"e_necklace124",1,"o_material_125"},
{"e_necklace125",1,"o_material_126"},
{"e_necklace126",1,"o_material_127"},
{"e_necklace127",1,"o_material_128"},
{"e_necklace128",1,"o_material_129"},
{"e_necklace129",1,"o_material_130"},
{"e_necklace130",0,""},
{"e_earring121",1,"o_material_122"},
{"e_earring122",1,"o_material_123"},
{"e_earring123",1,"o_material_124"},
{"e_earring124",1,"o_material_125"},
{"e_earring125",1,"o_material_126"},
{"e_earring126",1,"o_material_127"},
{"e_earring127",1,"o_material_128"},
{"e_earring128",1,"o_material_129"},
{"e_earring129",1,"o_material_130"},
{"e_earring130",0,""},
{"e_clothes001test",1,"e_clothes001test"},--test用
}
local count=121			--特殊装总类
while(count>0)do
	if(id==tS[count][1])then
		if(tS[count][2]==0)then--顶级[+9]装暂不让分解
		return LuaShowNotify("本物品暂不能分解")	
		end
		--for i=tS[count][3],2+tS[count][2] do	--产物只一个暂不用for了。
		--LuaGive(i,1,"detach")
		LuaGive(tS[count][3],1,"detach")
		LuaShowNotify("特殊分解成功")
		--end
	return 1		--特殊装备分解完成后直接返回，不再执行后面的
	end
count=count-1
end

---------------------------------特殊装备分解end
------------------------------------
local a,b,c,d = 90000,14000,2400,350
 	if(key=="head" or key == "necklace" or key =="earring")then
			if (value>=a)then
				local num=floor(itemnum*value/a)
				if(num>6) then			--上限：6个材料
				num=6
				end
				LuaGive("o_material_59",num)
				LuaLogRecord("分解","o_material_59","物品","获得",2888*num) 
				LuaShowNotify("分解获得4级晶("..num..")")
				return 1                          
			elseif (value>=b)then
				local num=floor(itemnum*value/b)
				LuaGive("o_material_58",num)
				LuaLogRecord("分解","o_material_58","物品","获得",488*num)
				LuaShowNotify("分解获得3级晶("..num..")")
				return 1
			elseif (value>=c)then
				local num=floor(itemnum*value/c)
				LuaGive("o_material_57",num)
				LuaLogRecord("分解","o_material_57","物品","获得",88*num)
				LuaShowNotify("分解获得2级晶("..num..")")
				return 1
			elseif (value>=d)then
				local num=floor(itemnum*value/d)
				LuaGive("o_material_56",num)
				LuaLogRecord("分解","o_material_56","物品","获得",18*num)
				LuaShowNotify("分解获得1级晶("..num..")")
				return 1
			else	
				ret=floor(value/5)
				LuaGive("coin",ret,"Tdetach")
				LuaLogRecord("分解","coin","物品","获得",ret)
				LuaShowNotify("分解获得铜币("..ret..")")
				return 1
			end
		----------------------------------------------------------------------------------
		elseif(key=="falchion" or key == "sword" or key =="knife" or key =="shield")then 
			if (value>=a)then
				local num=floor(itemnum*value/a)
				if(num>6) then
				num=6
				end
				LuaGive("o_material_50",num)
				LuaLogRecord("分解","o_material_50","物品","获得",2888*num)
				LuaShowNotify("分解获得4级矿("..num..")")
				return 1
			elseif (value>=b)then
				local num=floor(itemnum*value/b)
				LuaGive("o_material_49",num)
				LuaLogRecord("分解","o_material_49","物品","获得",488*num)
				LuaShowNotify("分解获得3级矿("..num..")")
				return 1
			elseif (value>=c)then
				local num=floor(itemnum*value/c)
				LuaGive("o_material_48",num)
				LuaLogRecord("分解","o_material_48","物品","获得",88*num)
				LuaShowNotify("分解获得2级矿("..num..")")
				return 1
			elseif (value>=d)then
				local num=floor(itemnum*value/d)
				LuaGive("o_material_47",num)
				LuaLogRecord("分解","o_material_47","物品","获得",18*num)
				LuaShowNotify("分解获得1级矿("..num..")")
				return 1
			else
				ret=floor(value/5)
				LuaGive("coin",ret,"Tdetach")
				LuaLogRecord("分解","coin","物品","获得",ret)
				LuaShowNotify("分解获得铜币("..ret..")")
				return 1
			end

		-----------------------------------------------------------------------------------
		elseif(key=="clothes" or key == "pants")then
			if (value>=a)then
				local num=floor(itemnum*value/a)
				if(num>6) then
				num=6
				end
				LuaGive("o_material_14",num)
				LuaLogRecord("分解","o_material_14","物品","获得",2888*num)
				LuaShowNotify("分解获得4级毛("..num..")")
				return 1
			elseif (value>=b)then
				local num=floor(itemnum*value/b)
				LuaGive("o_material_13",num)
				LuaLogRecord("分解","o_material_13","物品","获得",488*num)
				LuaShowNotify("分解获得3级毛("..num..")")
				return 1
			elseif (value>=c)then
				local num=floor(itemnum*value/c)
				LuaGive("o_material_12",num)
				LuaLogRecord("分解","o_material_12","物品","获得",88*num)
				LuaShowNotify("分解获得2级毛("..num..")")
				return 1
			elseif (value>=d)then
				local num=floor(itemnum*value/d)
				LuaGive("o_material_11",num)
				LuaLogRecord("分解","o_material_11","物品","获得",18*num)
				LuaShowNotify("分解获得1级毛("..num..")")
				return 1
			else
				ret=floor(value/5)
				LuaGive("coin",ret,"Tdetach")
				LuaLogRecord("分解","coin","物品","获得",ret)
				LuaShowNotify("分解获得铜币("..ret..")")
				return 1
			end

		------------------------------------------------------------------------
		elseif(key=="pen" or key == "book")then
			if (value>=a)then
				local num=floor(itemnum*value/a)
				if(num>6) then
				num=6
				end
				LuaGive("o_material_41",num)
				LuaLogRecord("分解","o_material_41","物品","获得",2888*num)
				LuaShowNotify("分解获得4级木("..num..")")
				return 1
			elseif (value>=b)then
				local num=floor(itemnum*value/b)
				LuaGive("o_material_40",num)
				LuaLogRecord("分解","o_material_40","物品","获得",488*num)
				LuaShowNotify("分解获得3级木("..num..")")
				return 1
			elseif (value>=c)then
				local num=floor(itemnum*value/c)
				LuaGive("o_material_39",num)
				LuaLogRecord("分解","o_material_39","物品","获得",88*num)
				LuaShowNotify("分解获得2级木("..num..")")
				return 1
			elseif (value>=d)then
				local num=floor(itemnum*value/d)
				LuaGive("o_material_38",num)
				LuaLogRecord("分解","o_material_38","物品","获得",18*num)
				LuaShowNotify("分解获得1级木("..num..")")
				return 1
			else
				ret=floor(value/5)
				LuaGive("coin",ret,"Tdetach")
				LuaLogRecord("分解","coin","物品","获得",ret)
				LuaShowNotify("分解获得铜币("..ret..")")
				return 1
			end

		-------------------------------------------------------------------------------
		elseif(key=="shoes")then
			if (value>=a)then
				local num=floor(itemnum*value/a)
				if(num>6) then
				num=6
				end
				LuaGive("o_material_23",num)
				LuaLogRecord("分解","o_material_23","物品","获得",2888*num)
				LuaShowNotify("分解获得4级皮("..num..")")
				return 1
			elseif (value>=b)then
				local num=floor(itemnum*value/b)
				LuaGive("o_material_22",num)
				LuaLogRecord("分解","o_material_22","物品","获得",488*num)
				LuaShowNotify("分解获得3级皮("..num..")")
				return 1
			elseif (value>=c)then
				local num=floor(itemnum*value/c)
				LuaGive("o_material_21",num)
				LuaLogRecord("分解","o_material_21","物品","获得",88*num)
				LuaShowNotify("分解获得2级皮("..num..")")
				return 1
			elseif (value>=d)then
				local num=floor(itemnum*value/d)
				LuaGive("o_material_20",num)
				LuaLogRecord("分解","o_material_20","物品","获得",18*num)
				LuaShowNotify("分解获得1级皮("..num..")")
				return 1
			else
				ret=floor(value/5)
				LuaGive("coin",ret,"Tdetach")
				LuaLogRecord("分解","coin","物品","获得",ret)
				LuaShowNotify("分解获得铜币("..ret..")")
				return 1
			end
		end

return LuaShowNotify("本物品不能够分解")
end
function do_use()
if(LuaFreeBag()<10)then	LuaShowNotify("请至少保有@210@0格背包空间")	return 0 end
local level=LuaQuery("level")

if( LuaQueryTask("Tpresent")==0) then
  if(level>=5) then
   LuaSetTask("Tpresent",1) 
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：攻击符、防御符。@!")
  LuaSay("提示：当您达到@310级@0时，打开礼包将获得经验符、攻击符、防御符、血池、魔池等珍贵道具若干。")
  else
  LuaSay("提示：5级后打开可获得经验符、攻击符、防御符等珍贵道具若干。")
  end
   
elseif(LuaQueryTask("Tpresent")==1) then
  if(level>=10) then
   LuaSetTask("Tpresent",2)
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")   
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：经验符、攻击符、防御符、血池、魔池若干。@!")
  LuaSay("提示：当您达到@315级@0时，打开礼包将获得经验符、攻击符、防御符、血池、魔池等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的5级奖励。当您达到@210级@0时，打开礼包将获得经验符、攻击符、防御符、血池、魔池等珍贵道具若干。")
  end    
elseif(LuaQueryTask("Tpresent")==2) then
  if(level>=15) then
   LuaSetTask("Tpresent",3)
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent") 
   LuaGive("o_state098j",1,"Tpresent") 
  LuaSay("提示：恭喜您获得珍贵道具：经验符、攻击符、防御符、血池、魔池、个性签名卷轴若干。@!")
  LuaSay("提示：当您达到@320级@0时，打开礼包将获得经验符、攻击符、防御符、血池、魔池、藏宝图等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的10级奖励。当您达到@215级@0时，打开礼包将获得经验符、攻击符、防御符、血池、魔池等珍贵道具若干。")
  end 

elseif(LuaQueryTask("Tpresent")==3) then
  if(level>=20) then
   LuaSetTask("Tpresent",4)
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
   LuaGive("o_cangbaotu",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：经验符、攻击符、防御符、血池、魔池、藏宝图若干。@!")
  LuaSay("提示：当您达到@325级@0时，打开礼包将获得还魂丹、强化石、经验符、攻击符、防御符、血池、魔池、藏宝图等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的15级奖励。当您达到@220级@0时，打开礼包将获得经验符、攻击符、防御符、血池、魔池、藏宝图等珍贵道具若干。")
  end
elseif(LuaQueryTask("Tpresent")==4) then
  if(level>=25) then
  LuaSetTask("Tpresent",5)
   LuaGive("o_state016j",5,"Tpresent")
   LuaGive("o_ybsc002j",2,"Tpresent")
   LuaGive("o_state065j",1,"Tpresent")
   LuaGive("o_state068j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
   LuaGive("o_cangbaotu",2,"Tpresent") 
  LuaSay("提示：恭喜您获得珍贵道具：还魂丹、强化石、经验符、攻击符、防御符、血池、魔池、藏宝图。@!")
  LuaSay("提示：当您达到@330级@0时，打开礼包将获得还魂丹、转职信物、洗点卷、幸运宝盒、经验符、攻击符、防御符等珍贵道具若干。")
  else
    LuaSay("提示：您已经领取了@2豪华大礼包@0的20级奖励。当您达到@225级@0时，打开礼包将获得还魂丹、强化石、经验符、攻击符、防御符、血池、魔池、藏宝图等珍贵道具若干。")
  end

elseif(LuaQueryTask("Tpresent")==5) then
  if(level>=30) then
  LuaSetTask("Tpresent",6)
   LuaGive("o_state016j",5,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent") 
   LuaGive("o_ybsc002j",1,"Tpresent")
   LuaGive("o_box002",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state008j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：还魂丹、转职信物、洗点卷、强化石、幸运宝盒、经验符、攻击符、防御符若干。@!")
  LuaSay("提示：当您达到@335级@0时，打开礼包将获得还魂丹、转职信物、洗点卷、幸运宝盒、中级经验符、攻击符、防御符等珍贵道具若干。")
  else
    LuaSay("提示：您已经领取了@2豪华大礼包@0的25级奖励。当您达到@230级@0时，打开礼包将获得还魂丹、转职信物、洗点卷、强化石、幸运宝盒、经验符、攻击符、防御符等珍贵道具若干。")
  end
elseif(LuaQueryTask("Tpresent")==6) then
  if(level>=35) then
  LuaSetTask("Tpresent",7)
   LuaGive("o_state016j",10,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent")  
   LuaGive("o_box002",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：还魂丹、转职信物、洗点卷、幸运宝盒、中级经验符、攻击符、防御符若干。@!")
  LuaSay("提示：当您达到@340级@0时，打开礼包将获得还魂丹、白银宝箱、幸运宝盒、中级经验符、攻击符、防御符等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的30级奖励，当您达到@235级@0时。打开礼包将获得还魂丹、转职信物、洗点卷、幸运宝盒、中级经验符、攻击符、防御符等珍贵道具若干。")
  end

elseif(LuaQueryTask("Tpresent")==7) then
  if(level>=40) then
  LuaSetTask("Tpresent",8)
   LuaGive("o_state016j",10,"Tpresent")
   LuaGive("o_box002",1,"Tpresent")
   LuaGive("o_box004j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：还魂丹、白银宝箱、幸运宝盒、中级经验符、攻击符、防御符若干。@!")
  LuaSay("提示：当您达到@345级@0时，打开礼包将获得还魂丹、幸运宝盒、中级经验符、攻击符、防御符等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的35级奖励。当您达到@240级@0时。打开礼包将获得还魂丹、白银宝箱、幸运宝盒、中级经验符、攻击符、防御符等若干。")
  end


elseif(LuaQueryTask("Tpresent")==8) then
  if(level>=45) then
  LuaSetTask("Tpresent",9)
   LuaGive("o_state016j",15,"Tpresent")
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：还魂丹、幸运宝盒、中级经验符、攻击符、防御符若干。@!")
  LuaSay("提示：当您达到@350级@0时，打开礼包将获得还魂丹、白银宝箱、幸运宝盒、中级经验符、攻击符、防御符等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的40级奖励。当您达到@245级@0时。打开礼包将获得还魂丹、幸运宝盒、中级经验符、攻击符、防御符等若干。")
  end

elseif(LuaQueryTask("Tpresent")==9) then
  if(level>=50) then
  LuaSetTask("Tpresent",10)
   LuaGive("o_state016j",15,"Tpresent")
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_box004j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state010j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：还魂丹、白银宝箱、幸运宝盒、中级经验符、攻击符、防御符若干。@!")
  LuaSay("提示：当您达到@355级@0时，打开礼包将获得还魂丹、拆解符、转职信物、洗点卷、幸运宝盒、高级经验符、攻击符、防御符等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的45级奖励。当您达到@250级@0时。打开礼包将获得还魂丹、白银宝箱、幸运宝盒、中级经验符、攻击符、防御符等若干。")
  end
elseif(LuaQueryTask("Tpresent")==10) then
  if(level>=55) then
  LuaSetTask("Tpresent",11)
   LuaGive("o_state016j",20,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent")  
   LuaGive("o_ybsc001j",1,"Tpresent")
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state059j",1,"Tpresent")
  LuaSay("提示：恭喜您获得珍贵道具：还魂丹、拆解符、转职信物、洗点卷、幸运宝盒、高级经验符、攻击符、防御符若干。@!")
  LuaSay("提示：当您达到@360级@0时，打开礼包将获得还魂丹、转职信物、洗点卷、黄金宝箱、幸运宝盒、高级经验符、攻击符、防御符等珍贵道具若干。")
  else
  LuaSay("提示：您已经领取了@2豪华大礼包@0的50级奖励。当您达到@255级@0时。打开礼包将获得还魂丹、拆解符、转职信物、洗点卷、幸运宝盒、高级经验符、攻击符、防御符等若干。")
  end

elseif(LuaQueryTask("Tpresent")==11) then
  if(level>=60) then
  LuaSetTask("Tpresent",99)
   LuaGive("o_state016j",20,"Tpresent")
   LuaGive("o_changeclass1y",1,"Tpresent")
   LuaGive("o_resetpoint1y",1,"Tpresent")  
   LuaGive("o_box002",2,"Tpresent")
   LuaGive("o_box005j",1,"Tpresent")
   LuaGive("o_state012j",1,"Tpresent")
   LuaGive("o_state001j",1,"Tpresent")
   LuaGive("o_state059j",1,"Tpresent")
   LuaSay("提示：@2豪华大礼包@0奖励领取结束，您现在已经是可以独当一面的大人物了。和朋友一起一统天下吧！祝您游戏愉快！@!")
   return 1
  else
   LuaSay("提示：您已经领取了@2豪华大礼包@0的55级奖励。当您达到@260级@0时。打开礼包将获得还魂丹、转职信物、洗点卷、黄金宝箱、幸运宝盒、高级经验符、攻击符、防御符等若干。")
  end
end

LuaOtherSendMenu()
end
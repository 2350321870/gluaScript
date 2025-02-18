ans = {} 	
function OnEnter()
  ans.rtype = 0

local level=LuaQuery("level")

if( LuaQueryTask("T9")==1 ) then
  if(level>=13) then
  LuaSetTask("T9",2) 
  LuaSay("提示：你运起十成功力，迎风而上，一头走进白雾中，由于看不清路，你不小心踩空，坠入万丈深渊！")
  LuaSay("提示：正当你绝望的时候，一股神秘的气流把你托了起来，回到了悬崖上，你惊奇的发现白雾有规则的形成了一行字。")
  LuaSay("一行字：@3战胜别人，需要战胜自己！你还是27级再来吧！@0")
  LuaAddJx("combat_exp",15000,"T9")
  else
  LuaSay("提示：悬崖边狂风大作，白雾四起，你运起十成功力仍然无法靠近，还是@313级@0以后再来吧！")
  LuaSay("提示：可以向右走，进入@4桃源径@0地图，通过不断的修炼提升你的等级！")
  end
   
elseif(LuaQueryTask("T9")==2) then
  if(level>=27) then
  LuaSetTask("T9",3)
  LuaSay("提示：你运起十成功力，迎风而上，一头走进白雾中，由于看不清路，你不小心踩空，再次坠入万丈深渊！")
  LuaSay("提示：但是一股强劲的狂风把你顶了上来，一个洪亮的声音传入整个山谷：年轻人，你简直就像那个当年的我！")
  LuaSay("洪亮的声音：当年我二十多级的时候，没铜币飞世界、被高手欺辱、但却坚强的升到了98级！")
  LuaSay("洪亮的声音：哈哈哈！你若能修炼到@335级@0，证明你顽强的意志，我就帮你打通任督二脉，再传你10年的功力！")
  LuaAddJx("combat_exp",250000,"T9")
  else
  LuaSay("提示：白雾有规则的形成了一行字：@3战胜别人，需要战胜自己！你还是27级再来吧！@0")
  end    
elseif(LuaQueryTask("T9")==3) then
  if(level>=35) then
   LuaSetTask("T9",99) 
  LuaSay("提示：你运起五成功力，迎风而上，一头走进白雾中，有意坠入万丈深渊！")
  LuaSay("提示：有人从悬崖里飞了上来，一掌贴在你后背，把你向悬崖上推去！")
  LuaSay("提示：你的意识一片空白，只觉得一股浑厚的内力充满全身，浑身仿佛充满了破坏力！")
  LuaSay("再次传来洪亮的声音：年轻人，你任督二脉已通，又有我10年内力，以后修炼将会事半功倍：再见了，吾去也！")
  LuaAddJx("combat_exp",550000,"T9")
  DelLog("9")
  UpdateNPCMenu("jieyinxianzi")
  else
  LuaSay("提示：没有风也没有雾，估计前辈不在，还是别冒险跳悬崖了，等到@335级@0再来找他吧！")
  end 
elseif(LuaQueryTask("T9")==99) then
    LuaSay("提示：你来到悬崖底部：桃源谷底！前辈已经不知去向，只看到有一个叫@3如花的boss@0在那里展示技能，卖弄风骚！")
    LuaSay("提示：该boss是自恋狂，谁靠近他他就只会放放技能！纯属@3展示技能@0的boss！")
    ans.rtype = 1
else
    LuaSay("提示：深不见底悬崖下面，隐藏着什么秘密呢？只有在南宫若兰那里领取任务后，才能一探究竟！")

end
LuaOtherSendMenu()
return ans.rtype
end
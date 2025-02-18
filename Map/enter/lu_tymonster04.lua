ans = {} 	
function OnEnter()
  ans.rtype = 1   
    LuaSay("提示：杀死@3旱鲵@0后，将有可能被其@3尸爆@0炸死哦")
    LuaOtherSendMenu()
  return ans.rtype
end
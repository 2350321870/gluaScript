ans = {} 	
function Onleave(door_order)
 ans.rtype=1
if(door_order=="1")then
    if(LuaItemCount("o_mission011")==0) then
     ans.rtype = -1  
     LuaSay("��ʾ��û��@2����Կ��@0���޷��뿪������Կ������������")
     LuaOtherSendMenu()
     else
     LuaSet("pk_state",0)
     FlushPKState()
     LuaSetTask("T666A",0)
     ans.rtype =1
     DelItem("o_mission011",1)
     LuaAdd("out_prison_num",1)
     end
end		
return ans.rtype
end 
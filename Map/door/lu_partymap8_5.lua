ans = {} 	
function Onleave(door_order)		
if(LuaQuery("bjail")~= 0 )then
        ans.rtype = -1 
	LuaSay("�����ʱ��û���������뿪����ͼ��")
	LuaOtherSendMenu()
else
       ans.rtype = 1 
end
return ans.rtype
end 
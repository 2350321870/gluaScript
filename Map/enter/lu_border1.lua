ans = {}
function OnEnter()
ans.rtype=1

if(LuaQueryTask("TPaoShang")==1 and LuaCheckBuff("518")==1 ) then
	LuaSay("�����ϵ����̱���״̬��ʧ�ˣ�")
   	LuaDeleteBuff("518")
  	FlushMyInfo("1")
    ans.rtype=1
end
LuaOtherSendMenu()
return ans.rtype
end


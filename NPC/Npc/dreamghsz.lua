NPCINFO = { 
serial="178" ,
base_name="dreamghsz" ,
icon=2563,
NpcMove=2563,
name="����ʹ��" ,
iconaddr=1 ,
butt="10|10|60" ,
name_color="CEFFCE" ,
lastsay="�ξ���������",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then                      
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7�����б�","")
	if(LuaDreamQuery("T"..LuaQueryStr("id").."")==0) then 
		AddTopSayMenuItem("@3��ȿ���","jiejiu")
		havetask =1
	end
	if(LuaQueryTask("Tdrchushi")==0) then
		AddTopSayMenuItem("@3��ȡ�ۻ�ʯ","Tdrchushi")
		havetask =1
	end
	AddTopSayMenuItem("@3׬ȡ�ۻ�ʯ","zhuanqu")
	AddTopSayMenuItem("@3�ϳ��м��ۻ�ʯ","hecheng")
	AddTopSayMenuItem("@3�ۻ�ʯ������","huanqu")

if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end
return 1 

elseif(answer=="liaotian") then
	LuaSay("����ʹ�ߣ���Ҳ��ͨ�����ģ�ֻҪ�����ռ���20���м��ۻ�ʯ���ҽ�����Ź�����")

elseif(answer=="jiejiu") then
 	if(LuaItemCount("o_mission211")>=20) then
		LuaDreamSet("T"..LuaQueryStr("id").."",99)
		DelItem("o_mission211",20)
		LuaSay("��ʾ����ȿ��˳ɹ�")
  	else
  		LuaSay("��ʾ����ֻ��Ҫ�ռ�@320���м��ۻ�ʯ@0���Ҿͷ��˿���")
  	end
	elseif(answer=="huanqu") then
		LuaSay("��ʾ���ۻ�ʯ���Ի�ȡ���������˫������ҩƷ")
		AddMenuItem("@7ѡ��ȡ��Ʒ","")
		AddMenuItem("@3��ȡ�����","jingyanjuan")
		AddMenuItem("@3��ȡ˫����","shuanggongfu")
		AddMenuItem("@3��ȡҩƷ","yaopin")
	elseif(answer=="jingyanjuan") then
		LuaSay("��ʾ��10�������ۻ�ʯ����ȡ1�����������")
		AddMenuItem("@7�Ƿ�ȡ","")
		AddMenuItem("@3��","huan01")
		AddMenuItem("@3����","no")
	elseif(answer=="shuanggongfu") then
		LuaSay("��ʾ��10�������ۻ�ʯ����ȡ1��˫������")
		AddMenuItem("@7�Ƿ�ȡ","")
		AddMenuItem("@3��","huan02")
		AddMenuItem("@3����","no")
	elseif(answer=="yaopin") then
		LuaSay("��ʾ��2�������ۻ�ʯ����ȡ20����죬20������")
		AddMenuItem("@7�Ƿ�ȡ","")
		AddMenuItem("@3��","huan03")
		AddMenuItem("@3����","no")
        
        elseif(answer=="huan01") then
		if(LuaItemCount("o_mission210")>=10) then
			DelItem("o_mission210",10)
			LuaGive("o_state008j",1)
		else
			LuaSay("��ʾ����ĳ����ۻ�ʯ����10�����޷���ȡ���������")
		end
            
        elseif(answer=="huan02") then
		if(LuaItemCount("o_mission210")>=10) then
			DelItem("o_mission210",10)
			LuaGive("o_state001j",1)
		else
			LuaSay("��ʾ����ĳ����ۻ�ʯ����10�����޷���ȡ˫����")
		end
            
        elseif(answer=="huan03") then
		if(LuaItemCount("o_mission210")>=2) then
			DelItem("o_mission210",2)
			LuaGive("o_drug_hp3",20)
			LuaGive("o_drug_mp3",20)
		else
			LuaSay("��ʾ����ĳ����ۻ�ʯ����2�����޷���ȡҩƷ")
		end
            
        elseif(answer=="no") then
		LuaSay("��ʾ��������κ�ʱ�����һ�ȡҩƷ��ҩƷ���㣬���Լӿ���ɱ�������ٶȡ�")


  
elseif(answer=="Tdrchushi") then
	if(LuaQueryTask("Tdrchushi")==0) then 
		LuaSay("��ʾ�����ҵ������ֻ�оۻ�ʯ���м�ֵ��ÿһ���ս������ˣ���������ȡ20�������ۻ�ʯ")
		LuaSay("��ʾ��������ó����ۻ�ʯ����ȡ�����˫������ҩƷ����ȥ�Ĵ�С�ȵ�")
		LuaGive("o_mission210",20)
		LuaSetTask("Tdrchushi",99)
		UpdateMenu()
	end
	
	

elseif(answer=="hecheng") then
	AddMenuItem("@7�ϳɷ�ʽѡ��","")
	AddMenuItem("@33��1(40%�ɹ�)","3")
	AddMenuItem("@34��1(50%�ɹ�)","4")
	AddMenuItem("@35��1(80%�ɹ�)","5")
	AddMenuItem("@36��1(100%�ɹ�)","6")
	elseif(answer=="3") then
		if(LuaItemCount("o_mission210")>=3) then
		AddMenuItem("@7�ϳ�����ѡ��","")
		AddMenuItem("@3��1��","one1")
		AddMenuItem("@3��5��","five1")
		AddMenuItem("@3ȫ���ϳ�","all1")
		else
		LuaSay("��ʾ��������Ҫ3�������ۻ�ʯ�����ܺϳ��м��ۻ�ʯ")
		end
	elseif(answer=="one1") then
		DelItem("o_mission210",3)
		if(LuaRandom(5)<2) then
			LuaSay("��ʾ���ϳɳɹ������1���м��ۻ�ʯ")
			LuaGive("o_mission211",1)
		else
  			LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@33�������ۻ�ʯ")
		end
	elseif(answer=="five1") then
		if(LuaItemCount("o_mission210")>=15) then
	    		DelItem("o_mission210",15)
	    		if(LuaRandom(5)<2) then
				LuaSay("��ʾ���ϳɳɹ������5���м��ۻ�ʯ")
				LuaGive("o_mission211",5)
			else
  				LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@315�������ۻ�ʯ")
			end
		else
  			LuaSay("��ʾ����ĳ����ۻ�ʯ����15����")
		end
		
	elseif(answer=="all1") then
		local a=floor(LuaItemCount("o_mission210")/3)
		DelItem("o_mission210",3*a) 
		if(LuaRandom(5)<2) then
			LuaSay("��ʾ���ϳɳɹ������@3"..a.."���м��ۻ�ʯ")
			LuaGive("o_mission211",a)
		else
  			LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@3"..3*a.."�������ۻ�ʯ")
		end
		
	elseif(answer=="4") then
		if(LuaItemCount("o_mission210")>=4) then
			AddMenuItem("@7�ϳ�����ѡ��","")
			AddMenuItem("@3��1��","one2")
			AddMenuItem("@3��5��","five2")
			AddMenuItem("@3ȫ���ϳ�","all2")
		else
			LuaSay("��ʾ��������Ҫ4�������ۻ�ʯ�����ܺϳ��м��ۻ�ʯ")
		end
	elseif(answer=="one2") then
		DelItem("o_mission210",4)
		if(LuaRandom(2)==0) then
			LuaSay("��ʾ���ϳɳɹ������1���м��ۻ�ʯ")
			LuaGive("o_mission211",1)
		else
  			LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@34�������ۻ�ʯ")
		end
		
	elseif(answer=="five2") then
		if(LuaItemCount("o_mission210")>=20) then
	    		DelItem("o_mission210",20)
	    		if(LuaRandom(2)==0) then
				LuaSay("��ʾ���ϳɳɹ������5���м��ۻ�ʯ")
				LuaGive("o_mission211",5)
			else
  				LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@320�������ۻ�ʯ")
			end
		else
  			LuaSay("��ʾ����ĳ����ۻ�ʯ����15����")
		end
		
	elseif(answer=="all2") then
		local a=floor(LuaItemCount("o_mission210")/4)
		DelItem("o_mission210",4*a) 
		if(LuaRandom(2)==0) then
			LuaSay("��ʾ���ϳɳɹ������@3"..a.."���м��ۻ�ʯ")
			LuaGive("o_mission211",a)
		else
  			LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@3"..4*a.."�������ۻ�ʯ")
		end     
		
	elseif(answer=="5") then
		if(LuaItemCount("o_mission210")>=5) then
			AddMenuItem("@7�ϳ�����ѡ��","")
			AddMenuItem("@3��1��","one3")
			AddMenuItem("@3��5��","five3")
			AddMenuItem("@3ȫ���ϳ�","all3")
		else
			LuaSay("��ʾ��������Ҫ5�������ۻ�ʯ�����ܺϳ��м��ۻ�ʯ")
		end
	elseif(answer=="one3") then
	    DelItem("o_mission210",5)
		if(LuaRandom(5)>0) then
			LuaSay("��ʾ���ϳɳɹ������1���м��ۻ�ʯ")
			LuaGive("o_mission211",1)
		else
  			LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@35�������ۻ�ʯ")
		end
		
	elseif(answer=="five3") then
		if(LuaItemCount("o_mission210")>=25) then
	    		DelItem("o_mission210",25)
	    		if(LuaRandom(5)>0) then
				LuaSay("��ʾ���ϳɳɹ������5���м��ۻ�ʯ")
				LuaGive("o_mission211",5)
			else
  				LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@325�������ۻ�ʯ")
			end
		else
  			LuaSay("��ʾ����ĳ����ۻ�ʯ����25����")
		end
		
	elseif(answer=="all3") then
		local a=floor(LuaItemCount("o_mission210")/5)
		DelItem("o_mission210",5*a) 
		if(LuaRandom(5)>0) then
			LuaSay("��ʾ���ϳɳɹ������@3"..a.."���м��ۻ�ʯ")
			LuaGive("o_mission211",a)
		else
  			LuaSay("��ʾ���ϳ�ʧ�ܣ�����ʧ��@3"..5*a.."�������ۻ�ʯ")
		end
	
	elseif(answer=="6") then
		if(LuaItemCount("o_mission210")>=6) then
			AddMenuItem("@7�ϳ�����ѡ��","")
			AddMenuItem("@3��1��","one4")
			AddMenuItem("@3��5��","five4")
			AddMenuItem("@3ȫ���ϳ�","all4")
		else
			LuaSay("��ʾ��������Ҫ6�������ۻ�ʯ�����ܺϳ��м��ۻ�ʯ")
		end
	    elseif(answer=="one4") then
		DelItem("o_mission210",6)
		LuaSay("��ʾ���ϳɳɹ������1���м��ۻ�ʯ")
		LuaGive("o_mission211",1)
		
		elseif(answer=="five4") then
		if(LuaItemCount("o_mission210")>=30) then
	    	DelItem("o_mission210",30)
			LuaSay("��ʾ���ϳɳɹ������1���м��ۻ�ʯ")
			LuaGive("o_mission211",5)
		else
  		LuaSay("��ʾ����ĳ����ۻ�ʯ����30����")
		end
		
		elseif(answer=="all4") then
			local a=floor(LuaItemCount("o_mission210")/6)
			DelItem("o_mission210",6*a) 
			LuaSay("��ʾ���ϳɳɹ������@3"..a.."���м��ۻ�ʯ")
			LuaGive("o_mission211",a)

   
elseif(answer=="zhuanqu") then
	AddMenuItem("@7׬ȡ�ۻ�ʯ","")
	AddMenuItem("@3�Ĵ�С","dubo")
	AddMenuItem("@351������","51level")
	AddMenuItem("@3���⽱��","drwenda")    --��һ����ĺķ�Ϊ5���ۻ�ʯ��ȫ�����20��󣬻��20���ۻ�ʯ
	AddMenuItem("@3�������","monster")
    
elseif(answer=="monster") then
	LuaSay("��ʾ����ɱ������һ�����ʻ�þۻ�ʯ")

elseif(answer=="51level") then
	if(LuaQuery("level")<51) then
		LuaSay("��ʾ������������Ժܿ�������51�������ʹ���˾�������˫�����������°빦��")
		LuaSay("��ʾ���ȼ�����51���Ժ��㽫�õ�50�������ۻ�ʯ")
	else
		if(LuaQuery("T51level")==0) then
			LuaSay("��ʾ����ȡ��51��������50�������ۻ�ʯ")
			LuaGive("o_mission210",20)
			LuaGive("o_mission210",20)
			LuaGive("o_mission210",10)
			LuaSet("T51level",99)
		else
			LuaSay("��ʾ�����Ѿ���ȡ��51���Ľ�������������")
		end
	end 

elseif(answer=="drwenda") then 
 	if(LuaQuery("rightanswer")==0) then                  
 		LuaSay("ϵͳ���������ʫ�ʡ��������������ٿ�4����Ŀ��ÿ����Ŀ��Ϊ20��ÿ���11����Ŀ������õ�1�������ۻ�ʯ�Ľ���")
 		if(LuaQueryTask("drwenda")==0) then
			LuaSay("������ӵ��һ����Ѵ���Ļ���")
			AddMenuItem("@7�Ƿ����","")
			AddMenuItem("@3��ʼ����","begin")
			AddMenuItem("@3������","noanswer")
		else
			LuaSay("���Ѿ��õ�����Ѵ���Ļ��ᣬ���ڴ�����Ҫ����6�������ۻ�ʯ�����Թ���ش�20����Ŀ�Ļ���")
			LuaSay("�����ȫ����ԣ����ᾡ׬14�������ۻ�ʯŶ��")
			AddMenuItem("@7�Ƿ������","")
			AddMenuItem("@3����","buyanswer")
			AddMenuItem("@3������","noanswer")
		end
	else
		LuaSay("��ʾ�����ڸղŵĴ����У������@3"..LuaQuery("rightanswer").."����Ŀ�����"..LuaQuery("rightanswer").."�������ۻ�ʯ")
		LuaGive("o_mission210",LuaQuery("rightanswer")) 
		LuaDel("rightanswer")
	end
    
	elseif(answer=="begin") then
		LuaSetTask("drwenda",1)
		local a=LuaRandom(5)
		if(a==0) then 
			TaskProcess("A")
		elseif(a==1) then
			TaskProcess("B")
		elseif(a==2) then
			TaskProcess("C")
		elseif(a==3) then
			TaskProcess("D")
		elseif(a==4) then
			TaskProcess("G")
		end
        
	elseif(answer=="noanswer") then
		LuaSay("��ʾ�����κ�ʱ�򶼿������һش�����") 
    
	elseif(answer=="buyanswer") then
		if(LuaItemCount("o_mission210")>=6) then
			DelItem("o_mission210",6)
			local a=LuaRandom(5)
			if(a==0) then 
				TaskProcess("A")
			elseif(a==1) then
			TaskProcess("B")
			elseif(a==2) then
				TaskProcess("C")
			elseif(a==3) then
				TaskProcess("D")
			elseif(a==4) then
				TaskProcess("G")
			end   
		else
			LuaSay("��ʾ�����������Ҫ@36�������ۻ�ʯ")
		end
	 
	elseif(answer=="dubo") then
		AddMenuItem("@7�Ĵ�С","")
		AddMenuItem("@3ѹ��","big")
		AddMenuItem("@3ѹС","small")
		AddMenuItem("@3�˽����","guize")
	elseif(answer=="guize") then 
		LuaSay("�Ĵ�С�Ĺ�����ֻ���ܶ��м��ۻ�ʯ��ÿ���޶�1��������1~3ΪС������4~6Ϊ��")
		DoTalk("dubo") 
    
	elseif(answer=="big") then 
		if(LuaItemCount("o_mission211")>0) then
			local a=LuaRandom(6)+1
			if(a>3) then
				LuaGive("o_mission211",1)
				LuaSay("��ʾ��ϵͳ������@3"..a.."��@0����ѹ��ѹ���ˣ�����м��ۻ�ʯһ��")
			else
				DelItem("o_mission211",1)
				LuaSay("��ʾ��ϵͳ������@3"..a.."��@0����ϧ��ѹ�Ĵ�ʧȥ�м��ۻ�ʯһ��")
			end 
			DoTalk("dubo")
		else
			LuaSay("��ʾ����û��ʧ�м��ۻ�ʯ�����ܲμӶĴ�С")
		end
	
	elseif(answer=="small") then 
	if(LuaItemCount("o_mission211")>0) then
		local a=LuaRandom(6)+1
		if(a<4) then
			LuaGive("o_mission211",1)
			LuaSay("��ʾ��ϵͳ������@3"..a.."��@0����ѹСѹ���ˣ�����м��ۻ�ʯһ��")
		else
			DelItem("o_mission211",1)
			LuaSay("��ʾ��ϵͳ������@3"..a.."��@0����ϧ��ѹ��С��ʧȥ�м��ۻ�ʯһ��")
		end 
		DoTalk("dubo")
 	else
 		LuaSay("��ʾ����û��ʧ�м��ۻ�ʯ�����ܲμӶĴ�С")
	end

end 
LuaSendMenu()
return 1
end 
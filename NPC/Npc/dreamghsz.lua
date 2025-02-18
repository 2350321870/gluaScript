NPCINFO = { 
serial="178" ,
base_name="dreamghsz" ,
icon=2563,
NpcMove=2563,
name="勾魂使者" ,
iconaddr=1 ,
butt="10|10|60" ,
name_color="CEFFCE" ,
lastsay="梦境由我做主",
LuaType=1,
} 
function do_talk(answer) 
if (answer=="ask") then                      
	local level= LuaQuery("level")
	AddTopSayMenuItem("@7任务列表","")
	if(LuaDreamQuery("T"..LuaQueryStr("id").."")==0) then 
		AddTopSayMenuItem("@3解救可人","jiejiu")
		havetask =1
	end
	if(LuaQueryTask("Tdrchushi")==0) then
		AddTopSayMenuItem("@3领取聚魂石","Tdrchushi")
		havetask =1
	end
	AddTopSayMenuItem("@3赚取聚魂石","zhuanqu")
	AddTopSayMenuItem("@3合成中级聚魂石","hecheng")
	AddTopSayMenuItem("@3聚魂石换道具","huanqu")

if(havetask ==2)then
	AddTopSayMenuItem("聊天","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("聊天","liaotian","1")
else
	AddTopSayMenuItem("聊天","liaotian","0")
end
return 1 

elseif(answer=="liaotian") then
	LuaSay("勾魂使者：我也是通情达理的，只要你能收集到20个中级聚魂石，我今天进放过可人")

elseif(answer=="jiejiu") then
 	if(LuaItemCount("o_mission211")>=20) then
		LuaDreamSet("T"..LuaQueryStr("id").."",99)
		DelItem("o_mission211",20)
		LuaSay("提示：解救可人成功")
  	else
  		LuaSay("提示：你只需要收集@320个中级聚魂石@0，我就放了可人")
  	end
	elseif(answer=="huanqu") then
		LuaSay("提示：聚魂石可以换取初级经验卷、双攻符、药品")
		AddMenuItem("@7选择换取物品","")
		AddMenuItem("@3换取经验卷","jingyanjuan")
		AddMenuItem("@3换取双攻符","shuanggongfu")
		AddMenuItem("@3换取药品","yaopin")
	elseif(answer=="jingyanjuan") then
		LuaSay("提示：10个初级聚魂石，换取1个初级经验卷。")
		AddMenuItem("@7是否换取","")
		AddMenuItem("@3换","huan01")
		AddMenuItem("@3不换","no")
	elseif(answer=="shuanggongfu") then
		LuaSay("提示：10个初级聚魂石，换取1个双攻符。")
		AddMenuItem("@7是否换取","")
		AddMenuItem("@3换","huan02")
		AddMenuItem("@3不换","no")
	elseif(answer=="yaopin") then
		LuaSay("提示：2个初级聚魂石，换取20个大红，20个大蓝")
		AddMenuItem("@7是否换取","")
		AddMenuItem("@3换","huan03")
		AddMenuItem("@3不换","no")
        
        elseif(answer=="huan01") then
		if(LuaItemCount("o_mission210")>=10) then
			DelItem("o_mission210",10)
			LuaGive("o_state008j",1)
		else
			LuaSay("提示：你的初级聚魂石不够10个，无法换取初级经验卷")
		end
            
        elseif(answer=="huan02") then
		if(LuaItemCount("o_mission210")>=10) then
			DelItem("o_mission210",10)
			LuaGive("o_state001j",1)
		else
			LuaSay("提示：你的初级聚魂石不够10个，无法换取双攻符")
		end
            
        elseif(answer=="huan03") then
		if(LuaItemCount("o_mission210")>=2) then
			DelItem("o_mission210",2)
			LuaGive("o_drug_hp3",20)
			LuaGive("o_drug_mp3",20)
		else
			LuaSay("提示：你的初级聚魂石不够2个，无法换取药品")
		end
            
        elseif(answer=="no") then
		LuaSay("提示：你可以任何时候找我换取药品。药品充足，可以加快你杀怪升级速度。")


  
elseif(answer=="Tdrchushi") then
	if(LuaQueryTask("Tdrchushi")==0) then 
		LuaSay("提示：在我的世界里，只有聚魂石才有价值。每一个刚进来的人，都可以领取20个初级聚魂石")
		LuaSay("提示：你可以用初级聚魂石，换取经验卷、双攻符、药品或者去赌大小等等")
		LuaGive("o_mission210",20)
		LuaSetTask("Tdrchushi",99)
		UpdateMenu()
	end
	
	

elseif(answer=="hecheng") then
	AddMenuItem("@7合成方式选择","")
	AddMenuItem("@33合1(40%成功)","3")
	AddMenuItem("@34合1(50%成功)","4")
	AddMenuItem("@35合1(80%成功)","5")
	AddMenuItem("@36合1(100%成功)","6")
	elseif(answer=="3") then
		if(LuaItemCount("o_mission210")>=3) then
		AddMenuItem("@7合成数量选择","")
		AddMenuItem("@3合1个","one1")
		AddMenuItem("@3合5个","five1")
		AddMenuItem("@3全部合成","all1")
		else
		LuaSay("提示：至少需要3个初级聚魂石，才能合成中级聚魂石")
		end
	elseif(answer=="one1") then
		DelItem("o_mission210",3)
		if(LuaRandom(5)<2) then
			LuaSay("提示：合成成功，获得1个中级聚魂石")
			LuaGive("o_mission211",1)
		else
  			LuaSay("提示：合成失败，你损失了@33个初级聚魂石")
		end
	elseif(answer=="five1") then
		if(LuaItemCount("o_mission210")>=15) then
	    		DelItem("o_mission210",15)
	    		if(LuaRandom(5)<2) then
				LuaSay("提示：合成成功，获得5个中级聚魂石")
				LuaGive("o_mission211",5)
			else
  				LuaSay("提示：合成失败，你损失了@315个初级聚魂石")
			end
		else
  			LuaSay("提示：你的初级聚魂石不足15个。")
		end
		
	elseif(answer=="all1") then
		local a=floor(LuaItemCount("o_mission210")/3)
		DelItem("o_mission210",3*a) 
		if(LuaRandom(5)<2) then
			LuaSay("提示：合成成功，获得@3"..a.."个中级聚魂石")
			LuaGive("o_mission211",a)
		else
  			LuaSay("提示：合成失败，你损失了@3"..3*a.."个初级聚魂石")
		end
		
	elseif(answer=="4") then
		if(LuaItemCount("o_mission210")>=4) then
			AddMenuItem("@7合成数量选择","")
			AddMenuItem("@3合1个","one2")
			AddMenuItem("@3合5个","five2")
			AddMenuItem("@3全部合成","all2")
		else
			LuaSay("提示：至少需要4个初级聚魂石，才能合成中级聚魂石")
		end
	elseif(answer=="one2") then
		DelItem("o_mission210",4)
		if(LuaRandom(2)==0) then
			LuaSay("提示：合成成功，获得1个中级聚魂石")
			LuaGive("o_mission211",1)
		else
  			LuaSay("提示：合成失败，你损失了@34个初级聚魂石")
		end
		
	elseif(answer=="five2") then
		if(LuaItemCount("o_mission210")>=20) then
	    		DelItem("o_mission210",20)
	    		if(LuaRandom(2)==0) then
				LuaSay("提示：合成成功，获得5个中级聚魂石")
				LuaGive("o_mission211",5)
			else
  				LuaSay("提示：合成失败，你损失了@320个初级聚魂石")
			end
		else
  			LuaSay("提示：你的初级聚魂石不足15个。")
		end
		
	elseif(answer=="all2") then
		local a=floor(LuaItemCount("o_mission210")/4)
		DelItem("o_mission210",4*a) 
		if(LuaRandom(2)==0) then
			LuaSay("提示：合成成功，获得@3"..a.."个中级聚魂石")
			LuaGive("o_mission211",a)
		else
  			LuaSay("提示：合成失败，你损失了@3"..4*a.."个初级聚魂石")
		end     
		
	elseif(answer=="5") then
		if(LuaItemCount("o_mission210")>=5) then
			AddMenuItem("@7合成数量选择","")
			AddMenuItem("@3合1个","one3")
			AddMenuItem("@3合5个","five3")
			AddMenuItem("@3全部合成","all3")
		else
			LuaSay("提示：至少需要5个初级聚魂石，才能合成中级聚魂石")
		end
	elseif(answer=="one3") then
	    DelItem("o_mission210",5)
		if(LuaRandom(5)>0) then
			LuaSay("提示：合成成功，获得1个中级聚魂石")
			LuaGive("o_mission211",1)
		else
  			LuaSay("提示：合成失败，你损失了@35个初级聚魂石")
		end
		
	elseif(answer=="five3") then
		if(LuaItemCount("o_mission210")>=25) then
	    		DelItem("o_mission210",25)
	    		if(LuaRandom(5)>0) then
				LuaSay("提示：合成成功，获得5个中级聚魂石")
				LuaGive("o_mission211",5)
			else
  				LuaSay("提示：合成失败，你损失了@325个初级聚魂石")
			end
		else
  			LuaSay("提示：你的初级聚魂石不足25个。")
		end
		
	elseif(answer=="all3") then
		local a=floor(LuaItemCount("o_mission210")/5)
		DelItem("o_mission210",5*a) 
		if(LuaRandom(5)>0) then
			LuaSay("提示：合成成功，获得@3"..a.."个中级聚魂石")
			LuaGive("o_mission211",a)
		else
  			LuaSay("提示：合成失败，你损失了@3"..5*a.."个初级聚魂石")
		end
	
	elseif(answer=="6") then
		if(LuaItemCount("o_mission210")>=6) then
			AddMenuItem("@7合成数量选择","")
			AddMenuItem("@3合1个","one4")
			AddMenuItem("@3合5个","five4")
			AddMenuItem("@3全部合成","all4")
		else
			LuaSay("提示：至少需要6个初级聚魂石，才能合成中级聚魂石")
		end
	    elseif(answer=="one4") then
		DelItem("o_mission210",6)
		LuaSay("提示：合成成功，获得1个中级聚魂石")
		LuaGive("o_mission211",1)
		
		elseif(answer=="five4") then
		if(LuaItemCount("o_mission210")>=30) then
	    	DelItem("o_mission210",30)
			LuaSay("提示：合成成功，获得1个中级聚魂石")
			LuaGive("o_mission211",5)
		else
  		LuaSay("提示：你的初级聚魂石不足30个。")
		end
		
		elseif(answer=="all4") then
			local a=floor(LuaItemCount("o_mission210")/6)
			DelItem("o_mission210",6*a) 
			LuaSay("提示：合成成功，获得@3"..a.."个中级聚魂石")
			LuaGive("o_mission211",a)

   
elseif(answer=="zhuanqu") then
	AddMenuItem("@7赚取聚魂石","")
	AddMenuItem("@3赌大小","dubo")
	AddMenuItem("@351级奖励","51level")
	AddMenuItem("@3答题奖励","drwenda")    --答一次题的耗费为5个聚魂石，全部答对20题后，获得20个聚魂石
	AddMenuItem("@3怪物掉落","monster")
    
elseif(answer=="monster") then
	LuaSay("提示：击杀怪物有一定几率获得聚魂石")

elseif(answer=="51level") then
	if(LuaQuery("level")<51) then
		LuaSay("提示：在这里你可以很快升级到51级，如果使用了经验卷或者双攻符，更是事半功倍")
		LuaSay("提示：等级到了51级以后，你将得到50个初级聚魂石")
	else
		if(LuaQuery("T51level")==0) then
			LuaSay("提示：领取了51级奖励，50个初级聚魂石")
			LuaGive("o_mission210",20)
			LuaGive("o_mission210",20)
			LuaGive("o_mission210",10)
			LuaSet("T51level",99)
		else
			LuaSay("提示：你已经领取了51级的奖励，不可再领")
		end
	end 

elseif(answer=="drwenda") then 
 	if(LuaQuery("rightanswer")==0) then                  
 		LuaSay("系统将随机产生诗词、动漫、歌曲、百科4类题目，每次题目数为20，每答对11个题目，将会得到1个初级聚魂石的奖励")
 		if(LuaQueryTask("drwenda")==0) then
			LuaSay("你现在拥有一次免费答题的机会")
			AddMenuItem("@7是否答题","")
			AddMenuItem("@3开始答题","begin")
			AddMenuItem("@3不答题","noanswer")
		else
			LuaSay("你已经用掉了免费答题的机会，现在答题需要付出6个初级聚魂石，可以购买回答20个题目的机会")
			LuaSay("如果你全部答对，将会尽赚14个初级聚魂石哦。")
			AddMenuItem("@7是否购买答题","")
			AddMenuItem("@3购买","buyanswer")
			AddMenuItem("@3不购买","noanswer")
		end
	else
		LuaSay("提示：你在刚才的答题中，答对了@3"..LuaQuery("rightanswer").."个题目，获得"..LuaQuery("rightanswer").."个初级聚魂石")
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
		LuaSay("提示：你任何时候都可以找我回答问题") 
    
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
			LuaSay("提示：购买答题需要@36个初级聚魂石")
		end
	 
	elseif(answer=="dubo") then
		AddMenuItem("@7赌大小","")
		AddMenuItem("@3压大","big")
		AddMenuItem("@3压小","small")
		AddMenuItem("@3了解规则","guize")
	elseif(answer=="guize") then 
		LuaSay("赌大小的规则：我只接受赌中级聚魂石，每次限赌1个。开中1~3为小，开中4~6为大。")
		DoTalk("dubo") 
    
	elseif(answer=="big") then 
		if(LuaItemCount("o_mission211")>0) then
			local a=LuaRandom(6)+1
			if(a>3) then
				LuaGive("o_mission211",1)
				LuaSay("提示：系统开出了@3"..a.."点@0，你压大压中了，获得中级聚魂石一个")
			else
				DelItem("o_mission211",1)
				LuaSay("提示：系统开出了@3"..a.."点@0，可惜你压的大，失去中级聚魂石一个")
			end 
			DoTalk("dubo")
		else
			LuaSay("提示：你没有失中级聚魂石，不能参加赌大小")
		end
	
	elseif(answer=="small") then 
	if(LuaItemCount("o_mission211")>0) then
		local a=LuaRandom(6)+1
		if(a<4) then
			LuaGive("o_mission211",1)
			LuaSay("提示：系统开出了@3"..a.."点@0，你压小压中了，获得中级聚魂石一个")
		else
			DelItem("o_mission211",1)
			LuaSay("提示：系统开出了@3"..a.."点@0，可惜你压的小，失去中级聚魂石一个")
		end 
		DoTalk("dubo")
 	else
 		LuaSay("提示：你没有失中级聚魂石，不能参加赌大小")
	end

end 
LuaSendMenu()
return 1
end 
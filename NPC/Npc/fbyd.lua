NPCINFO = {
serial= "507" ,
base_name="fbyd",
icon= 2537, 
NpcMove=2537,
name= "ҩ��" ,
iconaddr=1,
butt="20|15|63", 
name_color = "CEFFCE" , 
lastsay="�����׶㰵���ѷ�С��",
have_sell_item=1,
LuaType=1,
}
addBuyitem={
count=6,
{"o_drug_hp1",100,8},
{"o_drug_hp2",100,8},
{"o_drug_hp3",100,8},
{"o_drug_mp1",100,8},
{"o_drug_mp2",100,8},
{"o_drug_mp3",100,8},
}
function do_talk(answer)
 if (answer=="ask") then
        havetask =0
	AddTopSayMenuItem("@7ҩ��","no")
        AddTopSayMenuItem("@3����","buy1")
if(havetask ==2)then
	AddTopSayMenuItem("����","liaotian","2")
elseif(havetask ==1) then
	AddTopSayMenuItem("����","liaotian","1")
else
	AddTopSayMenuItem("����","liaotian","0")
end

return 1
elseif(answer=="liaotian") then
     LuaSay("ҩ��:���ڸ���ת,С�Ļᰤ��")	
	    
elseif(answer=="buy1") then
	DoBuy()   

end
LuaSendMenu()
return 1
end
NPCINFO = {
serial= "185" ,
base_name="Mrongrenld",
icon= 2699, 
NpcMove=2699, 
name= "九" , 
level=10 ,
iconaddr=1, 
butt="1|1|1", 
name_color = "CEFFCE" ,
LuaType=1,
}
  function do_talk(answer)
   if (answer=="ask") then
    if(LuaQueryTask("Tmrongrenld")==0)  then
    LuaSetTask("Tmrongrenld",99)
    LuaSay("昔日漂亮的绿水湖畔，生长着一群无忧无虑的绒人，自从洛邑的田禾雨掌权后，这里不知何故发生了巨变。")
    LuaSay("绒人被一群邪恶生物给惊吓而走，如今数量繁多@3邪神牛、黑暗巫师、诅咒魔@0，严重的威胁着镐京百姓的安全")
    end
end
LuaSendMenu()
return 1
end
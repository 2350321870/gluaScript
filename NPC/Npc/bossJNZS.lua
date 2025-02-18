NPCINFO = {
serial="312" ,
base_name="bossJNZS",
icon=2994,
NpcMove=2994,
name="如花", ----技能展示 
iconaddr=1 ,
butt="10|10|77" ,
name_color="CEFFCE",
LuaType=1,
class = "shen",
addhp = 100000,
addmp = 2500000,
addjz=8000,
addfy=110,
addgj=180,
isboss = 1,
level = 40,
ca = 1,
sp=1,   
move_speed = 7,
att_frep = 3000,
target_type = 3,
target = "wu",
track_range = 49,
attack_range = 36,
skill_count = 9,
skill_list="162:1 122:1 129:1 177:1 137:1 127:1 164:1 167:1 117:1",----162:落雷  122：半月斩  129：爆裂之剑 专属技能： 221：五雷轰顶    220：三分归元气 222：倾国银弹波  223：强力弱甲     218：天选道怨
win_exp = 100,
rand = 10000,
gold_base = 0,
win_money = 75,
item_base = 0,
item = "0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0",
other_base = 100,
other = "e_falchion013:8|e_sword014:16|e_fan007:24|e_clothes015:35|e_pants015:46|e_head015:65|e_earring008:100",
}

function BossAI(bhp,bmp,EnemyID,hp,mp,level)
 --[[       BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"hp").."HP！")
        BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"mp").."MP！")
        BossLocalMsg("你lv为"..LuaQueryEnemy(EnemyID,"level").."！")
        BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"att").."攻击！")
        BossLocalMsg("你身上有"..LuaQueryEnemy(EnemyID,"def").."防御！")
        BossLocalMsg("你是"..LuaQueryStrEnemy(EnemyID,"name").."！")
        BossLocalMsg("你是"..LuaQueryStrEnemy(EnemyID,"class").."！")          ]]
 -----------------------

            if(LuaQueryVar("ref1") ==0) then
               Attack(EnemyID,0,0)
               LuaSetVar("ref1",1)
            elseif(LuaQueryVar("ref1") ==1) then
               Attack(EnemyID,1,0)
               LuaSetVar("ref1",2)
            elseif(LuaQueryVar("ref1") ==2) then
               Attack(EnemyID,2,0)
               LuaSetVar("ref1",3)
               BossLocalMsg("不同的职业有不同华丽的技能！")
            elseif(LuaQueryVar("ref1") ==3) then
               Attack(EnemyID,3,0)
               LuaSetVar("ref1",4)
            elseif(LuaQueryVar("ref1") ==4) then
               Attack(EnemyID,4,0)
               LuaSetVar("ref1",5)
            elseif(LuaQueryVar("ref1") ==5) then
               Attack(EnemyID,5,0)
               LuaSetVar("ref1",6)
               BossLocalMsg("随着角色等级提升，你可以学会更强大、更华丽的技能！")
            elseif(LuaQueryVar("ref1") ==6) then
               Attack(EnemyID,6,0)
               LuaSetVar("ref1",7)
            elseif(LuaQueryVar("ref1") ==7) then
               Attack(EnemyID,7,0)
               LuaSetVar("ref1",0)
            elseif(LuaQueryVar("ref1") ==8) then
               Attack(EnemyID,8,0)
               LuaSetVar("ref1",0)
               BossLocalMsg("PK时注意技能搭配，可以发挥更好的战斗力！")
            elseif(LuaQueryVar("ref1") ==9) then
               Attack(EnemyID,9,0)
               LuaSetVar("ref1",0)
			end





return 1
end
local function Reply(msg)
local text = msg.content_.text_
if not database:get(bot_id..'Reply:Status'..msg.chat_id_) then

if text == 'الاسطوره' then 
send(msg.chat_id_,msg.id_, ' [كبير المجال](t.me/elostoraelmalek) ') 
return false
end

if text == 'تايجر' then 
send(msg.chat_id_,msg.id_, ' [مطور سورس تالين وعمك يبني🌝❤️.](t.me/T_G120) ') 
return false
end

if text == '😹' or text == '😹😹' or text == '😹😹😹' or text == '😹😹😹😹' or text == '😹😹😹😹😹' then 
send(msg.chat_id_,msg.id_, ' دوم يرحيي❤️🌚 ') 
return false
end

if text == 'انا مين' and SudoBot(msg) then 
send(msg.chat_id_,msg.id_, ' انت مطور يابا ') 
return false
end

if text == 'انا مين' and CoSu(msg) then 
send(msg.chat_id_,msg.id_, ' انت مالك الجروب يقلبي🙄♥ ') 
return false
end

if text == 'انا مين' and Constructor(msg) then 
send(msg.chat_id_,msg.id_, ' انت المنشئ هنا ') 
return false
end

if text == 'انا مين' and BasicConstructor(msg) then 
send(msg.chat_id_,msg.id_, ' انت هنا منشئ اساسي يعني اعلى رتبه عاوزك تفتخر😹 ') 
return false
end

if text == 'انا مين' and Manager(msg) then 
send(msg.chat_id_,msg.id_, ' انت المدير يعني الروم تحت سيطرتك😹 ') 
return false
end

if text == 'انا مين' and Mod(msg) then 
send(msg.chat_id_,msg.id_, ' انت مجرد ادمن اجتهد عشان ياخد رتبه😹 ') 
return false
end

if text == 'انا مين' and Special(msg) then 
send(msg.chat_id_,msg.id_, ' انت مميز ابن ناس 😊 ') 
return false
end

if text == 'انا مين' or text == 'نبنبنبنبنف' then
send(msg.chat_id_,msg.id_, ' انت مجرد عضو ملوش لازمه😹 ') 
return false
end

if text == '😂' or text == '😂😂' or text == '😂😂😂' or text == '😂😂😂😂' or text == '😂😂😂😂😂' then 
send(msg.chat_id_,msg.id_, ' تدوم يغالي 🌚❤ ') 
return false
end

if text == 'بحبك' then 
send(msg.chat_id_,msg.id_, ' ونن كمان يرحي 😍♥️ ') 
return false
end

if text == 'بوت' then
Namebot = (database:get(bot_id..'Name:Bot') or 'فاست')
send(msg.chat_id_, msg.id_,'اسمي ['..Namebot..'] .')
return false
end

if text == 'بكرهك' then 
send(msg.chat_id_,msg.id_, ' بس انا بحبك🙂🖤 ') 
return false
end

if text == 'اكرهك' then 
send(msg.chat_id_,msg.id_, ' ونا بحبك 🙂🖤 ') 
return false
end

if text == 'هاي' then 
send(msg.chat_id_,msg.id_, ' هايات يعمري🌚♥ ') 
return false
end

if text == 'هي' then 
send(msg.chat_id_,msg.id_, ' هاي يقلبي🌚💖 ') 
return false
end


if text == 'هيي' then 
send(msg.chat_id_,msg.id_, ' هي يجمري منور 🌚🤍 ') 
return false
end

if text == '🙂' then 
send(msg.chat_id_,msg.id_, ' متزعلش نن بحبك 🥺❤ ') 
return false
end

if text == '🙂🙂' then 
send(msg.chat_id_,msg.id_, ' مالك يحزين 🙂 ') 
return false
end

if text == '🙂🙂🙂' then 
send(msg.chat_id_,msg.id_, ' متوحد 🙂 ') 
return false
end


if text == 'خلصا' then 
send(msg.chat_id_,msg.id_, ' بالصلصه😹 ') 
return false
end

if text == 'خلصا' then 
send(msg.chat_id_,msg.id_, ' بالصلصه 😹🙈 ') 
return false
end


if text == 'كشف' then 
send(msg.chat_id_,msg.id_, ' مبروك طلع حامل😹🤰 ') 
return false
end

if text == 'انا جيت' then 
send(msg.chat_id_,msg.id_, ' نورت يروحي🌚💞 ') 
return false
end

if text == 'نجيت' then 
send(msg.chat_id_,msg.id_, ' نورت يحياتي🌚❤️ ') 
return false
end


if text == 'نا جيت' then 
send(msg.chat_id_,msg.id_, ' نورت يعمري💞🌚 ') 
return false
end


if text == 'باي' then 
send(msg.chat_id_,msg.id_, ' يوهه خليك بقا شويه🥺❤ ') 
return false
end

if text == 'بي' then 
send(msg.chat_id_,msg.id_, ' خليك شويه معانا 🥺🙈 ') 
return false
end


if text == 'بيي' then 
send(msg.chat_id_,msg.id_, ' خليك شويه معانا🥺❤ ') 
return false
end


if text == 'ياتي' then 
send(msg.chat_id_,msg.id_, ' يوهه بتكثف🥺🙈 ') 
return false
end




end

if text == 'تفعيل ردود البوت' and Manager(msg) then
database:del(bot_id..'repdark:Status'..msg.chat_id_)
send(msg.chat_id_, msg.id_,'◍ تم تفعيل الردود بنجاح')
return false
end

if text == 'تعطيل ردود البوت' and Manager(msg) then
database:set(bot_id..'repdark:Status'..msg.chat_id_,true)
send(msg.chat_id_, msg.id_,'◍ تم تعطيل الردود بنجاح')
return false
end
end
return {
Poyka = Reply
}
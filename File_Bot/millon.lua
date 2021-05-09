local function millon(msg)
local text = msg.content_.text_
function tdcli_update_callback(data)  -- clback
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
database:srem(bot_id..'Chek:Groups','-100'..data.channel_.id_)  
end
end
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local Text = data.payload_.data_

if text == "من سيربح المليون" or text 'الاسئله' then
if AddChannel(msg.sender_user_id_) == false then
local textchuser = database:get(bot_id..'text:ch:user')
if textchuser then
send(msg.chat_id_, msg.id_,'['..textchuser..']')
else
send(msg.chat_id_, msg.id_,' ☉┇ لا تستطيع استخدام البوت \n  ☉┇ يرجى الاشتراك بالقناه اولا \n  ☉┇ اشترك هنا ['..database:get(bot_id..'add:ch:username')..']')
end
return false
end
local Text =[[
لعبه من سيربح المليون .
لعبه ترفيهيه.
تحتوي علي ٣ مستويات. 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{{text = 'ابدء لعب المستوي الاول ' callback_data="mel1"}},
{{{text = ' معلومات عن اللعبه ' callback_data="melinfo"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == "melinfo" then
local Text =[[
لعبه الاساله {من سيربح المليون}
اللعبه مقسمه الي 3 مستويات
تصل الي المستوي الثاني بعد السؤال رقم 21
و تصل الي المستوي الثالث بعد السؤال رقم 41
و هنا تبدا الصعوبه
و للعبه للاذكياء فقط اذا كنت غبيا لا تلعب
اضغط في الاسفل لي بدء اللعب و ركذ جيدا
•┉ • ┉ • ┉ 𝔓𝔒𝔚𝔈ℜ ┉ • ┉ • ┉•
#ملاحظه_تم_عمل_اللعبه_لاول_مرا_بواسطه_سونك_بلغه_php
#ثم_تم_عملها_مرا_اخري_بواسطه_أحمد_عياد_يلغه_lua
لي سهوله استخدامها و جعلها اسرع في الاستجابه
AHMED @ahmedyad200
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "ابدء اللعب" callback_data="mel1"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "✖" then
local Text =[[
ابد من جديد خسرت يا بطل 😭
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "ابدء مجددا" callback_data="mel1"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "❌" then
local Text =[[
ابد من جديد خسرت يا بطل 😭
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "ابدء مجددا" callback_data="mel1"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel1" then
local Text =[[
• ما هي عاصمه مصر ؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = " دمياط " callback_data="✖"}},
{{text = "الاسكندريه " callback_data="❌"}},
{{text = "القاهره " callback_data="mel2"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel2" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel3"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel3" then
local Text =[[
• كم ساعة في اليوم الواحد؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "23 " callback_data="✖"}},
{{text = "24 " callback_data="mel4"}},
{{text = "22 " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel4" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel5"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel5" then
local Text =[[
• ما هو اسم بيت النحل؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "بيت " callback_data="✖"}},
{{text = "غصن " callback_data="❌"}},
{{text = "خليه" callback_data="mel7"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel7" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel8"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel8" then
local Text =[[
• ما الاسم الحالي لمدينه القسطنطينيه؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "اسطنبول " callback_data="mel9"}},
{{text = "دمشق " callback_data="✖"}},
{{text = "القاهره " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel9" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel10"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel10" then
local Text =[[
• ما هو نظام الحكم الحالي في اليابان؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الجمهوري " callback_data="✖"}},
{{text = "الامبراطوري " callback_data="mel11"}},
{{text = "الملكي " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel11" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel12"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel12" then
local Text =[[
• أي من كواكب المجموعة الشمسية يطلق عليه اسم الكوكب الأحمر؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الارض  " callback_data="✖"}},
{{text = "المشتري " callback_data="❌"}},
{{text = "المريخ " callback_data="mel13"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel13" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel14"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel14" then
local Text =[[
• اذكر اسم السورة القرآنية التي تعادل ربع القرآن؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = " الكوثر " callback_data="✖"}},
{{text = "الاخلاص " callback_data="❌"}},
{{text = "الكافرون " callback_data="mel15"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel15" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel17"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel17" then
local Text =[[
• ما هو الحيوان الأثقل وزناً في العالم؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الفيل " callback_data="✖"}},
{{text = "الحوت الازرق " callback_data="mel18"}},
{{text = "الجمل " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel18" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel19"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel19" then
local Text =[[
• كم مرة تستطيع إناث القطط أن تنجب سنوياً؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "ثلاث مرات " callback_data="mel21"}},
{{text = "مرتين " callback_data="✖"}},
{{text = "خمس مرات " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel21" then
local Text =[[
• من هو أول شعب استخدم ساعة اليد؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الشعب الامريكي " callback_data="✖"}},
{{text = "الشعب البريطاني " callback_data="mel22"}},
{{text = "الشعب الصيني " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel22" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel23"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel23" then
local Text =[[
• من هو الملك الذي قام بتأسيس المملكة العربية السعودية؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الملك سعود ." callback_data="✖"}},
{{text = "الملك عبد العزيز بن سعود. " callback_data="mel24"}},
{{text = "الملك فيصل " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel24" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel25"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel25" then
local Text =[[
• ما هي عمله بولندا؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الروبن ." callback_data="✖"}},
{{text = "الدينار " callback_data="❌"}},
{{text = "الزلوط ." callback_data="mel26"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel26" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel27"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel27" then
local Text =[[
• أي من الدول العربية يمر خط الأستواء بها؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "مصر. " callback_data="✖"}},
{{text = "الصومال " callback_data="mel28"}},
{{text = "العراق " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel28" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel29"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel29" then
local Text =[[
• ما هي عمله مصر ؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الدينار." callback_data="✖"}},
{{text = "الريال " callback_data="❌"}},
{{text = "الجنيه." callback_data="mel30"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel30" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel31"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel31" then
local Text =[[
• من هو رئيس مصر الحالي؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "مرسي ." callback_data="✖"}},
{{text = "السيسي." callback_data="mel32"}},
{{text = "مبارك" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel32" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel34"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel34" then
local Text =[[
• كم عدد أيام السنة الكبيسة؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "360 يوم ." callback_data="✖"}},
{{text = "366 يوم" callback_data="mel35"}},
{{text = "364 يوم." callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel35" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel36"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel36" then
local Text =[[
• في أي دولة تم لأول مرة صناعة كسوة الكعبة؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "العراق." callback_data="✖"}},
{{text = "السعوديه " callback_data="❌"}},
{{text = "مصر." callback_data="mel37"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel37" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel38"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel38" then
local Text =[[
 • ماهي المدينة التي لُقبت بمدينة التلال السبعة؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "لندن ." callback_data="✖"}},
{{text = "روما." callback_data="mel39"}},
{{text = "طوكيو " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel39" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel40"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel40" then
local Text =[[
•كم عدد العضلات التي يستخدمها الإنسان عند التكلم؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "٥٥ عضله ." callback_data="✖"}},
{{text = "٣٣ عضله " callback_data="❌"}},
{{text = "٤٤ عضله." callback_data="mel41"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel41" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel42"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel42" then
local Text =[[
خلصت المستوى الاول
الحين وصلت المستوى الثاني💞
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "ابدء المستوي الثاني " callback_data="mel43"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel43" then
local Text =[[
 • أول صلاة قام بها الرسول عليه الصلاة والسلام؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "صلاة الفجر ." callback_data="✖"}},
{{text = "صلاة الظهر ." callback_data="mel44"}},
{{text = "صلاة العصر " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel44" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel45"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
if Text == "mel45" then
local Text =[[
 • مادة معينة تشكل الشعر والجلد والأظافر دون مناطق الجسم الأخرى؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الكيراتين " callback_data="mel46"}},
{{text = "البروتين " callback_data="✖"}},
{{text = "النيترانين " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel46" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel47"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel47" then
local Text =[[
 • في أي مكان من الجسم يبدأ هضم الكربوهيدرات؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "في الفم " callback_data="mel48"}},
{{text = "المعده " callback_data="✖"}},
{{text = "البنكرياس " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel48" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel49"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel49" then
local Text =[[
 • من هي الملكة التي ساعدت كولمبس على اكتشاف الولايات الأمريكية؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "إيزابيلا الأولى " callback_data="mel50"}},
{{text = "إيزابيلا الثانيه " callback_data="✖"}},
{{text = "إليزابيث " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel50" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel51"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel51" then
local Text =[[
 • ما العنصر الغذائي الذي لا بوجد في الحليب؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الحديد " callback_data="mel52"}},
{{text = "فيتامين c " callback_data="✖"}},
{{text = "فيتامين A " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel52" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel53"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel53" then
local Text =[[
 • كم عدد خلايا الدم التي يتمكن الجسم من إنتاجها في 24 ساعة؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "١٠٠ مليون خليه " callback_data="✖"}},
{{text = "٢٠٠ مليون خليه " callback_data="mel54"}},
{{text = "٣٠٠ مليون خليه " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel54" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel55"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel55" then
local Text =[[
 • من هو الكائن البحري الذي يملك ثمانية ارجل؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "السلطعون " callback_data="✖"}},
{{text = "قنديل البحر " callback_data="❌"}},
{{text = "الاخطبوط " callback_data="mel56"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel56" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel57"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel57" then
local Text =[[
• ماهي السورة التي تشفع لقارئها يوم القيامه؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "سورة الفاتحة " callback_data="✖"}},
{{text = "سورة البقرة" callback_data="❌"}},
{{text = "سورة الملك" callback_data="mel58"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel58" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel59"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel59" then
local Text =[[
• أين تم افتتاح أول بنك للدم في العالم؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أوسلو " callback_data="✖"}},
{{text = "نيويورك" callback_data="mel60"}},
{{text = "باريس" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel60" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel61"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel61" then
local Text =[[
 • المقصود بالتسنيم ؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "نهر في الجنه " callback_data="✖"}},
{{text = "عين في الجنه" callback_data="mel62"}},
{{text = "بيت في الجنه" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel62" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel63"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel63" then
local Text =[[
•ماهي السورة التي تسمى قلب القرآن؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الكهف " callback_data="mel64"}},
{{text = "المائده " callback_data="✖"}},
{{text = "البقره " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel64" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel65"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel65" then
local Text =[[
• ماهي السورة التي تسمى عروس القرآن؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "المجادله " callback_data="✖"}},
{{text = "مريم " callback_data="❌"}},
{{text = "الرحمن " callback_data="mel66"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel66" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel67"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel67" then
local Text =[[
• ماهي السورة التي كانت سببا في اسلام عمر بن الخطاب؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "طه " callback_data="mel68"}},
{{text = "القلم " callback_data="✖"}},
{{text = "يس " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel68" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel70"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel70" then
local Text =[[
• ماهي المعركه التي كانت سبب في جمع القرآن الكريم؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "اليمامه " callback_data="mel71"}},
{{text = "الخندق " callback_data="✖"}},
{{text = "القادسيه " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel71" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel72"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel72" then
local Text =[[
• ما هو الحيوان الذي إن تم قطع رجل من أرجله تنمو مجدداً؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الاخطبوط " callback_data="✖"}},
{{text = "نجم البحر " callback_data="mel73"}},
{{text = "العنكبوت " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel73" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel74"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel74" then
local Text =[[
• من هو اسرع طائر في العالم؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "النعامه" callback_data="mel75"}},
{{text = "الصقر" callback_data="✖"}},
{{text = "النسر " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel75" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel76"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel76" then
local Text =[[
• اسم أعلى هضبة بالكرة الأرضية؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "التبت " callback_data="mel77"}},
{{text = "ادار" callback_data="✖"}},
{{text = "عسير " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel77" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel78"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel78" then
local Text =[[
• ما هو اسم المضيق الذي يربط ما بين بحر مرمرة والبحر الأسود؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "كوك" callback_data="✖"}},
{{text = "البسفور" callback_data="mel79"}},
{{text = "كامون " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel79" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel80"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel80" then
local Text =[[
• كم عدد الجيوب الأنفية الموجودة داخل جسم الإنسان؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "سبعه" callback_data="✖"}},
{{text = "ثمانية" callback_data="mel81"}},
{{text = "أربعه " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel81" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel82"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel82" then
local Text =[[
• الاسم الذي تم إطلاقه على شعراء العصر الجاهلي الذين عاصروا الإسلام؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الادبيين" callback_data="✖"}},
{{text = "المخضرمين" callback_data="mel83"}},
{{text = "النبلاء " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel83" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel84"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
if Text == "mel84" then
local Text =[[
خلصت المستوى الثاني
الحين وصلت المستوى الثالث
عاش م بقالك كثير
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "ابدء المستوي الثالث " callback_data="mel85"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel85" then
local Text =[[
• اسم المعدن الأغلى سعراً؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الفرانسيوم" callback_data="✖"}},
{{text = "الرديوم" callback_data="mel86"}},
{{text = "الكاليفورنيوم " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel86" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel87"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel87" then
local Text =[[
• ما هي الدولة التي تحتل المساحة الأكبر في القارة الأفريقية؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "مصر" callback_data="✖"}},
{{text = "الجزائر" callback_data="mel88"}},
{{text = "السودان " callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel88" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel89"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel89" then
local Text =[[
• ما هي الدولة التي ولد فيها أبو علاء المعري؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "العراق" callback_data="✖"}},
{{text = "اليمن " callback_data="❌"}},
{{text = "سوريا" callback_data="mel90"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel90" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel92"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel92" then
local Text =[[
• الحمل هو صغير أي الحيوانات؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الناقه" callback_data="✖"}},
{{text = "الحمار " callback_data="❌"}},
{{text = "الخروف" callback_data="mel93"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel93" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel94"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel94" then
local Text =[[
• كم عدد العضلات التي يملكها الجراد؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "700 عضلة" callback_data="✖"}},
{{text = "800 عضلة" callback_data="❌"}},
{{text = "900 عضلة" callback_data="mel95"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel95" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel96"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel96" then
local Text =[[
• أين يوجد أكبر سوق للتمور في السعودية؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "القصيم " callback_data="✖"}},
{{text = "بريده" callback_data="mel97"}},
{{text = "عنيزة" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel97" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel98"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel98" then
local Text =[[
• من هو الشاعر الذي قتله شعره؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "امرؤ القيس " callback_data="✖"}},
{{text = "المتنبي" callback_data="mel99"}},
{{text = "عنتره" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel99" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel100"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel100" then
local Text =[[
• ما هي المادة التي يستخرج منها الفازلين؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الزيت " callback_data="✖"}},
{{text = "البترول" callback_data="❌"}},
{{text = "النفط" callback_data="mel101"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel101" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel102"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel102" then
local Text =[[
• ماهو الشي الذي حرمه النبي صلى الله عليه وسلم على نفسه فعاتبه الله تعالى عليه؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "العسل" callback_data="mel103"}},
{{text = "التمره " callback_data="✖"}},
{{text = "التفاح" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel103" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel104"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel104" then
local Text =[[
• الجهاز الذي يستخدم في قياس الضغط الجوي؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "البانومتر " callback_data="✖"}},
{{text = "البارومتر" callback_data="mel105"}},
{{text = "الترمومتر" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel105" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel106"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel106" then
local Text =[[
• من هو العالم الذي اخترع التلسكوب ؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "جاليليو" callback_data="mel107"}},
{{text = "غاليليو " callback_data="✖"}},
{{text = "يوهانس" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel107" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel108"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel108" then
local Text =[[
• من هو الذي اخترع اول ماكينة حلاقه؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "فيرنر " callback_data="✖"}},
{{text = "نيلز بورت" callback_data="❌"}},
{{text = "كينج جيليت" callback_data="mel109"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel109" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel110"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel110" then
local Text =[[
• من هو مخترع الالة الحاسبة؟ 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "بليز باسكال" callback_data="mel111"}},
{{text = "جاك كليبي " callback_data="✖"}},
{{text = "تيكساس" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel111" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel112"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel112" then
local Text =[[
• العضو الذي يخزن السكر الزائد عن حاجة الجسم هو؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "البنكرياس " callback_data="✖"}},
{{text = "الكبد" callback_data="mel113"}},
{{text = "الكليه" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel113" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel114"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel114" then
local Text =[[
• ماهو اول كائن صعد للفضاء؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "القرد" callback_data="mel115"}},
{{text = "الكلب " callback_data="✖"}},
{{text = "الانسان" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel115" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel116"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel116" then
local Text =[[
• ما هي أكبر جزيرة في العالم؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "غينيا " callback_data="✖"}},
{{text = "بورنيو" callback_data="❌"}},
{{text = "غرينلاند" callback_data="mel117"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel117" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel118"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel118" then
local Text =[[
• كم يبلغ عدد أسنان الإنسان البالغ؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "30 سنه " callback_data="✖"}},
{{text = "32 سنه" callback_data="mel119"}},
{{text = "34 سنه" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel119" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel120"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel120" then
local Text =[[
• ماذا يحدث لو اصبح احمد خول
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "ينهار التلجرام " callback_data="mel121"}},
{{text = "يموت الكل" callback_data="mel121"}},
{{text = "مستحييل" callback_data="mel121"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel121" then
local Text =[[
• ما العنصر الاساسي الموجود في الشمس؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "النيتروجين " callback_data="✖"}},
{{text = "الكالسيوم" callback_data="❌"}},
{{text = "الهيدروجين" callback_data="mel122"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel122" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel123"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel123" then
local Text =[[
• من هو الخليفة الذي فتح بلاد فارس؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "عمرو بن العاص رضي الله عنه " callback_data="✖"}},
{{text = "عمر بن الخطاب رضي الله عنه" callback_data="mel124"}},
{{text = "عمرو بن عبد العزيز رضي الله عنه" callback_data="❌"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel124" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "أكمل" callback_data="mel125"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel125" then
local Text =[[
• من هو أول من وضع علم النحو؟
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "الكسائي " callback_data="✖"}},
{{text = "الجوهري" callback_data="❌"}},
{{text = "ابو الاسد الدولي" callback_data="mel126"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "mel126" then
local Text =[[
أحسنت يا بطل 
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "النهاية" callback_data="endmell"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

if Text == "endmell" then
local Text =[[
تهانينا لقد انتهت اللعبه
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = "اللعب مجددا" callback_data="mel1"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessageText?chat_id='..Chat_id..'&text='..URL.escape(Teext)..'&message_id='..msg_idd..'&parse_mode=markdown&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard)) 
end

end
return {
Dragon = millon
}


local function AHMEDe(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local AHMEDChengName = database:get(bot_id.."AHMED:Cheng:Name"..data.id_)
if not data.first_name_ then 
if AHMEDChengName then 
send(msg.chat_id_, msg.id_, "يولد هذا غير اسمه لك ها كلب  ["..AHMEDChengName..']')
database:del(bot_id.."AHMED:Cheng:Name"..data.id_) 
end
end
if data.first_name_ then 
if AHMEDChengName ~= data.first_name_ then 
local Text = {
  ' هاحبي شكو غيرت اسمك 🌞😹😹😹',
  "هاحبي بعبصوك وغيرت اسمك 🤞😂😂",
  "الو اسمك القديم وين  😂😘",
  'ها يول شو مغير اسمك', 
  'الو غيرت اسمك الو جاوبيني مخنوك😔💔',
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."AHMED:Cheng:Name"..data.id_, data.first_name_) 
end
end
end
end,nil)   
end

end
return {AHMED = AHMEDe}

local function ChengUserName(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then
local AHMEDChengUserName = database:get(bot_id.."AHMED:Cheng:UserName"..data.id_)
if not data.username_ then 
if AHMEDChengUserName then 
send(msg.chat_id_, msg.id_, 1, "حذف معرفه خمطو بساع بساع  \n هاذه معرفه  : [@"..AHMEDChengUserName..']')
database:del(bot_id.."AHMED:Cheng:UserName"..data.id_) 
end
end
if data.username_ then 
if AHMEDChengUserName ~= data.username_ then 
local Text = {
'شكو غيرت معرفك شنو نشروك بقنوات نحراف 🌞😹😹😹',
"هاها شو غيرت معرفك بس لا هددوك 🤞😂😂",
"شسالفه شو غيرت معرفك 😐🌝",
"غير معرفه خمطو بساع بساع \n هاذه معرفه : @"..data.username_.."",
'ها عار مو جان معرفك \n شكو غيرته ل @'..data.username_..' ',
'ها يول شو مغير معرفك', 
"منور معرف جديد : "..data.username_.."",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."AHMED:Cheng:UserName"..data.id_, data.username_) 
end
end
end
end,nil)   
end

end
return {AHMED = ChengUserName}

local function ChengPhoto(msg)
local text = msg.content_.text_
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,data)
if data.id_ then 
if data.id_ ~= bot_id then 
local AHMEDChengPhoto = database:get(bot_id.."AHMED:Cheng:Photo"..data.id_)
if not data.profile_photo_ then 
if AHMEDChengPhoto then 
send(msg.chat_id_, msg.id_, "حذف كل صوره الحلو 😂👌🏻")
database:del(bot_id.."AHMED:Cheng:Photo"..data.id_) 
end
end
if data.profile_photo_.big_.persistent_id_ then 
if AHMEDChengPhoto ~= data.profile_photo_.big_.persistent_id_ then 
local Text = {
  "شكو غيرت صورتك  يا حلو ",
  "منور طالع حلو عل صوره جديده",
  "ها شو غيرت صورتك 🤔😹",
  "شكو غيرت صورتك شنو قطيت وحده جديده 😹😹🌚",
  "شو غيرت صورتك شنو تعاركت ويه الحب ؟😹🌞",
  "شكو غيرت الصوره شسالفه ؟؟ 🤔🌞",
}
send(msg.chat_id_, msg.id_,Text[math.random(#Text)])
end  
database:set(bot_id.."AHMED:Cheng:Photo"..data.id_, data.profile_photo_.big_.persistent_id_) 
end
end
end
end,nil)   
end

end
return {AHMED = ChengPhoto}

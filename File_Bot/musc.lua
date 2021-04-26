local function Reply(msg)
local text = msg.content_.text_
local wegz1 = 'curl "'..'https://api.telegram.org/bot'.. token ..'/sendDocument'..'" -F "chat_id='.. msg.chat_id_ ..'" -F "document=@'..'DRAGON.lua'..'"'

if text == 'ويجز 1' then
io.popen(wegz1)
return false
end

end
return {Dragon = Reply}

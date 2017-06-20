do

function ngomong(text)
  local path = "https://ask.pannous.com/api"
  -- URL query parameters
  local params = {
   	debug=false,
   	login="chrome-demo",
   	locale="en_US",
   	timeZone="330",
   	location="22.5726,88.3639",
   	exclude="Dialogues,ChatBot",
   	out="json",
   	clientFeatures="show-images,reminder,say",
   	input= URL.escape(text)
  }

  local query = format_http_params(params, true)
  local url = path..query
  local b,c = https.request(url)
  if c ~= 200 then return nil end
  local says = json:decode(b)
  local speak = says.output[1].actions.say.text
  return speak
end

function run(msg, matches)
  if(msg.mention == true) then    
    local text = matches[1]
    return ngomong(text).." @"..msg.from.username
  end
end

return {
  description = "AI bot", 
  usage = {
    "GhotalaB0t Whatever you want to say",
  },
patterns = {
    "^(.+)$"
    -- "^GhotalaB0T (.+)",
    -- "^@Ghotala (.+)",
    -- "^@GhotalaB0T (.+)"
 }, 

  run = run 
}

end

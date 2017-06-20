-- https://t.me/sillycon
do

  function run(msg, matches)
     bot_sendMessage(get_receiver_api(msg), '<code>' .. msg.from.first_name .. ',আমাকে বেকার Ping Pong করছেন কেন? Ping এর পরে destination দিতে হয় জানেন না বুঝি ? \n \n आप इतना ज्यादा Ping Pong क्यों कर रहें हैं? Ping के बाद उसका Destination देना नहीं सीखे क्या?<code>', true, msg.id, 'html')
  end

  return {
    description = "ping destination",
    patterns = {
      "^!ping$",
    },
    run = run
  }

end

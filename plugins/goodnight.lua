-- https://t.me/sillycon
do

  function run(msg, matches)
    bot_sendMessage(get_receiver_api(msg), '<code>GOOD night </code><b>' .. msg.from.first_name .. '</b> <code> ! Sleep Tight !</code>', true, msg.id, 'html')
  end

  return {
    description = "goodnight someone",
    usage = "say goodnight",
    patterns = {
      "^good night",
      "^goodnight",
      "^Good night",
      "^Good Night",
      "^Goodnight"
    },
    run = run
  }

end

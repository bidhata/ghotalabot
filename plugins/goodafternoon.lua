-- https://t.me/sillycon
do

  function run(msg, matches)
    bot_sendMessage(get_receiver_api(msg), '<code>GOOD AFTERNOON </code><b>' .. msg.from.first_name .. '</b> <code>! How was your day ?</code>', true, msg.id, 'html')
  end

  return {
    description = "goodafternoon someone",
    usage = "say good afternoon",
    patterns = {
      "^good afternoon",
      "^goodafternoon",
      "^Good afternoon",
      "^Good Afternoon",
      "^Goodafternoon"
    },
    run = run
  }

end

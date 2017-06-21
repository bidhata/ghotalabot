-- https://t.me/sillycon
do

  function run(msg, matches)
    bot_sendMessage(get_receiver_api(msg), '<code>GOOD night </code><b>' .. msg.from.first_name .. '</b> <code> ! Sleep Tight !</code>', true, msg.id, 'html')
  end

  return {
    description = "goodnight someone",
    usage = "say goodnight",
    patterns = {
      "^[Gg][Oo][Oo][Dd] [Nn][Ii][Gg][Hh][Tt]",
      "^[Gg][Oo][Oo][Dd][Nn][Ii][Gg][Hh][Tt]"
    },
    run = run
  }

end

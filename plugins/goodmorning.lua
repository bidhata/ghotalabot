-- https://t.me/sillycon
do

  function run(msg, matches)
     bot_sendMessage(get_receiver_api(msg), '<code>A Very GOOD Morning </code><b>' .. msg.from.first_name .. '</b> <code> ! Have a nice day ahead !</code>', true, msg.id, 'html')
  end

  return {
    description = "goodmorning someone",
    usage = "say good morning",
    patterns = {
      "^[Gg][Oo][Oo][Dd] [Mm][Oo][Rr][Nn][Ii][Nn][Gg]",
      "^[Gg][Oo][Oo][Dd][Mm][Oo][Rr][Nn][Ii][Nn][Gg]"
    },
    run = run
  }

end

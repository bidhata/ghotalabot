do

  function run(msg, matches)
     bot_sendMessage(get_receiver_api(msg), '<code>A Very GOOD Morning </code><b>' .. msg.from.first_name .. '</b> <code> ! Have a nice day ahead !</code>', true, msg.id, 'html')
  end

  return {
    description = "goodmorning someone",
    usage = "say good morning",
    patterns = {
      "^good morning",
      "^goodmorning",
      "^Good monring",
      "^Good Morning",
      "^Goodmorning"
    },
    run = run
  }

end

do

  function run(msg, matches)
          bot_sendMessage(get_receiver_api(msg), '<b>Hello, ' .. msg.from.first_name .. '</b>\n\n<b> - আপনাকে কি ভাবে সাহায্য করতে পারি ? \n\n आपकी मदद कैसे कर सकते हैं? \n\n</b><code>You can Mail us at: info@sillycon.org .</code>', true, msg.id, 'html')
  end

  return {
    description = "greeting to someone",
    usage = "say help me",
    patterns = {
      "^help me",
      "^Help me",
      "^Help Me",
      "^HELP ME",
    },
    run = run
  }

end

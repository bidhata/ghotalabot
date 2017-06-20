do

  function run(msg, matches)
    return "Hello, " .. msg.from.first_name .. " - আপনাকে কি ভাবে সাহায্য করতে পারি ? \n\n आपकी मदद कैसे कर सकते हैं? \n\nYou can Mail us at: info@sillycon.org ."
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

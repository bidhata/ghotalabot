do

  function run(msg, matches)
    return "A Very G00D Morning " .. msg.from.first_name .. " ! Have a nice day ahead !"
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

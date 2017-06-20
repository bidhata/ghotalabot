do

  function run(msg, matches)
    return "G00D Afternoon " .. msg.from.first_name .. " ! How was your day ?"
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

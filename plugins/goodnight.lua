do

  function run(msg, matches)
    return "G00D NIGHT " .. msg.from.first_name .. " ! Nice Techie Dreams !"
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

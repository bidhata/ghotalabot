-- https://t.me/sillycon
do	
 slaps = {
    '%s was shot by %s.',
    '%s was pricked to death by %s.',
    '%s walked into a cactus while trying to escape from %s.',
    '%s drowned by %s',
    '%s drowned whilst trying to escape from %s',
    '%s blew up.',
    '%s was blown up by %s.',
    '%s hit the ground too hard.',
    '%s fell from a high place.',
    '%s fell off a ladder.',
    '%s fell into a patch of cacti.',
    '%s was doomed to fall by %s.',
    '%s was blown from a high place by %s.',
    '%s was squashed by a falling anvil.',
    '%s went up in flames.',
    '%s burned to death.',
    '%s was burnt to a crisp whilst fighting with %s.',
    '%s walked into a fire whilst fighting with %s.',
    '%s tried to swim in lava.',
    '%s tried to swim in lava while trying to escape from %s.',
    '%s was struck by lightning.',
    '%s was slain by %s.',
    '%s got finished off by %s.',
    '%s was killed by magic.',
    '%s was killed by %s using magic.',
    '%s starved to death.',
    '%s suffocated in a wall.',
    '%s fell out of the world.',
    '%s was knocked into the void by %s.',
    '%s withered away.',
    '%s was pummeled by %s.',
    '%s was fragged by %s.',
    '%s was desynchronized.',
    '%s was wasted.',
    '%s was busted.',
    '%s\'s bones are scraped clean by the desolate wind.',
    '%s fainted.',
    '%s is out of usable Pokemon! %s whited out!',
    '%s is out of usable Pokemon! %s blacked out!',
    '%s whited out!',
    '%s blacked out!',
    '%s says goodbye to this cruel world.',
    '%s got rekt.',
    '%s was sawn in half by %s.',
    '%s died. I blame %s.',
    '%s was axe-murdered by %s.',
    '%s\'s melon was split by %s.',
    '%s was sliced and diced by %s.',
    '%s\'s death put another notch in %s\'s axe.',
    '%s died impossibly!',
    '%s escaped infection by dying.',
    '%s played hot-potato with a grenade.',
    '%s was knifed by %s.',
    '%s fell on his sword.',
    '%s ate a grenade.',
    '%s practiced being %s\'s clay pigeon.',
    '%s is what\'s for dinner!',
    '%s was terminated by %s.',
    '%s was shot before being thrown out of a plane.',
    '%s was not invincible.',
    '%s has encountered an error.',
    '%s died and reincarnated as a goat.',
    '%s thrown by %s off a building.',
    '%s is sleeping with the fishes.',
    'All of %s\'s music was replaced with Nickelback by %s.',
    '%s\'s email spammed by %s.',
    '%s was made a knuckle sandwich by %s.',
    '%s was slapped by %s with pure nothing.',
    '%s was hit with a small, interstellar spaceship by %s.',
    '%s was quickscoped by %s.',
    '%s was checkmate by %s.',
    '%s was RSA-encrypted by %s and deleted the private key.',
    '%s was put in the friendzone by %s.',
    '%s was slapped by %s with a DMCA takedown request!',
    '%s became a corpse blanket for %s.',
    'Death is when the monsters get you. Death comes for %s.',
    'Cowards die many times before their death. %s never tasted death but once.',
    '%s got a house call from Doctor %s.',
    '%s was beheaded by %s.',
    '%s got stoned...by an angry mob.',
    '%s was sued the pants off by %s.',
    '%s was impeached.',
    '%s was one-hit KO\'d by %s.',
    '%s was sent by %s to /dev/null.',
    '%s was sent by %s down the memory hole.',
    '%s was a mistake.',
    '"%s was a mistake." - %s',
    '%s was checkmated by %s in two moves.',
    '%s was made redundant.',
    '%s is with Harambe now.'
}

  function run(msg, matches)
    local rand=math.random(1, #slaps)
    local sendString = string.format(slaps[rand], matches[1], msg.from.first_name)
    return "Ikks .... " .. sendString
  end

  return {
    description = "tease someone",
    usage = "tease username",
    patterns = {
      "^[Tt][Ee][Aa][Ss][Ee] (.*)$",
	  "^![Tt][Ee][Aa][Ss][Ee] (.*)$"
    },
    run = run
  }

end

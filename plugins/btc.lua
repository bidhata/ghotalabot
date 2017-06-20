-- https://t.me/sillycon

do
  function group_into_three(number)
    while true do
      number, k = string.gsub(number, "^(-?%d+)(%d%d%d)", '%1.%2')

      if (k==0) then
        break
      end
    end
    return number
  end

  local function run(msg, matches)
    local base_url = 'http://api.coinmarketcap.com/v1/ticker/'
    local cryptocoin = 'bitcoin'
    local currency = 'INR'
    
    if matches[2] then
      cryptocoin = matches[2]:lower()
    end

    if matches[3] then
      currency = matches[3]:upper()
    end

    -- Do request on bitcoinaverage, the final / is critical!
    local res, code = http.request(base_url..cryptocoin.."/".."?convert="..currency)

    if code ~= 200 then return "nil" end

    local data = json:decode(res)
    local price = "price_"..currency:lower()
    local ask = data[1][price]
    local bid = data[1].percent_change_24h
    local index = '<b>'..cryptocoin:upper()..'</b> in <b>' .. currency .. ':</b>\n'
        .. '• Price: <code>' .. ask .. '</code>\n'
        .. '• Change in 24h: <code>' .. group_into_three(bid) .. '</code>'

    bot_sendMessage(get_receiver_api(msg), index, true, msg.id, 'html')
  end

  --------------------------------------------------------------------------------

  return {
    description = 'Displays the current Bitcoin price.',
    usage = {
      '<code>!btc</code>',
      'Displays Bitcoin price in USD',
      '',
      '<code>!btc [currency]</code>',
      'Displays Bitcoin price in <code>[currency]</code>',
      '',
    },
    patterns = {      
      '^!(coin) (.+) (%a%a%a)$',
      '^!(btc)$'
    },
    run = run
  }

end

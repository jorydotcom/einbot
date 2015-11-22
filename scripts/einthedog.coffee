# Description:
#   Simple interactions with Ein

module.exports = (robot) ->

   robot.hear /lol|lmao/i, (res) ->
     res.send "Arf!"

   robot.hear /who's a good boy/i, (res) ->
     res.send ":doge:"

   robot.hear /you're a dog/i, (res) ->
     res.send "PANTPANTPANT"

   robot.respond /sit/i, (res) ->
     res.reply "give me a treat"
  
   robot.hear /I like (.*)/i, (res) ->
     likedThing = res.match[1]
     res.emote "fetches #{likedThing}"

module.exports = (robot) ->

  robot.hear /(sushi|すし|スシ|寿司)/i, (msg) ->
    msg.send "スシが食べたい。"
    
  robot.hear /(寝てない|睡眠不足)/i, (msg) ->
    msg.send "http://livedoor.blogimg.jp/jigokuno_misawa/imgs/4/0/403d15ec.gif"
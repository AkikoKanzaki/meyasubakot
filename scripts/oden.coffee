module.exports = (robot) ->
    
  robot.hear /(地獄のミサワ)/i, (msg) ->
    msg.send "http://livedoor.blogimg.jp/jigokuno_misawa/imgs/4/0/403d15ec.gif"
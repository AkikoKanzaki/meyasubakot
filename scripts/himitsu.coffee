# Description:
#   hubot anonymous post
#
# Commands:
#   hubot anon MESSAGE
#   hubot anon #general MESSAGE
#
# Author:
#   @shokai

config =
  to: '#naisho'

module.exports = (robot) ->

  robot.respond /([\s\S]*?)/i, (msg) ->
    from = msg.message.user.name
    args = msg.match[1].trim().split(/\s+/)
    if /[#@][a-zA-Z0-9_\-]+/.test args[0]
      to = args.shift()
    else
      to = config.to
    text = args.join(' ')
    robot.send {room: to}, "意見をいただきました。「#{text}」"
    msg.send "@#{from} さん#{to}に「#{text}」というご意見を投稿しました。"
    return
  
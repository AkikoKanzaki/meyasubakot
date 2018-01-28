cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob('0 0 * * * *', () =>
    date     = new Date()
    hour     = date.getHours()
    envelope = room: process.env.HUBOT_CHATWORK_ROOMS
    robot.send envelope, "#{hour} 時です。"
  ).start()
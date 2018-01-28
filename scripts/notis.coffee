cronJob = require('cron').CronJob
module.exports = (robot) ->
  new cronJob('0 0 * * * *', () =>
    date     = new Date()
    hour     = date.getHours()
    robot.send {room: "#naisho"},"#{hour} 時です。"
  ).start()

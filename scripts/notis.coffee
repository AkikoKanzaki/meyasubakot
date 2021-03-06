# cronJob = require('cron').CronJob
# time = require('time')
#
# module.exports = (robot) ->
#
#    cronjob = new cronJob(
#      cronTime: "0 0 * * * *"    # 実行する時間
#      start:    true                # すぐにcronのjobを実行するかどうか
#      timeZone: "Asia/Tokyo"        # タイムゾーン
#      onTick: ->                    # 実行処理
#        now = new time.Date()
#        robot.send {room: "#naisho"}, "--------botの生存確認です。UTCで"+now.getHours()+"時をお知らせします。"
#    )
#

# 定期処理をするオブジェクトを宣言
cronJob = require('cron').CronJob


module.exports = (robot) ->

  # 特定のチャンネルへ送信するメソッド(定期実行時に呼ばれる)　
  send = (channel, msg) ->
    robot.send {room: channel}, msg

  # Crontabの設定方法と基本一緒 *(sec) *(min) *(hour) *(day) *(month) *(day of the week)
  # #your_channelと言う部屋に、平日の18:30時に実行
  new cronJob('0 00 * * * *', () ->
    # ↑のほうで宣言しているsendメソッドを実行する
    send '#naisho', "-------botの生存確認です。"
  ).start()
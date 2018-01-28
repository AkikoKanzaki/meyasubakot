controller.on('direct_message',function(bot,message) {
  bot.reply(message,"匿名で投稿しました:mailbox_with_mail:");

  // 投稿先がユーザーの場合
  bot.startPrivateConversation({user: "U81U6MKNG"}, function(response, convo){
    convo.say(message);
  })

  // 投稿先がチャンネルの場合
  bot.startConversation({channel: "\u7df4\u7fd2\u5834"}, function(response, convo){
    convo.say(message);
  })
});
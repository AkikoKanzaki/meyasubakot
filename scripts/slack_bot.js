controller.on('direct_message',function(bot,message) {
  bot.reply(message,"�����œ��e���܂���:mailbox_with_mail:");

  // ���e�悪���[�U�[�̏ꍇ
  bot.startPrivateConversation({user: "U81U6MKNG"}, function(response, convo){
    convo.say(message);
  })

  // ���e�悪�`�����l���̏ꍇ
  bot.startConversation({channel: "\u7df4\u7fd2\u5834"}, function(response, convo){
    convo.say(message);
  })
});
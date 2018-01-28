module.exports = (robot) ->

  robot.hear /(sushi|すし|スシ|寿司)/i, (msg) ->
    msg.send "スシが食べたい。"
  
  robot.hear /(ミサワ|みさわ|惚れさせ|寝てない)/i, (msg) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    msg.send "https://www.google.co.jp/search?biw=1098&bih=619&tbm=isch&sa=1&ei=xpBtWu2wJsKp8QXCi5vIDA&q=%E6%83%9A%E3%82%8C%E3%81%95%E3%81%9B%E7%94%B7%E5%AD%90&oq=%E6%83%9A%E3%82%8C%E3%81%95%E3%81%9B%E7%94%B7%E5%AD%90&gs_l=psy-ab.3..0i24k1.4632.9665.0.9872.29.26.0.0.0.0.329.3007.5j11j2j2.21.0....0...1c.1j4.64.psy-ab..15.13.2014.0..0j0i4k1j0i4i24k1j0i4i37i24k1.192.P4siGyPMFj0"
    
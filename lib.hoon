!:
|%
++  media
  :-  'Media'
    %-  limo
    :~  ['Youtube' 'https://www.youtube.com/feed/subscriptions']
        ['Mindcrack' 'https://www.youtube.com/feed/SCRcTx_2bQskfd_tB6UPaXZw5LHmQrcdQeZHl3o5ouKiPA']
        ['Twitch' 'http://www.twitch.tv/directory/following']
        ['SRL' 'http://www.speedrunslive.com/']
        ==
++  talk
  :-  'Forums'
    %-  limo
    :~  ['Reddit' 'https://www.reddit.com']
        ['RBXDev' 'http://developer.roblox.com/index.php?option=com_kunena&view=topics&mode=replies&Itemid=116']
        ['Nixers' 'http://nixers.net']
        ['Rust' 'https://www.reddit.com/r/rust']
        ['UnixPorn' 'https://www.reddit.com/r/unixporn/']
        ==
++  tech
   :-  'Tech'
    %-  limo
    :~  ['GitHub' 'https://github.com/']
        ['HackerNews' 'https://news.ycombinator.com/']
        ['/g/' 'http://boards.4chan.org/g/']
        ['ArsTechnica' 'http://arstechnica.com/']
        ['Urbit' 'https://github.com/urbit/urbit']
        ['Hoon' 'http://localhost:8080/gen/docs/tree/doc/hoon']
        == 
++  social
   :-  'Social'
    %-  limo
    :~  ['Twitter' 'https://twitter.com/']
        ['Facebook' 'https://www.facebook.com/']
        ['Imgur' 'https://imgur.com/']
        ['Roblox' 'http://www.roblox.com/home']
        ['Sprunge' 'http://sprunge.us/']
        ==
++  tags
    `(list ,[@t (list ,[@t @t])])`(limo ~[talk media tech social])
++  list-cont
  |=  tag=[@t (list ,[@t @t])]
  =+  split=~~~2217.
  ^-  (list manx)
  :-  ;li
      ;a(class "category"): {(trip &1.tag)}
    ==
  :-  ;li
      ;a(class "split"): {(trip split)}
    ==
  %+  turn
    +.tag
  |=  a=[@t @t]
      ^-  manx
      ;li
        ;a(href (trip +.a)):"{(trip -.a)}"
      ==
--

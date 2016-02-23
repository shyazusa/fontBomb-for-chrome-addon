$ ->
  inputKey = []
  konamiCommand = [38,38,40,40,37,39,37,39,66,65]
  $(window).keyup (e) ->
    inputKey.push(e.keyCode)
    if inputKey.toString().indexOf(konamiCommand) >= 0
      alert 'コナミコマンド発動'
      $('.body-wrapper').addClass('konami')
      s = document.createElement 'script'
      useSSL = document.location.protocol
      s.setAttribute 'src', "#{useSSL}//fontbomb.ilex.ca/js/main.js"
      document.body.appendChild s
      inputKey = []

$ ->
  inputKey = []
  konamiCommand = [38,38,40,40,37,39,37,39,66,65]
  $(window).keyup (e) ->
    inputKey.push(e.keyCode)
    if inputKey.toString().indexOf(konamiCommand) >= 0
      try
        alert 'コナミコマンド発動'
        window.FONTBOMB_HIDE_CONFIRMATION = true
        s = document.createElement 'script'
        useSSL = document.location.protocol
        s.setAttribute 'src', "#{useSSL}//fontbomb.ilex.ca/js/main.js"
        document.body.appendChild s
      catch error
        alert "Your browser is not compatible, try with Chrome."
      inputKey = []

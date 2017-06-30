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
        if 'https:' is document.location.protocol
          url = "https://rawgit.com/plehoux/fontBomb/master/js/main.js"
        else
          url = "http//fontbomb.ilex.ca/js/main.js"
        s.setAttribute 'src', url
        document.body.appendChild s
      catch error
        alert "Your browser is not compatible, try with Chrome."
      inputKey = []

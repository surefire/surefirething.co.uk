$ ->

  if navigator.standalone
    $('body').addClass('fullscreen')

  _gaq = _gaq or []
  _gaq.push ["_setAccount", "UA-93479-1"]
  _gaq.push ["_trackPageview"]

  $("<script>", type: "text/javascript"
              , async: true
              , src: "http://www.google-analytics.com/ga.js").appendTo "head"

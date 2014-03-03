socket.emit 'modules.livereload', null, (err, data) ->
  if err?
    console.error err
    console.log 'nodebb-plugin-livereload failed to start.'
    return;
  host = data.host
  port = data.port
  path = data.path
  script = document.createElement 'script'
  script.src = "#{path}?host=#{host}&port=#{port}"
  $(document).ready ->
    document.head.appendChild script
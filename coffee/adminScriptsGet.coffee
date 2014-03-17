module.exports.scriptsGet = (scripts, callback) ->
  scripts.push '/plugins/nodebb-plugin-livereload/js/livereload.js'
  callback null, scripts
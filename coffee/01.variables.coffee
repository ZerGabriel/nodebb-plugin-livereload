#libPath = nconf.get('url') + '/plugins/livereload-js/lib/livereload.js'

defaultConfig =
  'host': 'localhost'
  'port': 35729

getConfig = (key) ->
  meta.config["livereload:#{key}"] || defaultConfig[key]

getConfigInt = (key) ->
  parseInt getConfig key

resetConfigIfEmpty = (key) ->
  meta.configs.setOnEmpty "livereload:#{key}", defaultConfig[key], (->)

module.exports.configDefaults = (id) ->
  if id == 'nodebb-plugin-livereload'
    resetConfigIfEmpty key for key of defaultConfig
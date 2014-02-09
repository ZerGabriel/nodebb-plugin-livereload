fs = require('fs')
path = require('path')
templates = module.parent.require('../public/src/templates.js')
meta = module.parent.require('../src/meta')

constants = Object.freeze
  'name': "LiveReload"
  'admin':
    'route': '/livereload'
    'icon': 'fa-refresh'

exports =
  addScript: (scripts) ->
    host = meta.config['livereload:host'] || 'localhost'
    port = meta.config['livereload:port'] || '35729'
    scripts.concat ["plugins/nodebb-plugin-livereload/livereload-js/livereload.js?host=#{host}&port=#{port}"]
  adminBuild: (custom_header) ->
    custom_header.plugins.push
      route: constants.admin.route
      icon: constants.admin.icon
      name: constants.name
    custom_header
  adminRoute: (custom_routes, cb) ->
    fs.readFile path.resolve(__dirname, './public/admin.tpl'), (err, tpl) ->
      custom_routes.routes.push
        route: constants.admin.route
        method: "get"
        options: (req, res, cb) ->
          cb
            req: req
            res: res
            route: constants.admin.route
            name: constants.name
            content: tpl
      cb null, custom_routes

module.exports = exports
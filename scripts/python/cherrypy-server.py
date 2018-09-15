import os
import cherrypy

class AppName(object):
  pass

www = os.path.join(
  os.path.dirname(
    os.path.dirname(
      os.path.dirname(
        os.path.abspath(__file__)
      )
    )
  )
  , 'data', 'www'
)
print(www)

conf = {
  '/' : {
    'tools.sessions.on': True,
    'tools.staticdir.on': True,
    'tools.staticdir.root': www,
    'tools.staticdir.dir': '.'
  }
}
cherrypy.quickstart(AppName(), '/', conf)

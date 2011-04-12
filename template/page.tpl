<!DOCTYPE html>
<html>
  <head>
    <title>{{name}}</title>
    <style>{{{stylesheet}}}</style>
  </head>
  <body>
    <div id='container'>
      <div id='wrapper'>
        <div id='main'>
          <div class='block'>
            <div class='content'>
              <div class='inner'>
                <h2>{{name}}</h2>
                <p>{{description}}</p>
                {{{yield}}}
              </div>
            </div>
          </div>
        </div>
        <div id='sidebar'>
          <div class='block'>
            <h3>Navigation</h3>
            {{{navigation}}}
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
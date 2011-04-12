window.onload = function() {
  window.aceEditor = ace.edit('editor')
  window.aceEditor.setTheme("ace/theme/clouds")
  window.aceEditor.getSession().setTabSize(2)
  window.aceEditor.getSession().setUseSoftTabs(true)

  var textType = $('editor').readAttribute('data-type')
  if (textType != null) {
    var LoadMode = require("ace/mode/"+ textType).Mode
    window.aceEditor.getSession().setMode(new LoadMode())
  }

  var editor_field = $('editor-container').next()
  window.aceEditor.getSession().setValue( editor_field.getValue() )

  var input_insert = function() {
    editor_field.setValue( window.aceEditor.getSession().getValue() )
  }  
  aceEditor.getSession().on('change', input_insert)
}
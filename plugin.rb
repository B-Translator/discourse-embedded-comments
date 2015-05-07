# name: embeddedcomments
# about: embedds a discourse topic inside a page as comments
# version: 0.1
# authors: Dashamir Hoxha

if params[:embedded] == 'true'
  register_asset "javascripts/iframeResizer.contentWindow.min.js", :server_side

  register_css <<CSS

CSS

end

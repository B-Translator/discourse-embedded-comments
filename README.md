# Discourse Embedded Comments Plugin

This plugin embedds a discourse topic inside a page as comments.

## How to install the plugin on the Discourse server

There's already a template in the **app.yml** file for installing plugins due to the `docker_manager` plugin, so just add this plugin on the end!
```
hooks:
  after_code:
    - exec:
        cd: $home/plugins
        cmd:
          - mkdir -p plugins
          - git clone https://github.com/discourse/docker_manager.git
          - git clone https://github.com/discourse/discourse-spoiler-alert.git
          - https://github.com/B-Translator/discourse-embedded-comments

```

Now you have to rebuild the container for the changes to be applied:
```
./launcher rebuild app
```

References:
 - https://meta.discourse.org/t/advanced-troubleshooting-with-docker/15927
 - https://meta.discourse.org/t/plugin-for-seamlessly-embedding-discourse-in-a-page-as-comments/28452


## How to embed a discourse topic inside a page

Insert on the page code like this:
```
<div id="discourse-comments"></div>

<script src="lib/iframeResizer.min.js"></script>

<script type="text/javascript">

var discourseUrl = "http://discuss.btranslator.org/";

function showDiscourseTopic(topic) {
  var comments = document.getElementById('discourse-comments');
  var iframe = document.getElementById('discourse-embed-frame');
  if (iframe) { iframe.remove(); }
  iframe = document.createElement('iframe');
  iframe.src = discourseUrl + '/t/' + topic + '/';
  iframe.id = 'discourse-embed-frame';
  iframe.width = '100%';
  iframe.frameBorder = '0';
  iframe.scrolling = 'yes';
  comments.appendChild(iframe);
  iFrameResize({}, iframe);
};

showDiscourseTopic('topic-to-be-embedded');

</script>
```
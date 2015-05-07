# Discourse Embedded Comments Plugin

This plugin embedds a discourse topic inside a page as comments.

## How to install

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

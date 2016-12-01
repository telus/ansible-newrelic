# ansible-newrelic

[NewRelic](https://newrelic.com/) - Application Performance Monitoring

[![Build Status](https://travis-ci.org/telusdigital/ansible-newrelic.svg?branch=master)](https://travis-ci.org/telusdigital/ansible-newrelic)

[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)

Tunables
--------
* `newrelic_php_apm_enabled` (boolean) - Enable APM for PHP?
* `newrelic_proxy_required` (boolean) - Is a proxy required to reach NewRelic?
* `newrelic_proxy_address` (string) - Address for proxy.
* `newrelic_proxy_port` (integer) - Port for proxy
* `newrelic_appname` (string) - Name of application
* `newrelic_license` (string) - License key for NewRelic
* `newrelic_server_labels` (array of label:value) - Label names and valus for NewRelic display
* `newrelic_infra_enabled` (boolean) - Enable Newrelic-Infra Monitoring?
* `newrelic_infrastructure_license_key` (string) - Newrelic Licence Key
* `newrelic_haproxy_plugin_enabled` (boolean) - Enable monitoring for HAProxy?
* `newrelic_haproxy_verbose` (boolean) - Verbose output for plugin
* `newrelic_haproxy_plugin_name` (string) - Display name of plugin on NewRelic
* `newrelic_haproxy_csv_uri` (string) - URI of the haproxy CSV stats url
* `newrelic_haproxy_plugin_user` (string) - User for HaProxy stats page
* `newrelic_haproxy_plugin_password` (string) - Password for HaProxy stats page
* `newrelic_haproxy_proxy` (string) - The name of the proxy to monitor. Proxies are typically listed in the haproxy.cfg file
* `newrelic_haproxy_proxy_type` (string) - If multiple proxies have the same name, specify which proxy you want to monitor
* `newrelic_nginx_enabled` (boolean) - Enable nginx monitoring?
* `newrelic_nginx_codename` (string) - Ubuntu distro codename used for repo
* `newrelic_nginx_poll_interval` (integer) - Poll interval for nginx plugin
* `newrelic_nginx_name` (string) - Display name for the application
* `newrelic_nginx_url` (string) - Url for nginx instance

Dependencies
------------
* [telusdigital.apt-repository](https://github.com/telusdigital/ansible-apt-repository/)

Example Playbook
----------------
    - hosts: servers
      roles:
         - role: telusdigital.newrelic
           newrelic_appname: "FooSite (Production)"
           newrelic_php_apm_enabled: yes
           newrelic_license: "YOUR_LICENSE_HERE"

License
-------
[MIT](https://tldrlegal.com/license/mit-license)

Contributors
------------
* [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
* Travis Allan
* [Aaron Pederson](https://aaronpederson.github.io) | [e-mail](mailto:aaronpederson@gmail.com) | [Twitter](https://twitter.com/GunFuSamurai)
* Prashant Kandathil
* Ben Visser
* Alexandar Podobnik

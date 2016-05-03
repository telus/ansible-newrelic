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
* Aaron Pederson
* Prashant Kandathil
* Ben Visser

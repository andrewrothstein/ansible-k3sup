andrewrothstein.k3sup
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-k3sup.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-k3sup)

Installs [k3sup](https://github.com/alexellis/k3sup)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.k3sup
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>

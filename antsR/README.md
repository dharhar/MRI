Ansible Role - ANTsR
===========================

This role installs ANTsR. It uses R scripts to install it in an idempotent way, but will always report the tasks as "changed" because the R scripts must run to see if it is already installed.


Platforms
---------

CentOS 7 is supported and tested so far.


Example Playbook
----------------

Include the role like this:

    - hosts: slurmcluster
      become: true
      roles:
      - role: antsR


License
-------

MIT License.

Author
------

- David Hardy

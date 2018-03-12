Ansible Role - Network File System
===========================

This role installs NFS with the following configuration.

- Shared Directories: /usr/local, /mnt

Platforms
---------

CentOS 7 is supported and tested so far.


Example Playbook and Inventory
----------------

Include the role like this:

    - hosts: slurmcluster
      become: true
      roles:
      - role: nfs

Make sure the inventory file has the group 'controller' like this:

    [slurmcluster:children]
    controller
    workers

    [controller]
    headnodename

    [workers]
    worknode1
    worknode2
    worknode3


License
-------

MIT License.

Author
------

- David Hardy

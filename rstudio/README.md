Ansible Role - Rstudio Server
===========================

This role installs Rstudio Server with the following configuration.

- Download directory: `/tmp/rstudio-server`
- Apache server settings are included in the proxysettings file, but you have to add them to your system manually.

Platforms
---------

CentOS 7 is supported and tested so far.


Example Playbook and Inventory
----------------

Include the role like this:

    - hosts: slurmcluster
      become: true
      roles:
      - role: rstudio

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

Including the worker nodes in the inventory is optional. It was designed to use the same inventory file as the slurm role.

License
-------

MIT License.

Author
------

- David Hardy

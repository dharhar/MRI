Ansible Role - Enigma Shape
===========================

This role installs Enigma Shape with the following configuration.

- Install directory: `/usr/local/shape`
- Webgl Viewer directory: `/usr/local/shape/viewer`
- Webgl server setup not included.


Platforms
---------

CentOS 7 is supported and tested so far.


Default Variables
-----------------

- home_mount: `/mnt/`
- main_user: `nfuser`
- script_dir: `/{{ home_mount }}/{{ main_user }}/scripts`


Example Playbook and Inventory
----------------

Include the role like this:

    - hosts: slurmcluster
      become: true
      roles:
      - role: shape

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

Authors
------

- Role and Viewer by David Hardy
- Shape by the people at Enigma

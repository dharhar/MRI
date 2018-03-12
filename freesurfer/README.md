Ansible Role - ANTs
===========================

This role installs Freesurfer with the following configuration.

- Download directory: `/tmp/freesurfer`
- Install directory: `/usr/local/freesurfer/`

Platforms
---------

CentOS 7 is supported and tested so far.

The script installs freesurfer with the assumption that /usr/local is on a networked file system and accessable to all nodes in the cluster.


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
      - role: freesurfer

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

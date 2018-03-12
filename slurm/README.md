Ansible Role - slurm
====================

This role simply installs SLURM Workload Manager with the following configuration.

- Install directory: `/opt/slurm/{{ slurm_version }}`
- Configuration directory: `/opt/slurm/{{ slurm_version }}/etc`
- Logging directory: `/var/log/slurm`
- Slurmd spool directory: `/var/spool/slurmd`
- PAM Slurm: `/lib64/security/pam_slurm.so`

Platforms
---------

CentOS 6 and 7 are supported and tested so far.

To install on clusters with uniform numbers of CPUs per node, rename template "slurm.conf.j2.1cpu" to "slurm.conf.j2" and uncomment the "cpus\_per\_node" variable in defaults/main.yml.

Default Variables
-----------------

- slurm_version: `17.11.1-2`
- slurm_url: `https://download.schedmd.com/slurm/slurm-{{ slurm_version }}.tar.bz2`
- slurm_prefix: `/opt/slurm/{{ slurm_version }}`

Dependencies
------------

None.

Example Playbook and Inventory
----------------

Include the role like this:

    - hosts: slurmcluster
      become: true
      roles:
      - role: slurm

make sure the inventory file has groups 'controller' and 'workers' like this:

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

Authors
------

- Koji Tanaka - RDI2
- David Hardy

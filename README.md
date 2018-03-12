Ansible Roles for Brainscanning
===============================

These roles are all designed to work on the same inventory file. Here's what they are:

- Slurm: Job Scheduler/Resource Manager for clusters
- NFS: Network File System. Works with Slurm to tie the cluster together.
- ANTs: Brain scan processing. The batch scripts depend on slurm.
- ANTsR: ANTs package for R. Installs on all nodes, but is also usable on just one computer.
- Freesurfer: Brain scan processing. The batch scripts depend on slurm.
- Shape: Brain scan processing. The batch scripts depend on slurm.
- Rstudio: Rstudio Server. Does not rely on slurm.


Platforms
---------

All the roles were developed for Centos 7, though Slurm was also tested on Centos 6.
Some of the roles like ANTs, ANTsR, and Freesurfer, are pretty hefty installs so make sure
to use a very stable connection. I ran them from a tmux session on the head node for extra stability.


Example Inventory
----------------

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


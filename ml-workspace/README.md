# MLOpsLab which is a descendant of ml-workspace

All R&D is performed with ml-workspace and VS Code. To optimize this R&D, relevant packages are consolidated in this docker image.
You can check what packages are installed through Dockerfile. [ml-workspace](https://github.com/ml-tooling/ml-workspace) is outstanding jupyter and jupyterlab environment which integrates convenient and productive tools.

Customized version of this R&D project complement productively helpful gadgets for your MLOps environment. Those will be listed as follows gradually.

* Google cloud sdk and relevant packages
* Coding friendly fonts
* Timezone setting in Dockerfile
* Cell tool bar extension
* Connection between PC and GPU enabled workstation in Jupyterlab
* EDA driven chart tools like Facets, Lux, What-If-Tool, etc.
* remote\_ikernel, sftp and sshfs

``` shell
docker run -d \
    --privileged \
    -p 8086:8080 \
    --name "mlopslab" \
    -v "${PWD}:/workspace" \
    --env AUTHENTICATE_VIA_JUPYTER="password" \
    --restart always \
    mlopslab:latest
```
***
## Connection between PC and GPU enabled workstation

remote\_ikernel, sftp and sshfs are installed by default as you can check in the Dockerfile. Before executing following steps, you should run mltooling/ml-workspace-gpu image in your GPU enabled workstation. Please follow next step-by-step guide.

1. Visit remote ml-workspace-gpu notebook environment and select Open Tool > SSH
1. Copy the string shown on pop-up window and execute it in your local PC. Care for the alias you enter during execution of the command line
~~~ bash
$/bin/bash <(curl -s --insecure "http://gpu.workstation.home:8086/shared/ssh/setup?token=cf2a4861f86d245d25503a4606c10e6fc216e945&host=gpu.workstation.home&port=8086")
~~~
3. Once you progress the previous step the script suggest you to add remote_ikernel automatically and the message in the process shows like this 
~~~ bash
remote_ikernel was detected on your machine. Do you like to setup a Python remote kernel for Jupyter (yes/no)? yes
Added kernel ['rik_ssh_my_jupyterclub_gpu_py36']: SSH my-jupyterclub-gpu Py 3.6.
Do you want to add this connection as mountable SFTP storage to the bookmarks of your file manager (yes/no)? yes
The ssh configuration is completed successfully. You can now securely connect via 'ssh my-jupyterclub-gpu'.
~~~
4. Execute command to mount remote file system to your local Jupyter environment with the SFTP protocol. The command is as follow
~~~ bash
$ sshfs <the alias you enter>:/workspace /workspace/gpus
~~~
5. Check your JupyterLab file browser
1. If you would like to include this mount process you can edit Dockerfile and append this command at the end of it.
~~~ Dockerfile
RUN sshfs <the alias you enter>:/workspace /workspace/gpus
~~~
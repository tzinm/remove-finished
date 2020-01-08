# Docker linuxserver/transmission mod

This mod add a script that **remove finished** torrents. 



## Usage

Moreover use [linuxserver/transmission](https://hub.docker.com/r/linuxserver/transmission) parameters, there are some others to add **remove finished** torrents functionality.

```bash
-e DOCKER_MODS=tzinm/remove-finished:latest \
-e AUTOREMOVE=yes \
-e CRONDATE=monthly \
-e AUTHENABLE=yes \#optional
```



### Parameters

| Parameter             | Function                                                     |
| --------------------- | ------------------------------------------------------------ |
| `-e AUTOREMOVE=yes`   | Active a script to autoremove torrents when these have finished |
| `-e CRONDATE=monthly` | Specify when torrents have to be removed. Options are: **monthly**, **weekly** or **daily**. **Monthly** is defined by default. |
| `-e AUTHENABLE=yes`   | When **user** and **pass** have been defined and **autoremove** is enabled, this parameter has to be activated. |

\*_Setting `-e USER=username` and `-e PASS=password` is required if **AUTHENABLE=yes**. This parameteres are explained in the oficial [linuxserver/transmission](https://hub.docker.com/r/linuxserver/transmission) image._

For more information about DOCKER MODS:

* [Customizing Linuxserver Containers](https://blog.linuxserver.io/2019/09/14/customizing-our-containers/)
* [Docker-mods](https://github.com/linuxserver/docker-mods)


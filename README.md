# Docker linuxserver/transmission mod

This mod add a script that **remove finished** torrents. 



## Usage

Moreover use [linuxserver/transmission](https://hub.docker.com/r/linuxserver/transmission) parameters, there are some others to add **remove finished** torrents functionality.

```bash
-e DOCKER_MODS=tzinm/remove-finished:latest \
-e AUTOREMOVE=yes \
-e AUTHENABLE=yes \
-e CRONDATE=monthly \
```



### Parameters

| Parameter             | Function                                                     |
| --------------------- | ------------------------------------------------------------ |
| `-e AUTOREMOVE=yes`   | Active a script to autoremove torrents when these have finished |
| `-e AUTHENABLE=yes`   | When **user** and **pass** have been defined and **autoremove** is enabled, this parameter has to be activated. |
| `-e CRONDATE=monthly` | Specify when torrents have to be removed. Options are: **monthly**, **weekly** or **daily**. **Monthly** is defined by default. |


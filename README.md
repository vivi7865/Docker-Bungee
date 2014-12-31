Docker-Bungee
=============
[Docker registry][1]

To run Docker-Bungee use this command:

    docker run -p 25565:25567 vivi7865/docker-bungee

To be able stop BungeeCord with ctrl+C or `end` add `-it` in that command.

In order to name the container as you want use `--name` like:

    docker run -p 25565:25567 --name BungeeCord vivi7865/docker-bungee

If you want to edit the configuration file (**YOU MUST CREATE THAT FILE BEFORE RUNNING `docker run`**) set up a volume by adding `-v /path/on/host/config.yml:/BungeeCord/config.yml` in the docker command.


  [1]: https://github.com/vivi7865/Docker-Bungee

# 项目初衷

搭建一个 LNMP 环境需要手动下载 LNMP 源码包，安装依赖包，编译，编译出错再安装依赖包，再修改默认配置，这样一个过程差不多半天过去了。

Docker 的优点是轻量、跨平台、提供一致的环境，避免「在我这里行换到你那就不行的问题」，我之前一直使用 `docker run` 来使用 Docker，问题是启动一个容器需要写参数、环境变量、挂载文件目录等，造成命令的繁杂，不易读，之后我就将 `docker run ...` 写入脚本文件，通过运行脚本文件来启动Docker。

接触 Docker Compose 之后把原来的启动命令写成 `docker-compose.yml` 来使用 Docker。Docker Compose 是一种容器编排工具，也就是管理多个容器的工具，以启动 LNMP（包括 Redis ） 为例，使用 `docker run` 你需要执行四条命令，而使用 Docker Compose 你只需执行 `docker-compose up -d` 就把四个容器全部启动了，这还不包括停止容器，容器依赖方式等操作。

此项目是给大家提供一种思路，也是本人对 Docker 的实践，也为了学习使用 Git 来管理项目。

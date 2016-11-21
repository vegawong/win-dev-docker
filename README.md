# win-dev-docker

windows前端开发环境的docker镜像 (mac 可用)

基于`centos 7`

集成`nodejs@6.5.0`, `npm@3.10.x`, `yarn@0.17.6`

集成`pm2 webpack webpack-dev-server supervisor babel eslint coffeescript gulp`

## usage

- 下载安装docker， [https://download.docker.com/win/stable/InstallDocker.msi](https://download.docker.com/win/stable/InstallDocker.msi)

- 右键任务栏右下角docker小图标， 点击`settings` -> `shared drives`, 勾上你的用户所在盘， 一般是C盘

- 克隆项目

  ```ruby

  $ git clone https://github.com/vega-wong/win-dev-docker.git && cd win-dev-docker

  ```

- 修改`docker-compose.yml`以下节点(可选)

  ```

  # [你的本地共享文件夹，存放项目的目录]:[docker上的目录]
  volumes:
    - ~/projects:/projects

  # 添加或修改端口映射， [你的端口]:[docker的端口]
  ports:
    - "8000:8000"
    - "8080:8080"
    - "3000:3000"
    - "3123:3123"

  ```

- 启动docker容器

  ```ruby
  # 检查是否启动
  $ docker ps | grep win-dev

  # 启动需要挂载
  $ docker-compose up -d

  ```


- 进入容器

  ```ruby

  $ docker exec -it win-dev /bin/bash

  ```


## 注意事项

每次重启容器,或者挂载容器, 之前容器内的改动都会丢失, 除了映射的共享目录

宿主机映射容器的端口对应ip是`0.0.0.0`, 如使用过程中宿主机无法通过`localhost:映射端口`访问docker容器, 请检查监听ip是否指定`0.0.0.0`, 如:

```ruby
$ webpack-dev-server --inline --host 0.0.0.0
```

才能让宿主机访问.


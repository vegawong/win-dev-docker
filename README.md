# win-dev-docker

windows前端开发环境的docker镜像

基于`centos`

集成`nodejs@6.5.0`, `npm@3.10.x`, `yarn@0.17.6`

## usage

- 下载安装docker， [https://download.docker.com/win/stable/InstallDocker.msi](https://download.docker.com/win/stable/InstallDocker.msi)

- 右键任务栏右下角docker小图标， 点击`settings` -> `shared drives`, 勾上你的用户所在盘， 一般是C盘 

- ```ruby
  $ git clone https://github.com/vega-wong/win-dev-docker.git && cd win-dev-docker
  ```

- 修改`docker-compose.yml`以下节点(可选)

  ```docker
  volumes:
    # [你的本地共享文件夹，存放项目的目录]:[docker上的目录]
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
  $ docker-compose up -d

  ```


- 进入容器

  ```ruby
  $ docker exec -it win-dev /bin/bash
  ```


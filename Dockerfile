FROM registry.cn-hangzhou.aliyuncs.com/vega/centos-node:v6.5.2
MAINTAINER vegawong <vegawong@126.com>

# 安装vim
RUN yum -y install vim


# 安装 yarn
RUN npm install --registry=https://registry.npm.taobao.org -g yarn@0.17.6
# RUN yarn config set registry https://registry.npm.taobao.org
RUN yarn config set registry https://registry.npm.taobao.org


# 安装全局包
RUN yarn global add pm2 webpack webpack-dev-server supervisor babel eslint coffee-script gulp nodemon

FROM node:8.7.0
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install cross-env -g
COPY ./ /qms-node
WORKDIR /qms-node
RUN cnpm install


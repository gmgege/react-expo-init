# 使用Node.js 14的官方镜像作为基础镜像
FROM node:14

# 设置工作目录
WORKDIR /app

# 安装expo-cli
RUN npm install -g expo-cli

# 拷贝package.json和package-lock.json（如果存在）到工作目录
COPY ./package*.json ./

# 安装依赖
RUN npm install

# 拷贝项目文件到工作目录
COPY . .

# 启动Expo
CMD ["expo", "start"]

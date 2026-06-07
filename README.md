# GIS全栈开发项目

## 项目简介
这是一个GIS全栈开发学习项目，基于Vue3 + Vite构建前端应用。

## 技术栈
- Vue 3.5.35
- Vite 8.0.16
- pnpm 11.5.1
- Leaflet

## 安装与运行
```bash
pnpm install
pnpm run dev
```

## 项目特点
- 基于 Vue 3 + Vite 构建
- 支持 GIS 地图组件开发
- 使用 pnpm 管理依赖


## 项目目录结构
my-gis-app/
├── frontend/ # 前端层（Vue3 + Leaflet）
│ ├── src/ # 前端源代码
│ └── public/ # 公共静态文件
├── backend/ # 后端层（Java + Spring Boot）
│ └── src/main/java/com/gis/
├── data/ # 数据层（GeoPandas）
│ ├── raw/ # 原始数据
│ ├── processed/ # 处理后的数据
│ └── output/ # 输出结果
├── scripts/ # 工具脚本
├── docs/ # 项目文档
├── check_env.sh # 环境自检脚本
└── README.md # 项目说明


## 三层架构职责说明

### 前端层（frontend/）
- **技术栈**：Vue 3 + Vite + Leaflet + Pinia
- **主要职责**：
  - 地图可视化（地图展示、图层控制、标记点交互）
  - 用户交互界面
  - 调用后端 API 获取数据
  - 管理应用状态

### 数据处理层（data/）
- **技术栈**：Python 3.12 + GeoPandas + Shapely + Fiona
- **主要职责**：
  - 读取和写入空间数据（Shapefile、GeoJSON）
  - 执行空间分析（缓冲区分析、叠加分析）
  - 数据清洗与格式转换
  - 预处理待发布的空间数据

### 后端层（backend/）
- **技术栈**：Java 21 + Spring Boot + GeoServer + Maven
- **主要职责**：
  - 发布地图服务（WMS/WFS）
  - 提供 RESTful API 接口
  - 处理业务逻辑
  - 与数据库交互（PostGIS）

## 环境自检

```bash
./check_env.sh

### 第三步：保存文件

按 `Ctrl + S` 保存，然后关闭记事本。

### 第四步：确认更新

```bash
cat README.md
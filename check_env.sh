#!/bin/bash
# ==================================================
# GIS 全栈开发环境自检脚本
# 功能：检测 Node.js、Python、Java、Git 的版本信息
# 适用环境：Git Bash (Windows / Linux / macOS)
# ==================================================

echo "=========================================="
echo "     GIS 全栈开发环境自检报告"
echo "=========================================="
echo ""

# 颜色定义
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 检测 Node.js
echo -n "Node.js 版本: "
if command -v node &> /dev/null; then
    NODE_VERSION=$(node -v)
    echo -e "${GREEN}$NODE_VERSION${NC}"
else
    echo -e "${RED}未安装 Node.js${NC}"
fi

# 检测 pnpm
echo -n "pnpm 版本:   "
if command -v pnpm &> /dev/null; then
    PNPM_VERSION=$(pnpm -v)
    echo -e "${GREEN}$PNPM_VERSION${NC}"
else
    echo -e "${RED}未安装 pnpm${NC}"
fi

# 检测 Python
echo -n "Python 版本: "
if command -v python &> /dev/null; then
    PYTHON_VERSION=$(python --version 2>&1)
    echo -e "${GREEN}$PYTHON_VERSION${NC}"
else
    echo -e "${RED}未安装 Python${NC}"
fi

# 检测 Java
echo -n "Java 版本:   "
if command -v java &> /dev/null; then
    JAVA_VERSION=$(java -version 2>&1 | head -n 1)
    echo -e "${GREEN}$JAVA_VERSION${NC}"
else
    echo -e "${RED}未安装 Java${NC}"
fi

# 检测 Maven
echo -n "Maven 版本:  "
if command -v mvn &> /dev/null; then
    MAVEN_VERSION=$(mvn -v 2>&1 | head -n 1)
    echo -e "${GREEN}$MAVEN_VERSION${NC}"
else
    echo -e "${RED}未安装 Maven${NC}"
fi

# 检测 Git
echo -n "Git 版本:    "
if command -v git &> /dev/null; then
    GIT_VERSION=$(git --version)
    echo -e "${GREEN}$GIT_VERSION${NC}"
else
    echo -e "${RED}未安装 Git${NC}"
fi

echo ""
echo "=========================================="
echo "         环境自检完成"
echo "=========================================="
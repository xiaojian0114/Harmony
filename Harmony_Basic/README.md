# 鸿蒙基础开发项目

欢迎来到鸿蒙基础开发项目！本项目旨在帮助开发者快速入门鸿蒙应用开发，提供基础的项目结构、示例代码和开发指南。

## 项目简介

本项目包含鸿蒙（HarmonyOS）应用开发的基础组件、页面布局、状态管理和常用 API 调用示例，适合初学者学习和参考。通过本项目，你可以了解鸿蒙应用的基本开发流程、ArkTS 语法特性以及鸿蒙生态的核心能力。

## 环境要求

- DevEco Studio: 5.0 及以上版本
- HarmonyOS SDK: API 17 及以上
- Node.js: 14.19.1 及以上
- JDK: 11.0 及以上
- 鸿蒙设备或模拟器: API 17 及以上版本

## 安装与配置

1. 下载并安装[DevEco Studio](https://developer.harmonyos.com/cn/develop/deveco-studio)
2. 启动 DevEco Studio，在欢迎页面点击"Configure" -> "Settings" -> "Appearance & Behavior" -> "System Settings" -> "HarmonyOS SDK"，安装所需版本的 SDK
3. 克隆本项目到本地：
   ```bash
   git clone https://github.com/yourusername/harmonyos-basic-dev.git
   ```
4. 在 DevEco Studio 中点击"Open Project"，选择项目文件夹
5. 等待项目依赖安装完成（首次打开可能需要较长时间）

## 快速开始

1. 连接鸿蒙设备或启动模拟器（需在 DevEco Studio 中配置）
2. 确认项目配置正确：`entry/src/main/module.json5`
3. 点击 DevEco Studio 工具栏中的"Run"按钮（▶️）或使用快捷键`Shift+F10`
4. 应用将自动编译并安装到目标设备上

## 项目结构

```
harmonyos-basic-dev/
├── AppScope/                 # 应用全局配置
│   ├── app.json5             # 应用配置文件
│   └── resources/            # 应用级资源
├── entry/                    # 主模块
│   ├── src/
│   │   ├── main/
│   │   │   ├── ets/          # 业务逻辑代码
│   │   │   │   ├── entryability/  # 应用入口
│   │   │   │   ├── pages/         # 应用页面
│   │   │   │   └── common/        # 公共组件和工具
│   │   │   ├── resources/    # 模块级资源
│   │   │   └── module.json5  # 模块配置文件
│   ├── oh-package.json5      # 依赖配置
│   └── build-profile.json5   # 构建配置
├── build-profile.json5       # 项目级构建配置
├── hvigorfile.ts             # 构建脚本
└── README.md                 # 项目说明文档
```

## 主要功能示例

- 基础 UI 组件使用（Text, Button, Image, List 等）
- 页面路由与参数传递（Navigator, Router）
- 网络请求示例（@ohos.net.http）
- 数据存储（Preferences, RelationalStore）
- 权限管理与请求
- 事件处理与状态管理（@State, @Prop, @Link 等）
- 动画与交互效果
- 多语言支持

## 开发指南

### 页面开发

1. 在`pages`目录下创建新的页面文件夹（如`DetailPage`）
2. 新建`Index.ets`文件，使用 ArkTS 声明式语法编写页面：



### 组件开发

1. 在`common`目录下创建可复用组件（如`CustomButton.ets`）
2. 在其他页面中导入并使用：
   ```typescript
   import { CustomButton } from "../common/CustomButton";
   ```

### 状态管理

- 简单页面：使用`@State`管理组件内部状态
- 父子组件通信：使用`@Prop`和`@Link`
- 跨组件通信：使用`AppStorage`或`LocalStorage`

### 调试技巧

- 使用`console.log()`输出调试信息
- 利用 DevEco Studio 的断点调试功能
- 使用`HiLog`进行更专业的日志管理

## 常见问题

1. **Q: 项目编译失败？**  
   A: 检查 SDK 版本是否匹配，尝试清理缓存（Build -> Clean Project）

2. **Q: 模拟器无法启动？**  
   A: 检查 HVD Manager 配置，确保模拟器镜像已正确下载

3. **Q: 权限相关功能无法使用？**  
   A: 需在`module.json5`中声明对应权限，并在代码中动态请求

## 资源推荐

- [鸿蒙开发者文档](https://developer.harmonyos.com/cn/docs/documentation/doc-guides/overview-0000001054122691)
- [ArkTS 语言参考](https://developer.harmonyos.com/cn/docs/documentation/doc-references/arkts-language-overview-0000001524764565)
- [DevEco Studio 使用指南](https://developer.harmonyos.com/cn/docs/documentation/doc-guides/deveco-studio-overview-0000001470031083)

## 贡献指南

1. Fork 本仓库
2. 创建特性分支（`git checkout -b feature/amazing-feature`）
3. 提交更改（`git commit -m 'Add some amazing feature'`）
4. 推送到分支（`git push origin feature/amazing-feature`）
5. 打开 Pull Request

## 许可证

本项目采用 Apache License 2.0 许可证，详情请见 LICENSE 文件。

## 联系方式

- 项目维护者：yourname@example.com
- 鸿蒙开发者社区：https://developer.harmonyos.com/cn/community
- GitHub Issues：https://github.com/yourusername/harmonyos-basic-dev/issues

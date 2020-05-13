# Modularization with MGJRouter with pod manager 
## 组件化工程 
### 分为三个部分 分别是三个独立可运行的project
ModularizationMain
SCHCorePart 
SCHBasePart
## 组件的仓库建立
三个组件都需要建立各自的仓库，除了主工程其余都需要配置各自的podspec文件（作为第三方库podsepc文件就是来设置相关配置的，用来供别人pod 相关库）
## 主工程的运行
主工程与一般的工程相同，只需要在podfile中pod SCHCorePart和SCHBasePart这两个组件（就是以第三方库的形式从 github仓库导入）然后在terminal中pod install 后期若其他组件的git有变化也只需要在主工程下pod update就可以了
## 整个项目的结构目录
主工程在podfile中 pod 其余的两个组件，则这个两个组件就以第三方库的身份加载到pod目录下（组件除了相关的.swift文件还有supportFile文件）
### *一些小的常见错误*
1. 在组件中的.swift文件中的类声明需要添加public，才能让主工程在import 相关组件后使用旗下的类
2. 有些人在建立组件时podspec设置中设置了较高的spec.platform 版本导致 在主工程pod install是会出现第三方库需要更高的编译环境错误，此时只需要将
主工程的podfile文件的platform 版本设置到与spec.platform 版本相同就可以pod install了


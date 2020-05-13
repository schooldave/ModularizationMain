# ModularizationMain with MGJRouter
## 组件化工程 
### 分为三个部分 分别是三个独立可运行的project
ModularizationMain
SCHCorePart 
SCHBasePart
## 组件的仓库建立
三个组件都需要建立各自的仓库，除了主工程其余都需要配置各自的podspec文件（作为第三方库podsepc文件就是来设置相关配置的，用来供别人pod 相关库）
## 主工程的运行
主工程与一般的工程相同，只需要在podfile中pod SCHCorePart和SCHBasePart这两个组件（就是以第三方库的形式从 github仓库导入） 

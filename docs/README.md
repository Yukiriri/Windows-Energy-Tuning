# Windows-Energy-Tuning
一套CPU频率能效调优操作，适用于Windows  
台式和笔记本通用  
  
让Windows重新接管CPU调频，闲时能下降到更低频率  
可以减少一些不必要的高频，间接降低发热和提升续航  
大概也许可能可以缓解OEM调教不力的疑难杂症  
需要注意OEM覆盖电源计划  

> [!IMPORTANT]
> 全文提到的cmd命令都需要管理员身份运行  

> [!TIP]
> 修改电源计划之前，推荐把电源计划重置默认  
> 也推荐使用`平衡`电源计划  

> [!NOTE]
> 仓库的`tools`文件夹里有写好的一键脚本版  

# 插电能效调优
cmd命令一览：
- 最小处理器状态
  ```
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964c" 0
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964d" 0
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964e" 0
  ```
- 处理器性能自主模式 & 处理器性能提升模式
  ```
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "8baa4a8a-14c6-4451-8e8b-14bdbd197537" 0
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "be337238-0d82-4146-a960-4f3749d470c7" 3
  ```
- 处理器性能提高阈值 & 处理器性能降低阈值
  ```
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "06cadf0e-64ed-448a-8927-ce7bf90eb35d" 50
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "06cadf0e-64ed-448a-8927-ce7bf90eb35e" 50
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" 25
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "12a0ab44-fe28-4fa9-b3bd-4b64f44960a7" 25
  ```
- 处理器性能提升策略 & 处理器性能降低策略
  ```
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "465e1f50-b610-473a-ab58-00d1077dc418" 1
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "465e1f50-b610-473a-ab58-00d1077dc419" 1
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "40fbefc7-2e9d-4d25-a185-0cfd8574bac6" 1
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "40fbefc7-2e9d-4d25-a185-0cfd8574bac7" 1
  ```
- 处理器性能时间检查间隔 & 处理器性能提升时间 & 处理器性能下降时间
  ```
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "4d2b0152-7d5c-498b-88e2-34345392a2c5" 50
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "984cf492-3bed-4488-a8f9-4286c97bf5aa" 1
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "984cf492-3bed-4488-a8f9-4286c97bf5ab" 1
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "d8edeb9b-95cf-4f95-a73c-b061973693c8" 1
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "d8edeb9b-95cf-4f95-a73c-b061973693c9" 1
  ```
- 处理器闲置阈值调整 & 处理器闲置升级阈值 & 处理器闲置降级阈值
  ```
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "6c2993b0-8f48-481f-bcc6-00dd2742aa06" 1
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "7b224883-b3cc-4d79-819f-8374152cbe7c" 50
  powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "4b92d758-5a24-4851-a470-815d78aee119" 25
  ```
- 让修改生效
  ```
  powercfg -SetActive SCHEME_CURRENT
  ```

> [!NOTE]
> 这些修改并不影响最高性能上限，也不影响游戏性能  

> [!NOTE]
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

# 离电续航调优
cmd命令一览：
- 最小处理器状态
  ```
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964c" 0
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964d" 0
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964e" 0
  ```
- 处理器性能自主模式 & 处理器性能提升模式
  ```
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "8baa4a8a-14c6-4451-8e8b-14bdbd197537" 0
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "be337238-0d82-4146-a960-4f3749d470c7" 3
  ```
- 处理器性能提高阈值 & 处理器性能降低阈值
  ```
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "06cadf0e-64ed-448a-8927-ce7bf90eb35d" 66
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "06cadf0e-64ed-448a-8927-ce7bf90eb35e" 66
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" 50
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "12a0ab44-fe28-4fa9-b3bd-4b64f44960a7" 50
  ```
- 处理器性能提升策略 & 处理器性能降低策略
  ```
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "465e1f50-b610-473a-ab58-00d1077dc418" 1
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "465e1f50-b610-473a-ab58-00d1077dc419" 1
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "40fbefc7-2e9d-4d25-a185-0cfd8574bac6" 1
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "40fbefc7-2e9d-4d25-a185-0cfd8574bac7" 1
  ```
- 处理器性能时间检查间隔 & 处理器性能提升时间 & 处理器性能下降时间
  ```
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "4d2b0152-7d5c-498b-88e2-34345392a2c5" 50
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "984cf492-3bed-4488-a8f9-4286c97bf5aa" 2
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "984cf492-3bed-4488-a8f9-4286c97bf5ab" 2
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "d8edeb9b-95cf-4f95-a73c-b061973693c8" 1
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "d8edeb9b-95cf-4f95-a73c-b061973693c9" 1
  ```
- 处理器闲置阈值调整 & 处理器闲置升级阈值 & 处理器闲置降级阈值
  ```
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "6c2993b0-8f48-481f-bcc6-00dd2742aa06" 1
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "7b224883-b3cc-4d79-819f-8374152cbe7c" 66
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "4b92d758-5a24-4851-a470-815d78aee119" 50
  ```
- 处理器性能核心放置最小核心数量 & 处理器性能内核休止并发阈值 & 处理器性能内核休止并发空间阈值
  ```
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "0cc5b647-c1df-4637-891a-dec35c318583" 50
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "0cc5b647-c1df-4637-891a-dec35c318584" 50
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "2430ab6f-a520-44a2-9601-f7f23b5134b1" 50
  powercfg -SetDcValueIndex SCHEME_CURRENT SUB_PROCESSOR "f735a673-2066-4f80-a0c5-ddee0cf1bf5d" 1
  ```

> [!NOTE]
> 可选  

- 让修改生效
  ```
  powercfg -SetActive SCHEME_CURRENT
  ```

> [!NOTE]
> 这些修改并不影响最高性能上限，但会影响游戏性能  

> [!NOTE]
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

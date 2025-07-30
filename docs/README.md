# Windows-Energy-Tuning
一套CPU频率能效调优操作，适用于Windows  
台式和笔记本通用  
  
让Windows重新接管CPU调频，闲时能下降到更低频率，减少一些不必要的高频  

> [!IMPORTANT]
> 全文提到的cmd命令都需要管理员身份运行  

> [!TIP]
> 修改电源计划之前，推荐把电源计划重置默认  
> 也推荐使用默认的平衡计划  

> [!NOTE]
> 仓库的tools文件夹里有写好的脚本版  

cmd命令一览：
- 处理器性能自主模式
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "8baa4a8a-14c6-4451-8e8b-14bdbd197537" 0
    ```
- 最小处理器状态
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964c" 0
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964d" 0
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "893dee8e-2bef-41e0-89c6-b55d0929964e" 0
    ```
- 处理器性能提升模式
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "be337238-0d82-4146-a960-4f3749d470c7" 3
    ```
- 处理器性能提高阈值
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "06cadf0e-64ed-448a-8927-ce7bf90eb35d" 50
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "06cadf0e-64ed-448a-8927-ce7bf90eb35e" 50
    ```
- 处理器性能降低阈值
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "12a0ab44-fe28-4fa9-b3bd-4b64f44960a6" 25
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "12a0ab44-fe28-4fa9-b3bd-4b64f44960a7" 25
    ```
- 处理器性能提升策略
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "465e1f50-b610-473a-ab58-00d1077dc418" 1
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "465e1f50-b610-473a-ab58-00d1077dc419" 1
    ```
- 处理器性能降低策略
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "40fbefc7-2e9d-4d25-a185-0cfd8574bac6" 1
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "40fbefc7-2e9d-4d25-a185-0cfd8574bac7" 1
    ```
- 处理器性能提升时间
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "984cf492-3bed-4488-a8f9-4286c97bf5aa" 6
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "984cf492-3bed-4488-a8f9-4286c97bf5ab" 6
    ```
- 处理器性能下降时间
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "d8edeb9b-95cf-4f95-a73c-b061973693c8" 1
    ```
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "d8edeb9b-95cf-4f95-a73c-b061973693c9" 1
    ```
- 处理器闲置阈值调整
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "6c2993b0-8f48-481f-bcc6-00dd2742aa06" 1
    ```
- 处理器闲置升级阈值
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "7b224883-b3cc-4d79-819f-8374152cbe7c" 50
    ```
- 处理器闲置降级阈值
    ```
    powercfg -SetAcValueIndex SCHEME_CURRENT SUB_PROCESSOR "4b92d758-5a24-4851-a470-815d78aee119" 25
    ```
- 让修改生效
    ```
    powercfg -SetActive SCHEME_CURRENT
    ```

> [!NOTE]
> 这些修改并不影响最高性能上限，也不影响游戏性能  

> [!NOTE]
> 这些修改作用的是插电电源计划  

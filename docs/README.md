# Windows-Energy-Tuning
让Windows重新接管CPU调频，闲时能下降到更低频率  
可以减少一些不必要的高频，间接降低发热和提升续航  
大概也许可能可以缓解OEM调教不力的疑难杂症  
台式和笔记本通用，重点改善全大核  

## 插电能效调优
下载和管理员运行[`set-cpu-ac-energy.bat`](../bin/set-cpu-ac-energy.bat)

> [!NOTE]
> 不影响最高性能上限，也不影响游戏性能  

> [!IMPORTANT]
> 需要注意OEM覆盖电源计划  

> [!NOTE]
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 离电续航调优
下载和管理员运行[`set-cpu-dc-powersave.bat`](../bin/set-cpu-dc-powersave.bat)

> [!NOTE]
> 不影响最高性能上限，但会影响游戏性能  

> [!IMPORTANT]
> 需要注意OEM覆盖电源计划  

> [!NOTE]
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

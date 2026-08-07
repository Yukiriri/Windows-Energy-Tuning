重新调整Windows的CPU调频，尽可能复刻Linux的governor效果，并实现更多用途  
台式和笔记本通用  

## CPU频率调整
[AC-ConstantMax ]: ../bin/ac/set-cpufreq-constantmax.bat
[AC-ConstantBase]: ../bin/ac/set-cpufreq-constantbase.bat
[AC-LowLatency  ]: ../bin/ac/set-cpufreq-lowlatency.bat

[AC-Balance     ]: ../bin/ac/set-cpufreq-balance.bat
[AC-Balance-50  ]: ../bin/ac/set-cpufreq-balance-50.bat
[AC-Balance-75  ]: ../bin/ac/set-cpufreq-balance-75.bat
[AC-Balance-99  ]: ../bin/ac/set-cpufreq-balance-99.bat
[AC-Passivity   ]: ../bin/ac/set-cpufreq-passivity.bat
[AC-Passivity-50]: ../bin/ac/set-cpufreq-passivity-50.bat
[AC-Passivity-75]: ../bin/ac/set-cpufreq-passivity-75.bat
[AC-Passivity-99]: ../bin/ac/set-cpufreq-passivity-99.bat

[DC-Balance     ]: ../bin/dc/set-cpufreq-balance.bat
[DC-Balance-50  ]: ../bin/dc/set-cpufreq-balance-50.bat
[DC-Balance-75  ]: ../bin/dc/set-cpufreq-balance-75.bat
[DC-Balance-99  ]: ../bin/dc/set-cpufreq-balance-99.bat
[DC-Passivity   ]: ../bin/dc/set-cpufreq-passivity.bat
[DC-Passivity-50]: ../bin/dc/set-cpufreq-passivity-50.bat
[DC-Passivity-75]: ../bin/dc/set-cpufreq-passivity-75.bat
[DC-Passivity-99]: ../bin/dc/set-cpufreq-passivity-99.bat

- ## 表现一览
  | 调频器       | 频率表现                  | 性能表现 | 待机电压 |
  | :----------- | :------------------------ | :------- | :------- |
  | ConstantMax  | 恒定最高频率              | 极致响应 | 最高     |
  | ConstantBase | 恒定基本频率              | 最佳能效 | 高       |
  | LowLatency   | 按需激进提频(下限99%基频) | 超高响应 | 高       |
  | Balance      | 按需积极提频              | 高响应   | 低       |
  | Balance-50   | 按需积极提频(下限50%基频) | 高响应   | 低       |
  | Balance-75   | 按需积极提频(下限75%基频) | 高响应   | 中等     |
  | Balance-99   | 按需积极提频(下限99%基频) | 超高响应 | 高       |
  | Passivity    | 按需被动提频              | 中等响应 | 低       |
  | Passivity-50 | 按需被动提频(下限50%基频) | 中等响应 | 低       |
  | Passivity-75 | 按需被动提频(下限75%基频) | 中等响应 | 中等     |
  | Passivity-99 | 按需被动提频(下限99%基频) | 高响应   | 高       |

- ## 用途一览
  | 调频器       | AC用              | DC用              |
  | :----------- | :---------------- | :---------------- |
  | ConstantMax  | [AC-ConstantMax]  | ❌                 |
  | ConstantBase | [AC-ConstantBase] | ❌                 |
  | LowLatency   | [AC-LowLatency]   | ❌                 |
  | Balance      | [AC-Balance]      | [DC-Balance]      |
  | Balance-50   | [AC-Balance-50]   | [DC-Balance-50]   |
  | Balance-75   | [AC-Balance-75]   | [DC-Balance-75]   |
  | Balance-99   | [AC-Balance-99]   | [DC-Balance-99]   |
  | Passivity    | [AC-Passivity]    | [DC-Passivity]    |
  | Passivity-50 | [AC-Passivity-50] | [DC-Passivity-50] |
  | Passivity-75 | [AC-Passivity-75] | [DC-Passivity-75] |
  | Passivity-99 | [AC-Passivity-99] | [DC-Passivity-99] |

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!IMPORTANT]  
> 需要注意OEM覆盖电源计划  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## CPU C-State调整
这里额外提供控制C-State，可以实现服务器模式/极客定制  

- 限制AC C-State最深为C1: [set-ac-cpucstate-maxc1.bat](../bin/ac/set-ac-cpucstate-maxc1.bat)
- 重置AC C-State: [reset-ac-cpucstate-default.bat](../bin/ac/reset-ac-cpucstate-default.bat)

> [!IMPORTANT]  
> 需要管理员权限运行  

> [!NOTE]  
> 运行一次即整个电源计划生效，不需要加入开机自启  
> 除非切换电源计划，才需要给新电源计划重新运行一次  

## 重置修改
运行 [reset-schemes-default.bat](../bin/reset-schemes-default.bat)

> [!NOTE]  
> 也会重置`关屏` `睡眠` `休眠`的时间  

## 等价参考
| Linux                | Windows          |
| :------------------- | :--------------- |
| sampling_rate        | PerfCheck        |
| up_threshold         | PerfIncThreshold |
| down_threshold       | PerfDecThreshold |
| freq_step            | PerfIncPol       |
| sampling_down_factor | PerfDecPol       |

## Credits
- https://learn.microsoft.com/windows-hardware/customize/power-settings/static-configuration-options-for-the-performance-state-engine
- https://www.kernel.org/doc/Documentation/cpu-freq/governors.txt

## Acknowledgements
- [testufo.com/animation-time-graph](https://testufo.com/animation-time-graph#scale=0.5&measure=rendering)

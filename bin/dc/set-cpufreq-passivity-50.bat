set call_powercfg=powercfg -SetDcValueIndex Scheme_Current Sub_Processor

%call_powercfg% ProcThrottleMin 50
%call_powercfg% ProcThrottleMin1 50
%call_powercfg% ProcThrottleMin2 50
%call_powercfg% ProcThrottleMax 100
%call_powercfg% ProcThrottleMax1 100
%call_powercfg% ProcThrottleMax2 100

%call_powercfg% PerfBoostMode 1

%call_powercfg% PerfAutonomous 0
%call_powercfg% PerfAutonomousWindow 32000

%call_powercfg% PerfCheck 32
%call_powercfg% PerfIncThreshold 50
%call_powercfg% PerfIncThreshold1 50
%call_powercfg% PerfDecThreshold 75
%call_powercfg% PerfDecThreshold1 75
%call_powercfg% PerfIncPol 1
%call_powercfg% PerfIncPol1 1
%call_powercfg% PerfDecPol 1
%call_powercfg% PerfDecPol1 1
%call_powercfg% LatencyHintPerf 99
%call_powercfg% LatencyHintPerf1 99
%call_powercfg% LatencyHintPerf2 99

powercfg -SetActive Scheme_Current

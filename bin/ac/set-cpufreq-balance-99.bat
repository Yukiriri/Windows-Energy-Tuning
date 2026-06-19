set call_powercfg=powercfg -SetAcValueIndex Scheme_Current Sub_Processor

%call_powercfg% ProcThrottleMin 99
%call_powercfg% ProcThrottleMin1 99
%call_powercfg% ProcThrottleMin2 99
%call_powercfg% ProcThrottleMax 100
%call_powercfg% ProcThrottleMax1 100
%call_powercfg% ProcThrottleMax2 100

%call_powercfg% PerfBoostMode 1

%call_powercfg% PerfAutonomous 0
%call_powercfg% PerfAutonomousWindow 16000

%call_powercfg% PerfCheck 16
%call_powercfg% PerfIncThreshold 25
%call_powercfg% PerfIncThreshold1 25
%call_powercfg% PerfDecThreshold 50
%call_powercfg% PerfDecThreshold1 50
%call_powercfg% PerfIncPol 1
%call_powercfg% PerfIncPol1 1
%call_powercfg% PerfDecPol 1
%call_powercfg% PerfDecPol1 1
%call_powercfg% LatencyHintPerf 100
%call_powercfg% LatencyHintPerf1 100
%call_powercfg% LatencyHintPerf2 100

powercfg -SetActive Scheme_Current

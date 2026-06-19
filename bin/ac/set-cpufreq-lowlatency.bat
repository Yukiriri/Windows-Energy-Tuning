set call_powercfg=powercfg -SetAcValueIndex Scheme_Current Sub_Processor

%call_powercfg% ProcThrottleMin 99
%call_powercfg% ProcThrottleMin1 99
%call_powercfg% ProcThrottleMin2 99
%call_powercfg% ProcThrottleMax 100
%call_powercfg% ProcThrottleMax1 100
%call_powercfg% ProcThrottleMax2 100

%call_powercfg% PerfBoostMode 1

%call_powercfg% PerfAutonomous 1
%call_powercfg% PerfAutonomousWindow 16000

%call_powercfg% PerfCheck 16
%call_powercfg% PerfEPP 50
%call_powercfg% PerfEPP1 50
%call_powercfg% PerfEPP2 50
%call_powercfg% LatencyHintEPP 100
%call_powercfg% LatencyHintEPP1 100
%call_powercfg% LatencyHintEPP2 100

powercfg -SetActive Scheme_Current

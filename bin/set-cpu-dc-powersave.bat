powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfAutonomous 0
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfBoostMode 1
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfBoostPol 0
powercfg -SetDcValueIndex Scheme_Current Sub_Processor ProcThrottleMin 5
powercfg -SetDcValueIndex Scheme_Current Sub_Processor ProcThrottleMin1 5
powercfg -SetDcValueIndex Scheme_Current Sub_Processor ProcThrottleMin2 5

powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfCheck 8
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfIncPol 1
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfIncPol1 1
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfDecPol 1
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfDecPol1 1
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfIncThreshold 66
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfIncThreshold1 66
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfDecThreshold 50
powercfg -SetDcValueIndex Scheme_Current Sub_Processor PerfDecThreshold1 50
powercfg -SetDcValueIndex Scheme_Current Sub_Processor IdleScaling 1
powercfg -SetDcValueIndex Scheme_Current Sub_Processor IdleCheck 16000
powercfg -SetDcValueIndex Scheme_Current Sub_Processor IdlePromote 66
powercfg -SetDcValueIndex Scheme_Current Sub_Processor IdleDemote 50

powercfg -SetDcValueIndex Scheme_Current Sub_Processor CPMinCores 50
powercfg -SetDcValueIndex Scheme_Current Sub_Processor CPMinCores1 50
powercfg -SetDcValueIndex Scheme_Current Sub_Processor CPConcurrency 0
powercfg -SetDcValueIndex Scheme_Current Sub_Processor CPHeadroom 0
powercfg -SetDcValueIndex Scheme_Current Sub_Processor CPDistribution 0

powercfg -SetActive Scheme_Current

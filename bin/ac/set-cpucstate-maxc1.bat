set call_powercfg=powercfg -SetAcValueIndex Scheme_Current Sub_Processor

%call_powercfg% IdleStateMax 1

powercfg -SetActive Scheme_Current

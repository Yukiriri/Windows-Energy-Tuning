set call_powercfg=powercfg -SetAcValueIndex Scheme_Current Sub_Processor

%call_powercfg% IdleStateMax 0

powercfg -SetActive Scheme_Current

% ------------------------------------------------------------------------
% Compile the "cov_*" series functions which are applied to convert the
% uint16 # to real datatype
mex -largeArrayDims cov_4uint8_to_float.cpp
mex -largeArrayDims cov_8uint8_to_2floats.cpp
mex -largeArrayDims cov_8uint8_to_double.cpp
mex -largeArrayDims cov_uint8_to_double.cpp
mex -largeArrayDims cov_uint8_to_PhoStat.cpp
mex -largeArrayDims HelicalToFanFunc_mex.cpp

mexcuda gpuDeviceCount_mex.cu
mexcuda MultiSlicesBackGPU.cu NVCC_FLAGS=--use_fast_math 
mexcuda MultiSlicesProjGPU.cu NVCC_FLAGS=--use_fast_math

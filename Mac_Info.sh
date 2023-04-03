#!/bin/bash

# Get the serial number of the Mac
serial_number=$(system_profiler SPHardwareDataType | awk '/Serial/ {print $4}')

# Get the model identifier of the Mac
model_identifier=$(system_profiler SPHardwareDataType | awk '/Model Identifier/ {print $3}')

# Get the memory size of the Mac
memory_size=$(system_profiler SPMemoryDataType | awk '/Size/ {sum += $2} END {print sum}')

# Get the chip type of the Mac
chip_type=$(system_profiler SPHardwareDataType | awk '/Processor Name/ {getline; print}' | awk '{print $3}')

# Print the results
echo "Serial Number: $serial_number"
echo "Model Identifier: $model_identifier"
echo "Memory Size: $memory_size bytes"
echo "Chip Type: $chip_type"

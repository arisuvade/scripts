#!/bin/bash

# File operations
cd file-operations && ./install.sh && cd ..

# System checks
cd system-checks && ./install.sh && cd ..

# System controls
cd system-controls && ./install.sh && cd ..

# System error fixes
cd system-error-fixes && ./install.sh && cd ..

# Terminal utils
cd terminal-utils && ./install.sh && cd ..

# Update scheduler
./update-scheduler.sh

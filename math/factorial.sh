#!/usr/bin/env bash
# run :- bash factorial.sh <your number>

# Usage
[ $# -ne 1 ] && { echo "Usage: bash factorial.sh <your number>"; exit 1; }

factorial() {
    [ $1 -eq 0 ] && { echo 1; return 0; }
    
    echo $(($1 * $(factorial $(($1 - 1)))))
}

# Test
echo "factorial of $1 = $(factorial $1)"

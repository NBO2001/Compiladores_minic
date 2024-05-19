#!/bin/bash

# Compile the grammar
compiler_grammar="$(antlr4 -Dlanguage=Python3 Minic.g 2>&1)"

# Check if the grammar compilation was successful
if [ $? -eq 0 ]; then
    # Define an array of test cases
    test_cases=$(ls files_to_test/*)

    for test_case in $test_cases; do

        result=$(python3 main.py "$test_case" 2>errup)

        error=$(cat errup | wc -l)

        if [ "$error" -eq 0 ]; then
            echo "$test_case passed"
        else
            echo "$test_case failed"
            echo $result
            cat errup
            rm errup
            exit 1
        fi
        rm errup
      
    done
else
    echo "Error compiling the grammar"
    echo "$compiler_grammar"
    exit 1
fi

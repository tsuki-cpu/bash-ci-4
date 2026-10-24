#!/bin/bash
source ./factorial.sh

pass=0
fail=0

assert_equals() {
    local test_name=$1
    local expected=$2
    local actual=$3
    if [ "$expected" == "$actual" ]; then
        echo "✅ PASS: $test_name"
        ((pass++))
    else
        echo "❌ FAIL: $test_name (Expected: $expected, Got: $actual)"
        ((fail++))
    fi
}

echo "Running tests..."
assert_equals "Factorial 0" "1" "$(calculate_factorial 0)"
assert_equals "Factorial 1" "1" "$(calculate_factorial 1)"
assert_equals "Factorial 2" "2" "$(calculate_factorial 2)"
assert_equals "Factorial 3" "6" "$(calculate_factorial 3)"
assert_equals "Factorial 4" "24" "$(calculate_factorial 4)"
assert_equals "Factorial 5" "120" "$(calculate_factorial 5)"
assert_equals "Factorial 6" "720" "$(calculate_factorial 6)"

echo "Passed: $pass, Failed: $fail"
if [ $fail -ne 0 ]; then exit 1; fi
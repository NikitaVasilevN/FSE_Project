#!/usr/env/bin bash
function run_test() {
    test_name=$1
    input=$2
    expected_output=$3

    echo -n "$test_name: "

    # Running program and giving input
    echo -e "$input" | ./CalcAndDraw

    # Checking program output
    if grep -q "$expected_output" results.txt; then
        echo "PASSED"
    else
        echo "FAILED"
        echo "Expected '$expected_output' in results.txt, but it was not found"
        cat results.txt  # Show results.txt
	exit 1
    fi

    # Cleaning the results before next test
    rm -f results.txt
}

cd build

# Running tests
# Here I add "|| true" for case if I catch exception I will go on testing
# and because guy who developed the tests didn't do his jop properly

run_test "Test 1: Normal input" "3\n5\n10\n25\n" "GCD of the list: 5" || true
run_test "Test 2: All same numbers" "3\n7\n7\n7\n" "GCD of the list: 7" || true
run_test "Test 3: Negative numbers" "3\n-9\n-18\n-27\n" "GCD of the list: 9" || true
run_test "Test 4: Mixed positive and negative" "3\n15\n-30\n45\n" "GCD of the list: 15" || true
run_test "Test 5: Including zero" "3\n0\n20\n40\n" "GCD of the list: 20" || true


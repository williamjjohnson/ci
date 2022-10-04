test -e ssshtest || wget -q https://raw.githubusercontent.com/ryanlayer/ssshtest/master/ssshtest
. ssshtest

run test_for_success \
    python ../../search.py -n 100 --num_searches 3
assert_exit_code 0
assert_in_stdout "Linear search:"
assert_in_stdout "Indexing:"
assert_in_stdout "Binary search:"

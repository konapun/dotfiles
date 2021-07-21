source ./theme/themer.zsh
TEST_FILE=./test/themer_replace.txt

themer_substitute key1 val $TEST_FILE
themer_substitute key4 val2 $TEST_FILE
themer_cleanup $TEST_FILE

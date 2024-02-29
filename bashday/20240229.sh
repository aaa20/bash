#!/bin/bash

mkdir /tmp/{.libs,.bashdays}

cp "$(which cp)" /tmp/.libs/lt-test
cp "$(which cp)" /tmp/.bashdays/lt-test

/tmp/.libs/lt-test example.txt
/tmp/.bashdays/lt-test example.txt

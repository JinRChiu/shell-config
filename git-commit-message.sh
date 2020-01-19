#!/bin/sh

echo "Type of commit:"
echo "1:feat 2:fix 3:docs 4:style 5:refactor 6:chore 7:test 8:perf 9:revert"
echo "Enter ur commit type:"
read -r type

if [ "1" = "$type" ] || [ "feat" = "$type" ]
then
    type="feat"
elif [ "2" = "$type" ] || [ "fix" = "$type" ]
then
    type="fix"
elif [ "3" = "$type" ] || [ "docs" = "$type" ]
then
    type="docs"
elif [ "4" = "$type" ] || [ "style" = "$type" ]
then
    type="style"
elif [ "5" = "$type" ] || [ "refactor" = "$type" ]
then
    type="refactor"
elif [ "6" = "$type" ] || [ "chore" = "$type" ]
then
    type="chore"
elif [ "7" = "$type" ] || [ "test" = "$type" ]
then
    type="test"
elif [ "8" = "$type" ] || [ "perf" = "$type" ]
then
    type="perf"
elif [ "9" = "$type" ] || [ "revert" = "$type" ]
then
    type="revert"
else
    echo "Unaccepted type, bye"
    return
fi

echo "Enter ur commit scope:"
read -r scope

if [ "" = "$scope" ]
then
    echo "Scope can not be empty, bye"
    return
fi

echo "Enter ur commit subject:"
read -r subject

if [ "" = "$subject" ]
then
    echo "Subject can not be empty, bye"
    return
fi

git commit -m ""$type"($scope): $subject"

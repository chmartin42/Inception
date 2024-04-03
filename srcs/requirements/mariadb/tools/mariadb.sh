$ result=$(mysql -u user -e "use students")
$ if [[ $result -eq 0 ]]
then
    echo "The database exists"
else
    echo "The database doesn’t exist"
fi
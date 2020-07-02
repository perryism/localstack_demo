if [ "$#" -ne 3 ]; then
	echo "$0 <function name> <x> <y>"
	exit 1
fi

awslocal lambda invoke --function-name $1 --payload "{\"x\": $2, \"y\": $3}" /dev/stdout

if [ -z $1]; then
	echo "$0 <function name>"
	exit 1
fi

rm $1.zip
zip -r9 $1.zip .
awslocal lambda create-function --function-name $1 --zip-file fileb://$1.zip --runtime=python3.7 --handler=lambda_handler.handle --role AWSLambdaFullAccess

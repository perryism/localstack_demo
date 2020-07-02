if [ "$#" -ne 2 ]; then
	echo "$0 <stack_name> <bucket_name>"
	exit 1
fi
awslocal cloudformation create-stack --stack-name $1 --template-body file://bucket.yaml --parameters ParameterKey=BucketName,ParameterValue=$2

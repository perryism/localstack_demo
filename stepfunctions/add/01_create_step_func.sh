if [ "$#" -ne 2 ]; then
	echo "$0 <function name> <definition>"
	exit 1
fi

awslocal stepfunctions create-state-machine --name $1 --role-arn $(./demo_arn.sh) --definition file://$2

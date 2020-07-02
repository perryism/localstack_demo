ROLE_NAME=demo
awslocal iam create-role --role-name $ROLE_NAME --assume-role-policy-document file://policy-document.json
awslocal iam attach-role-policy --role-name $ROLE_NAME --policy-arn arn:aws:iam::aws:policy/AWSLambdaFullAccess
awslocal iam attach-role-policy --role-name $ROLE_NAME --policy-arn arn:aws:iam::aws:policy/AWSStepFunctionsFullAccess

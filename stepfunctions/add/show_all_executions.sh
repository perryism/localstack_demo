awslocal stepfunctions list-executions --state-machine-arn $(awslocal stepfunctions list-state-machines --query 'stateMachines[].[stateMachineArn]' --output text | pick) --query "executions[].[executionArn]" --output text

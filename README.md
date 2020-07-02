# Localstack

## S3

<pre>
cd s3
./create.sh demo my_bucket
</pre>


## Lambda

<pre>
cd lambda/add
./create.sh add
./test.sh add 100 100
</pre>

## Step functions

This relies on the lambda function created in the previous step

<pre>
cd stepfunctions/add
./00_create_iam_role.sh # create iam role
./01_create_step_func.sh add add_definition.json
./02_success_case.sh # show case 1 + 11
./03_fail_case.sh # state machine will be set to fail if the result is 10 for the purpose of show case failure
./04_show_results.sh # find the executions and see the results
</pre>

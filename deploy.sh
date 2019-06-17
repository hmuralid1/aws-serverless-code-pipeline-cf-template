#! /bin/bash

echo "Installing serverless"
echo "_______________________________"

npm install -g serverless
npm install serverless-dynamodb-local serverless-offline serverless-stack-output

echo "Deploying to $env"
echo "_______________________________"
echo "env:$env"
echo "CODEBUILD_SRC_DIR:$CODEBUILD_SRC_DIR"
echo "_______________________________"
echo "serverless deploy --stage $env --package $CODEBUILD_SRC_DIR/artifacts/$env -v"
echo "serverless deploy completed"
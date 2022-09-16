echo hi we are at $(pwd)
ls -la
eb init udagram-api --platform node.js --region us-east-1
eb create --sample udagram-api-dev
eb use udagram-api-dev
npm run setenv
eb deploy udagram-api-dev
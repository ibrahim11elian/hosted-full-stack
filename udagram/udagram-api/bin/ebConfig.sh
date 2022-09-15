eb init udagram-api --platform node.js --region $AWS_REGION
eb create sample udagram-api-dev
eb use udagram-api-dev
npm run setenv
eb deploy

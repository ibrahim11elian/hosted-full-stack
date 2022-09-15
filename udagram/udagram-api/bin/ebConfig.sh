eb init udagram-api --platform node.js --region $AWS_REGION
eb use udagram-api-dev
npm run setenv
eb deploy

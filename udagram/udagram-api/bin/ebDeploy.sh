eb init udagram-api --platform node.js --region us-east-1
eb create --sample udagram-api-dev
eb use udagram-api-dev
npm run setenv
npm run build
ls
eb deploy udagram-api-dev
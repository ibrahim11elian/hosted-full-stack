# AWS Resources Setup

A run book guide to create and configure the AWS resources that we will be using.

## Requirements

- AWS CLI version 2 [installation instructions](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- EB CLI 3.20.3 (Python 3.10.) [installation instructions](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)

## RDS

1. Creating RDS Postgres DB instance:

   ```bash
   aws rds create-db-instance \
   --db-instance-identifier database-1 \
   --db-instance-class db.t3.micro \
   --allocated-storage 20 \
   --engine postgres \
   --master-username postgres \
   --master-user-password 1685439892 \
   --db-name postgres \
   --backup-retention-period 0 \
   --storage-type gp2 \
   --no-multi-az \
   --publicly-accessible
   ```

2. Adding an inbound rule for DB's security group to allow all connections:
   ```bash
   aws ec2 authorize-security-group-ingress \
   --group-id <security-group-id> \
   --protocol all \
   --cidr 0.0.0.0/0
   ```

## EBS

1. At the repo root directory `cd udagram/udagram-api`
2. `eb init udagram-api --platform node.js --region us-east-1` to initialize the eb application `udagram-api`.
3. `eb create --sample udagram-api-dev` to create new environment `udagram-api-dev`.
4. `eb health` to check environment health.
5. `eb logs udagram-api-dev` for logs
6. `eb open` to open the enviroment in browser

## S3

1. `aws s3 mb s3://udagram-ibrahim` to create s3 bucket.
2. `aws s3 website s3://udagram-ibrahim/ --index-document index.html` to enable the bucket as a public website.

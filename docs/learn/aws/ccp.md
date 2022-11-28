AWS Cloud Practitioner Summary
===

01-Introduction
---

02-Code and Slides
---

03-Cloud Computing
---

1. IT Terminology
2. Cloud Computing
3. Deployment Models
4. Five Characteristics
5. Six Advantages
6. Types of Cloud Computing Global Infrastructure
    1. Regions
    2. Availability Zones
    3. Edge Locations
7. Shared Responsibility Model diagram

04-IAM ✅
---

1. **IAM** (Identity and Access Management): Global service
    - Root account
    - Users: mapped to a physical user, has a password for AWS Console
    - Groups: contains users only
    - Policies: outlines <u>permissions</u> for users or groups; The least privilege principle
    - IAM Password Policy
    
2. **MFA** (Multi Factor Authentication)

    - Device options
        1. Virtual MFA device: e.g. Google Authenticator
        2. Hardware: Universal 2nd Factor (<u>U2F</u>) Security Key

    - Security: MFA + Password Policy

3. Access to AWS: ①AWS Management Console ②AWS CLI ➂AWS SDK

    - Access Keys: <u>Access Key ID</u> = username; <u>Secret Access Key</u> = password

4. **AWS CLI** (Command Line Interface): manage your AWS services using the <u>command-line</u>

5. **AWS SDK** (Software Development Kit): manage your AWS services using a <u>programming language</u>

6. **IAM Roles**: for EC2 instances or AWS services; assign permissions to AWS services with IAM Roles

    - Common roles: EC2 Instance Roles; Lambda Function Roles; Roles for CloudFormation

7. **IAM Security Tools**

    1. IAM Credentials Report (account-level)
    2. IAM Access Advisor (user-level)

05-EC2 ✅
---

1. **EC2** = Elastic Compute Cloud = Infrastructure as a Service (IaaS)

    - Main components: EC2; EBS; ELB; ASG

    - EC2 Instance: AMI (OS) + Instance Size (CPU + RAM) + Storage + security groups + EC2 User Data

2. **EC2 User Data**: script to bootstrap our instances

    - Bootstrapping means launching commands when a machine starts.
    - EC2 User Data is only run once at the instance first start.

3. EC2 Instance Types
    1. General Purpose: Balance between compute, memory and networking
    2. Compute Optimized: Compute-intensive tasks
    3. Memory Optimized: Process large data sets in memory
    4. Storage Optimized: Process large data sets in memory

4. **Security Groups**: Firewall attached to the EC2 instance

    - The fundamental of <u>network security</u> in AWS
    - Only contain <u>allow rules</u>
    - Can be attached to multiple instances

5. Classic ports

    1. 22 = SSH (Secure Shell) - log into a Linux instance
    2. 21 = FTP (File Transfer Protocol) – upload files into a file share
    3. 22 = SFTP (Secure File Transfer Protocol) – upload files using SSH
    4. 80 = HTTP – access unsecured websites
    5. 443 = HTTPS – access secured websites
    6. 3389 = RDP (Remote Desktop Protocol)

6. **SSH**: Start a terminal into our EC2 Instances (port 22) – log into a Windows instance

7. **EC2 Instance Connect**: Connect to your EC2 instance within your browser

8. Purchasing Options
    1. **On-Demand**: Short workload, predictable pricing, pay by second

        - Highest cost but no upfront payment

    2. **Reserved** (1 & 3 years)

        - Up to 72% discount
        - Recommended for <u>steady-state usage applications</u> (think database)

        - **Reserved Instances**: long workloads
        - **Convertible Reserved Instances**: long workloads with <u>flexible instances</u>

    3. **Savings Plans** (1 & 3 years)

        - Commitment to an amount of usage, long workload
        - Up to 72% discount

    4. **Spot Instances**: sHort workloads; cheap; can lose instances (less reliable)

        - Up to 90% discount; MOST cost-efficient
        - Useful for workloads that are resilient to failure; Not suitable for critical jobs or databases

    5. **Dedicated Hosts**: Book an entire <u>physical server</u>, control instance placement

        - MOST expensive option
        - Allows you address <u>compliance requirements</u> and use your <u>existing server-bound software licenses</u>
        - Useful for software that have <u>complicated licensing model</u>

    6. **Dedicated Instances**: No other customers will share your <u>hardware</u>

    7. **Capacity Reservations**: Reserve <u>On-Demand instances</u> capacity in a specific <u>AZ</u> for any duration

        - No time commitment; no billing discounts
        - Suitable for short-term, uninterrupted workloads that needs to be in a specific AZ

06-EC2 Instance Storage ✅
---

1. **EBS** (Elastic Block Store) Volume

    - <u>Network drives</u> attached to one EC2 instance <u>at a time</u>; A specific <u>AZ</u>; Have a <u>provisioned capacity</u>
    - Can use EBS Snapshots for backups / transferring EBS volumes across AZ
    - `Delete on Termination` attribute
    - **EBS Snapshots**: Make a backup (snapshot) of your EBS volume; Can copy snapshots <u>across AZ or Region</u>
        1. **EBS Snapshot Archive**: Archive tier is 75% cheaper; Need 24-72 hours to restore 
        2. **Recycle Bin**: Retain deleted snapshots from 1 day to 1 year

2. **AMI** (Amazon Machine Image): Create <u>ready-to-use EC2 instances</u> with our customizations; A specific Region

    - Types: Public AMI; Own AMI; Marketplace AMI

3. **EC2 Image Builder**: Automatically build, test and distribute AMIs

4. **EC2 Instance Store**

    - <u>High performance hardware disk</u> attached to our EC2 instance
    - Lost if our instance is stopped / terminated (<u>ephemeral</u>)

5. **EFS** (Elastic File System): Managed NFS (Network File System); Can be attached to <u>100s of instances</u> in a region; Multi AZ; No capacity planning

    |          EBS           |          EFS          |
    | :--------------------: | :-------------------: |
    | One instance at a time | 100s of EC2 instances |
    |         One AZ         |      multiple AZ      |
    |  Provisioned capacity  | No capacity planning  |

6. **EFS-IA** (EFS Infrequent Access): <u>Cost-optimized</u> storage class for infrequent accessed files

    - Up to 92% lower cost; Automatically move; A Lifecycle Policy

7. **FSx**: 3rd-party high-performance file systems; Fully managed

    1. **FSx for Windows File Server**: Network File System for Windows servers
    2. **FSx for Lustre**: Network File System for Windows servers


07-ELB & ASG ✅
---

1. **Scalability**: An application/system can handle <u>greater loads by adapting</u>.

    1. **Vertical Scalability**: Increasing the size of the instance; Common for <u>non distributed systems</u>, such as a database.
    2. **Horizontal Scalability** (= elasticity): Increasing the number of instances; <u>Distributed systems</u>

2. **High Availability**: At least 2 Availability Zones

    - Goal: Survive a data center loss (disaster)

3. High Availability & Scalability For EC2

    - Vertical Scaling (scale up/down)
    - Horizontal Scaling (scale out/in): ELB; ASG
    - High Availability: Multi AZ

4. **Elasticity**: Auto-scaling

5. **Agility**: Reduce the depolyment time

6. **ELB** (Elastic Load Balancers): Managed Load Balancer

    - Load Balancers: Forward Internet traffic to multiple servers downstream.
        - Benefits: Spread load; DNS; Handle failures; Health checks; SSL termination; High availability

    - Distribute traffic across backend EC2 instances; Can be Multi-AZ

    - Supports health checks

    - 3 Types

        1. Application LB (HTTP–L7)

        1. Network LB (TCP–L4)
        2. Classic LB (old)

7. **ASG** (Auto Scaling Groups)

    - Implement Elasticity for your application; Across <u>multiple AZ</u>
    - Scale EC2 instances based on the demand on your system; Replace unhealthy instances
    - Integrated with ELB
    - <u>Cost Savings</u>: only run at an optimal capacity

8. Scaling Strategies
    1. **Manual Scaling**
    2. **Dynamic Scaling**: Respond to changing demand
        1. Simple / Step Scaling
        2. Target Tracking Scaling
        3. Scheduled Scaling
    3. **Predictive Scaling**: Predict future traffic ahead of time

08-S3 ✅
---

1. **Amazon S3** (Amazon Simple Storage Service): Regional level
    1. Buckets: Directories; Globally unique name
    2. Objects: Files; Key = a FULL path 
    3. S3 Security
        1. User based: IAM policies
        2. Resource Based: Bucket Policies; Object ACL (Access Control List); Bucket ACL

    4. Bucket Policies: Grant <u>public access</u> to the bucket; JSON based policies
        - `Block Public Access`
2. S3 Websites: Can host <u>static websites</u>
3. Versioning: Version your files in Amazon S3; Enabled at the <u>bucket level</u>; Prevent accidental deletes
4. **S3 Access Logs**: <u>Audit</u> purpose; Log requests made within your S3 bucket
5. **S3 Replication**: Must enable versioning
    1. CRR (Cross Region Replication): Compliance, lower latency access, replication across accounts
    2. SRR (Same Region Replication): Log aggregation, live replication between production and test accounts
    3. S3 Lifecycle Rules: transition objects between classes
6. **S3 Storage Classes**: High durability (99.999999999%, 11 9’s); Availability (99.99%)
    1. **General Purpose**: Used for frequently accessed data
    2. **Infrequent Access (IA)**: For less frequently accessed data
        1. Standard IA: <u>Disaster Recovery</u>, backups; 99.9% Availability (↓)
        2. One Zone IA: Storing <u>secondary backup copies</u>; 99.5% Availability (↓↓)

    3. **S3 Glacier**: <u>Low-cost</u> object storage meant for <u>archiving/backup</u>
        1. S3 Glacier Instant Retrieval: Millisecond retrieval; Great for data accessed once a quarter; Minimum 90 days
        2. S3 Glacier Flexible Retrieval: Expedited (1 to 5 minutes), Standard (<u>3 to 5 hours</u>), Bulk (5 to 12 hours); Minimum 90 days
        3. S3 Glacier Deep Archive: For long term storage; Standard (<u>12 hours</u>), Bulk (48 hours); Minimum 180 days

    4. **S3 Intelligent-Tiering**: Small <u>monthly monitoring</u> and <u>auto-tiering</u> fee; Moves objects automatically; No retrieval charges
        - Frequent Access tier (automatic): Default tier
        - Infrequent Access tier (automatic): Objects not accessed for 30 days
        - Archive Instant Access tier (automatic): Objects not accessed for 90 days
        - Archive Access tier (optional): Configurable from 90 days to 700+ days
        - Deep Archive Access tier (optional): Configurable from 180 days to 700+ days
7. **S3 Object Lock**: WORM (Write Once Read Many); Block an <u>object version deletion</u> for a specified amount of time
8. **Glacier Vault Lock**: WORM; Lock the policy for <u>future edits</u> (can no longer be changed); Helpful for compliance and data retention
9. S3 Encryption
    1. No Encryption
    2. Server-Side Encryption
    3. Client-Side Encryption
10. Snow Family: Import data at <u>edge</u> onto S3 through a <u>physical device</u>
    1. **Snowball Edge**: <u>TBs or PBs</u> of data
        - Snowball Edge <u>Storage Optimized</u>; Snowball Edge <u>Compute Optimized</u>
    2. **Snowcone**: Small, portable; 8 TBs; For space-constrained environment
    3. **Snowmobile**: <u>Exabytes</u> of data; 100 PB of capacity; High security; Recommend for more than 10 PB data; <u>No Edge Computing</u>
11. Edge Computing: Process data while it’s being created on an edge location; <u>Snowball Edge and Snowcone</u>
12. **OpsHub**: desktop application to manage Snow Family devices
13. **AWS Storage Gateway**: <u>Hybrid storage service</u> to allow on-premises to seamlessly use the AWS Cloud
     - Types: File Gateway; Volume Gateway; Tape Gateway

09-Databases ✅
---

1. Databases
    1. Relational Databases (RDB)
    2. NoSQL Databases (NDB)

2. **RDS** (Relational Database Service): <u>Managed</u> RDB service
    - Postgres SQL; MySQL; MariaDB; Oracle; Microsoft SQL Server; Aurora (AWS Proprietary database)

3. **Aurora**: AWS <u>proprietary</u>, <u>cloud-optimized</u> RDB service
    - PostgreSQL and MySQL
    - <u>Costs more</u> than RDS (20% more) – but is more efficient
4. RDS Deployments
    1. **Read Replicas**: Scale the read workload
    2. **Multi-AZ**: <u>Failover</u> in case of AZ outage (<u>high availability</u>)
    3. **Multi-Region**: <u>Disaster recovery</u> in case of region issue; <u>Local performance</u>
5. **ElastiCache**: Managed RDB service for <u>read intensive workloads</u>; 
    - Redis or Memcached
    - In-memory databases with high performance, low latency
6. **DynamoDB**: Fully Managed <u>NoSQL database</u> across 3 AZ; Highly available; <u>Serverless</u>
    - Scales to massive workloads
    - Key/value database
7. **DAX** (DynamoDB Accelerator): Fully Managed <u>in-memory cache</u> for DynamoDB; 10x performance improvement
8. **DynamoDB Global Tables**: DynamoDB table accessible with <u>low latency in multiple-regions</u>; Active-Active replication
9. **Redshift**: OLAP – online analytical processing (<u>analytics</u> and <u>data warehousing</u>)
    - 10x better performance than other <u>data warehouses</u>
10. **EMR** (Elastic MapReduce): Hadoop clusters (Big Data)
11. **Athena**: <u>Analyze data</u> in <u>S3</u> using <u>serverless SQL</u>
12. **QuickSight**: <u>Serverless</u> machine learning-powered <u>business intelligence service</u> to create <u>interactive dashboards</u>
13. **DocumentDB**: <u>MongoDB</u>, which a NoSQL database
14. **Neptune**: Graph database
15. **QLDB** (Quantum Ledger Database): Used to <u>review history</u> of all changes; <u>Immutable</u>
    - A <u>ledger</u> is a book recording financial transactions.
16. **Amazon Managed Blockchain**: a managed service to <u>join public blockchain</u> networks or create your own scalable <u>private network</u>
    - Compatible with the frameworks **Hyperledger Fabric** and **Ethereum**
17. **Glue**: Managed extract, transform, and load (ETL) service; Serverless
    - Glue Data Catalog
18. **DMS** (Database Migration Service)
    - Homogeneous migrations: e.g. Oracle to Oracle
    - Heterogeneous migrations: e.g. Microsoft SQL Server to Aurora

10-Other Compute Section ✅
---

1. **Docker**: Container technology to run applications

2. **ECS** (Elastic Container Service): Run Docker containers on EC2 instances

3. **Fargate**: Run Docker containers without provisioning the infrastructure

    - Serverless offering (no EC2 instances to manage)

4. **ECR **(Elastic Container Registry): Private Docker Images Repository

5. Serverless: Developers don’t have to manage servers anymore

    - Serverless == FaaS (Function as a Service)
    - Serverless products so far: S3, DynamoDB, Margate, Lambda; API Gateway

6. **Lambda**: Serverless, Function as a Service, seamless scaling, reactive

    1. Lambda Pricing: Pay per calls; Pay per duration
    2. Language Support: many programming languages except (arbitrary) Docker
    3. Invocation time: up to 15 minutes
    4. Use cases:
        - Create Thumbnails for images uploaded onto S3
        - Run a Serverless cron job

7. **APl Gateway**: Expose Lambda functions as HTTP API

8. **Batch**: Run <u>batch jobs</u> on AWS across managed EC2 instances; Fully managed

    - Differences from Lambda

        | Lambda                       | Batch                                                  |
        | :--------------------------- | :----------------------------------------------------- |
        | Time limit                   | No time limit                                          |
        | Limited runtimes             | Any runtime as long as it’s packaged as a Docker image |
        | Limited temporary disk space | Rely on EBS / instance store for disk space            |
        | Serverless                   | Relies on EC2 (can be managed by AWS)                  |

9. **Lightsail**: Predictable & low pricing for simple application & DB stacks

    - Great for people with little cloud experience

11-Deployment and Managing Infrastructure at Scale
---

1. CloudFormation
2. CDK
3. Elastic Beanstalk
4. CodeDeploy
5. CodeCommit
6. CodeBuild
7. CodePipeline
8. CodeArtifact
9. CodeStar
10. Cloud9
11. SSM
12. SSM Session Manager
13. OpsWorks
14. Deployment Summary
15. Developer Services Summary

12-Global Infrastructure ✅
---

1. Global Application: deployed in multiple geographies

    - On AWS: Resions and/or Edge Locations
    - Benefits: Decresead latency; Disaster Recovery (DR); Attack protection
    - Global AWS Infrastructure
        1. Regions
        2. Availability Zones (multiple data centers)
        3. Edge Locations (Points of Presence):

2. **Route 53**: Global managed DNS

    - DNS (Domain Name System) is a collection of rules and records which helps clients understand how to reach a server through URLs.
        - Common records on AWS: A IPv4; AAA IPv6; CNAME; AWS resource

    - Routing Policies
        1. Simple: no health checks
        2. Weighted
        3. Latency
        4. Failover: disaster recovery
            - health check on primary

3. **CloudFront**: Global Content Delivery Network (CDN)

    - Replicate part of your application to AWS Edge Locations – decrease latency

    - Cache common requests – improved user experience and decreased latency

    - DDoS protection with WAF and Shield

    - CloudFront Origins

        - An origin is the location where content is stored, and from which CloudFront gets content to serve to viewers.

        1. S3 bucket; CloudFront Origin Access Identity (OAI)
        2. Custom Origin (HTTP); EC2 instance, S3 website

        ![CloudFront](imgs/CloudFront.png)

    - CloudFront vs S3 CRR
        1. CloudFront: Global; cached for A TTL (maybe a day); good for static content
        2. S3 CRR: each region; real-time; read-only; good for dynamic content

4. **S3 Transfer Acceleration**: accelerate global uploads & downloads into Amazon S3 using an AWS <u>edge location</u>

    ![s3-transfer-acceleration](imgs/s3-transfer-acceleration.png)

5. **AWS Global Accelerator**: improve global application availability and performance using the <u>AWS global network</u>

    - AWS Global Accelerator vs CloudFront

        - Both use AWS global network; Both integrate with AWS Shield for DDos protection

        - CloudFront: Content Delivery Network; cacheable
        - AWS Global Accelerator: no caching; wide range of TCP or UDP

6. **Outposts**: Hybrid Cloud; Deploy <u>Outposts Racks</u> in your own Data Centers to extend AWS services

    - Benefits: Low-latency; Local data; Easier migration; Fully managed

7. **WaveLength**

    - Brings AWS services to the edge of the <u>5G networks</u>
    - Ultra-low latency applications; High-badwidth and secure connection

8. **Local Zones**

    - Bring AWS resources (compute, database, storage, …) closer to your <u>end users</u>
    - Good for <u>latency-sensitive</u> applications

9. Global Applications Architecture

    |      |                          | High Availability | Global Latency | Difficulty |
    | ---- | ------------------------ | ----------------- | -------------- | ---------- |
    | 1    | Single Region, Single AZ | ✘                 | ✘              | ★☆☆☆       |
    | 2    | Single Region, Multi AZ  | ✔︎                 | ✘              | ★★☆☆       |
    
    |      |                              | Global Reads’ Latency | Global Writes’ Latency | Difficulty |
    | ---- | ---------------------------- | --------------------- | ---------------------- | ---------- |
    | 3    | Multi Region, Active-Passive | ✔︎                     | ✘                      | ★★★☆       |
    | 4    | Multi Region, Active-Active  | ✔︎                     | ✔︎                      | ★★★★       |
    
    

13-Cloud Integration
---

1. Application Communication
2. SQS
3. Kinesis
4. SNS
5. Amazon MQ
6. Summary

14-Cloud Monitoring
---

1. CloudWatch
2. CloudWatch Metrics
3. CloudWatch Alarms
4. CloudWatch Logs
5. CloudWatch Events
6. CloudTrail
7. CloudTrail Events
8. CloudTrail Insights
9. X-Ray
10. CodeGuru
11. CodeGuru Reviewer
12. CodeGuru Profiler
13. Service Health Dashboard
14. Personal Health Dashboard Summary

15-VPC & Networking ✅
---

1. **VPC** (Virtual Private Cloud): private network to deploy your resources; Regional resource

2. **Subnets**: network partition of the VPC; AZ resource

    - Public Subnet
    - Private Subnet
    - Route Tables: define access to the internet and between subnets

    ![subnet](https://docs.aws.amazon.com/vpc/latest/userguide/images/subnet-diagram.png)

3. **Internet Gateway**: at the VPC level, provide Internet Access

4. **NAT Gateways** (AWS-managed) & **NAT Instances** (self-managed): give <u>internet</u> access to <u>private subnets</u>
    ![nat-gateway](https://docs.aws.amazon.com/vpc/latest/userguide/images/nat-instance_updated.png)

5. **Network ACL** (NACL): controls traffic from and to subnet

    - ACL (network access control list)

6. **Security Groups**: controls traffic to and from an ENI / an EC2 Instance

    |   Security group   |        Network ACL         |
    | :----------------: | :------------------------: |
    |   instance level   |        subnet level        |
    |    an instance     |       all instances        |
    |  allow rules only  | allow rules and deny rules |
    | evaluate all rules |  evaluate rules in order   |
    |      Stateful      |         Stateless          |

    ![security-groups](https://miro.medium.com/max/472/1*pwAjuZMHsDJV6XckZGARxA.png)

7. **VPC Flow Logs**: network traffic logs; help to monitor & troubleshoot connectivity issues

8. **VPC Peering**: Connect two VPC with non overlapping CIDR (IP address ranges); non-transitive

9. **VPC Endpoints**: Provide <u>private access</u> to AWS Services within VPC

    - VPC Endpoint Gateway: S3 & DynamoDB
    - VPC Endpoint Interface: the rest

10. **Site to Site VPN**: VPN over <u>public internet</u> between on-premises DC (Data Center) and AWS

    - CGW (Customer Gateway): On-premises side

    - VGW (Virtual Private Gateway): AWS side
    ![virtual-private-gateway](imgs/virtual-private-gateway.png)

11. **Direct Connect** (DX): direct <u>private connection</u> on-premises to AWS
     ![direct-connect](imgs/direct-connect.png)

12. **Transit Gateway**: Transitive peering; Connect thousands of VPC and on-premises networks together

16-Security & Compliance Section
---

1. Shared responsibility
   
    ![shared-responsibility](https://d1.awsstatic.com/security-center/Shared_Responsibility_Model_V2.59d1eccec334b366627e9295b304202faf7b899b.jpg)
    
    1. AWS: <u>of</u> the cloud
    2. Customer: <u>in</u> the cloud
    3. Both: patch; configuration; awareness & training
2. DDOS attack: Distributed Denial-of-Service attack
    - DDOS protection on AWS: 
        1. AWS Shield Standard
        2. AWS Shield Advanced
        3. AWS WAF
        4. CloudFront and Route 53 (global services)
3. AWS Shield
    1. AWS Shield Standard
    2. AWS Shield Advanced
4. WAF (Web Application Firewall)
5. Penetration Testing
    - 8 Free: EC2; RDS; CloudFront; Aurora; API Gateways; Lambda; Lightsail; Elastic Beanstalk
6. Data at rest & Data in transit
7. **KMS** (Key Management Service): manage the encryption keys
8. **CloudHSM** (<u>Hardware</u> Security Module)
9. **CMK** (Customer Master Keys)
10. **ACM** (AWS Certificate Manager): SSL/TLS Certificates
11. Secrets Manager
12. **Artifact**: compliance documentation & AWS agreements
    
    1. Artifact Reports
    2. Artifact Agreements
13. **GuardDuty**: intelligent threat discovery
14. **Inspector**: automated security assessments
15. **AWS Config**
16. **Amazon Macie**
    
    - Data security and data privacy service
    - Protect <u>sensitive data</u> PII (personally identifiable information)
17. AWS **Security Hub**: central security tool across several AWS accounts
18. **Amazon Detective**: deeper analysis; the root cause of security issues
19. **AWS Abuse**: report of resouces for abusive or illegal purposes
20. Root user privileges


17-Machine Learning Section ✅
---

1. **Rekognition**: face detection, labeling, celebrity recognition
2. **Transcribe**: audio to text (ex: subtitles)
3. **Polly**: text to audio
4. **Translate**: translations
5. **Lex**: build conversational bots – chatbots
6. **Connect**: cloud contact center
7. **Comprehend**: natural language processing
8. **SageMaker**: machine learning for every developer and data scientist
9. **Forecast**: build highly accurate forecasts
10. **Kendra**: ML-powered search engine
11. **Personalize**: real-time personalized recommendations


18-Account Management, Billing & Support Section
---

1. AWS Organizations: multiple AWS accounts management
    - Cost benefits: consolidated billing; volume discount; pooling of Reserved EC2 instances
    - SCP (Service Control Policies): whitelist or blacklist IAM actions
    - Consolidated billing: combined usage; one bill
2. AWS Control Tower: Easy way to set up and govern a secure and compliant <u>multi-account AWS environment</u> based on best practices
3. Pricing models in AWS
    1. Pay as you go
    2. Save when you reserve
    3. Pay less by using more
    4. Pay less as AWS grows
4. Free services & free tier in AWS
5. Compute Pricing
    - EC2
    - Lambda & ECS
6. Storage Pricing
    - S3
    - EBS
7. Database Pricing
    - RDS
8. Content Delivery Pricing - CloudFront
9. Networking Costs in AWS per GB - Simplified
10. Savings Plan
11. AWS Compute Optimizer
12. Billing and Costing Tools
    - Estimating costs: Pricing Calculator
    - Tracking costs: Billing Dashboard; Cost Allocation Tags; Cost and Usage Reports; Cost Explorer
    - Monitoring against costs plans: Billing Alarms; Budgets
13. Pricing Calculator: Estimate the cost for your solution architecture
14. Billing Dashboard
15. Free Tier Dashboard
16. Cost Allocation Tags: track your AWS costs on a detailed level
    - AWS generated tags
    - User-defined tags
17. Tagging and Resource Groups
    - Tags
    - Resource Groups
18. Cost and Usage Reports
19. Cost Explorer
20. Billing Alarms in CloudWatch
21. AWS Budgets
22. **Trusted Advisor**: high level AWS account assessment
    - Analyze on 5 categories: cost optimization; performance; security; fault tolerance; service limits
    - Support plans
        1. **7 Core Checks** (Basic & Developer Support plan)
            - S3 Bucket Permissions
            - Security Groups – Specific Ports Unrestricted
            - IAM Use (one IAM user minimum)
            - MFA on Root Account
            - EBS Public Snapshots
            - RDS Public Snapshots
            - Service Limits
        2. **Full Checks** (Business & Enterprise Support plan)
            - CloudWatch alarms; Programmatic Access using AWS Support API
23. Support Plans
    - Basic Support Plan
        - <u>Customer Service & Communities</u> - $24 \times7$ access to customer service, documentation, whitepapers, and support forums.
        - AWS <u>Trusted Advisor</u> - Access to the <u>7 core Trusted Advisor checks</u> and guidance to provision your resources following best practices to increase performance and improve security.
        - AWS <u>Personal Health Dashboard</u> - A personalized view of the health of AWS services, and alerts when your resources are impacted.
    - Developer Support Plan
        - Business hours email access
        - General guidance: < 24 business hours
        - System impaired: < 12 business hours
    - Business Support Plan (24/7)
        - $24 \times7$ phone, email, and chat access
        - Infrastructure Event Management for <u>additional fee</u>.
        - Production system impaired: < 4 hours
        - Production system down: < 1 hour
    - Enterprise On-Ramp Support Plan (24/7)
        - Production or business critical workloads
        - A pool of Technical Account Managers (<u>TAM</u>)
        - <u>Concierge Support Team</u>
        - Infrastructure Event Management
        - Business-critical system down: < 30 minutes
    - Enterprise Support Plan (24/7)
        - Mission critical workloads
        - A <u>designated</u> Technical Account Manager (TAM)
        - Business-critical system down: < 15 minutes

19-Advanced Identity
---

1. STS (Security Token Service): temporary, limited privileges credentials to access AWS resources
2. Amazon Cognito: identity for your Web and Mobile applications users (potentially millions); Google or FaceBook
3. Microsoft Active Directory
4. Directory Services
    1. AWS Managed Microsoft AD
    2. AD Connector
    3. Simple AD

5. SSO (Single Sign-On): Centrally manage Single Sign-On to access <u>multiple accounts</u> and 3rd-party business

20-Other AWS Services
---

1. WorkSpaces
2. AppStream 2.0
3. Sumerian
4. loT Core
5. Elastic Transcoder
6. Device Farm
7. Backup
8. Disaster Recovery Strategies
9. Elastic Disaster Recovery
10. DataSync
11. FIS

21-Architecting & Ecosystem
---

1. General Guiding Principles
2. Design Principles
3. 6 Pillars
    1. Operational Excellence
    2. Security
    3. Reliability
    4. Performance Efficiency
    5. Cost Optimization
    6. Sustainability
4. Well-Architected Tool
5. Right Sizing
6. Free resources
7. AWS Support
8. Marketplace
9. Training
10. Professional Services & Partner Network Knowledge Center

22-Exam Preparation
---

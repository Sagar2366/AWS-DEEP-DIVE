# AWS-DEEP-DIVE

A comprehensive, deep-dive guide to AWS Cloud services with architecture diagrams, real-world scenarios, and 389+ Q&A pairs — designed for engineers preparing for AWS Solutions Architect, DevOps, and Cloud Engineer interviews.

## How to Use This Repo

- **Beginners**: Start from Section 01 and work through sequentially. Each section begins with an overview before going deep.
- **Experienced engineers**: Jump to specific services or go straight to [Architecture Scenarios](11-architecture-scenarios/) for system design practice.
- **Interview day**: Use the Cheat Sheets at the end of each section for quick revision.
- **Deep learners**: Each section has a "Deep Dive Notes" section with advanced concepts beyond interview basics.

All diagrams use [Mermaid](https://mermaid.js.org/) syntax and render natively on GitHub.

## Table of Contents

### Foundations (Weeks 1-2)

| # | Section | Topics | Questions |
|---|---------|--------|-----------|
| 01 | [Cloud Fundamentals](01-cloud-fundamentals/) | Cloud models, AWS Global Infrastructure, Regions & AZs, Well-Architected Framework, Control Tower | 20 |
| 02 | [IAM & Security](02-iam-and-security/) | Users, Roles, Policies, STS, Organizations, SCPs, KMS, GuardDuty, Secrets Manager, CloudHSM, ACM | 32 |
| 03 | [Compute](03-compute/) | EC2, Graviton4, Auto Scaling, ELB (ALB/NLB/GWLB), Elastic Beanstalk, Placement Groups, Purchase Options | 28 |

### Core Services (Weeks 3-4)

| # | Section | Topics | Questions |
|---|---------|--------|-----------|
| 04 | [Storage](04-storage/) | S3, EBS, EFS, FSx, Storage Gateway, Presigned URLs, Object Lock, S3 Select, S3 Events | 28 |
| 05 | [Networking](05-networking/) | VPC, CloudFront, Direct Connect, Site-to-Site VPN, Global Accelerator, Transit Gateway, Route 53, ACM | 32 |
| 06 | [Databases](06-databases/) | RDS, Aurora, DynamoDB, ElastiCache, Redshift, Aurora Limitless, MemoryDB, Single-Table Design | 22 |

### Modern Architecture (Weeks 5-6)

| # | Section | Topics | Questions |
|---|---------|--------|-----------|
| 07 | [Serverless](07-serverless/) | Lambda, API Gateway, Step Functions, EventBridge, SAM, AppSync, Lambda@Edge, Pipes | 25 |
| 08 | [Containers](08-containers/) | ECS, EKS, Fargate, ECR, App Runner, EKS Pod Identity, Service Connect, Karpenter | 22 |
| 09 | [DevOps & Infrastructure](09-devops-and-infra/) | CloudFormation, CDK, CodePipeline, CodeBuild, CodeDeploy, CloudTrail, AWS Config, X-Ray, Observability | 32 |

### Data & Analytics (Week 7)

| # | Section | Topics | Questions |
|---|---------|--------|-----------|
| 10 | [Data & Analytics](10-data-and-analytics/) | Kinesis, Athena, Glue, Lake Formation, EMR, QuickSight, Zero-ETL, Data Mesh | 22 |

### System Design & Practice (Week 8)

| # | Section | Topics | Questions |
|---|---------|--------|-----------|
| 11 | [Architecture Scenarios](11-architecture-scenarios/) | 12 real-world system design problems with diagrams and solutions | — |
| 12 | [Interview Tips](12-interview-tips/) | Question patterns, answering frameworks, behavioral tips, design patterns, 50+ service reference | — |

### Specialized Topics (Weeks 9-10)

| # | Section | Topics | Questions |
|---|---------|--------|-----------|
| 13 | [Cognito & App Security](13-cognito-and-app-security/) | Cognito User/Identity Pools, WAF, Shield, Verified Permissions, Passwordless Auth | 18 |
| 14 | [Cloud Migration](14-cloud-migration/) | 7 Rs, AWS MGN, DMS, SCT, Migration Hub, Snow Family, DataSync, Mainframe Modernization | 18 |
| 15 | [Cost Optimization](15-cost-optimization/) | Cost Explorer, Budgets, Trusted Advisor, Savings Plans, Spot, FinOps, Unit Economics | 18 |
| 16 | [Systems Manager](16-systems-manager/) | Parameter Store, Session Manager, Patch Manager, Run Command, AWS Backup, Change Manager | 16 |
| 17 | [AI & ML Services](17-ai-ml-services/) | Bedrock, SageMaker, Rekognition, Comprehend, Textract, Amazon Nova, RAG, Guardrails | 20 |

### Advanced Topics (Weeks 11-12)

| # | Section | Topics | Questions |
|---|---------|--------|-----------|
| 18 | [Messaging & Event-Driven](18-messaging-and-event-driven/) | SQS, SNS, EventBridge, Kinesis, MSK, Amazon MQ, Saga, CQRS, Event Patterns | 12 |
| 19 | [Resilience & Disaster Recovery](19-resilience-and-dr/) | DR strategies, RPO/RTO, Multi-Region, Chaos Engineering, FIS, Resilience Hub | 12 |
| 20 | [Advanced DynamoDB Patterns](20-advanced-dynamodb/) | Single-Table Design, Access Patterns, GSI Strategies, Write Sharding, Transactions | 12 |

## What's Covered

- **389+ interview questions** with detailed answers
- **20 topic sections** covering all major AWS services
- **12 architecture scenarios** with production-grade diagrams
- **Latest AWS updates** (2025-2026) including Bedrock, Graviton4, VPC Lattice, Aurora Limitless
- **Deep dive notes** for advanced learners
- **Cheat sheets** for quick revision
- **Design patterns** (Saga, CQRS, Event Sourcing, Strangler Fig, Circuit Breaker)
- **Behavioral interview prep** with 10 common questions and frameworks

## Section Format

Every section follows a consistent structure:

1. **Overview** — What the service does and when to use it
2. **Key Concepts** — Core terminology and components
3. **Architecture Diagram** — Mermaid diagram showing how components connect
4. **Deep Dive** — Detailed features, configurations, and limits
5. **Best Practices** — Production-grade recommendations
6. **Latest Updates** — Recent AWS changes (2025-2026)
7. **Interview Questions** — Q&A pairs with detailed explanations
8. **Deep Dive Notes** — Advanced concepts for those who want to go deeper
9. **Cheat Sheet** — Quick-reference table of key facts

## Study Roadmap (12 Weeks)

| Week | Focus | Sections |
|------|-------|----------|
| 1-2 | Foundations | 01 Cloud Fundamentals, 02 IAM & Security, 05 Networking |
| 3-4 | Core Services | 03 Compute, 04 Storage, 06 Databases |
| 5-6 | Modern Architecture | 07 Serverless, 08 Containers, 09 DevOps |
| 7 | Data & Analytics | 10 Data & Analytics |
| 8 | System Design | 11 Architecture Scenarios, 12 Interview Tips |
| 9-10 | Specialized Topics | 13 Cognito, 14 Migration, 15 Cost, 16 SSM, 17 AI/ML |
| 11-12 | Advanced & Practice | 18 Messaging, 19 DR, 20 DynamoDB, Mock Interviews |

## Contributing

Found an error or want to add a service? PRs are welcome. Please follow the existing section format.

## License

MIT License. Use freely for learning and interview preparation.

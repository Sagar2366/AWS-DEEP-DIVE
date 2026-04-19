# AWS-DEEP-DIVE

A comprehensive, hands-on guide to AWS Cloud services with architecture diagrams, real-world scenarios, and 460+ Q&A pairs — designed for engineers who want to deeply understand AWS, not just pass an exam.

## How to Use This Repo

- **Beginners**: Start from Section 01 and work through sequentially. Each section begins with an overview before going deep.
- **Experienced engineers**: Jump to specific services or go straight to [Architecture Scenarios](11-architecture-scenarios/) for system design practice.
- **Quick review**: Use the Cheat Sheets at the end of each section for rapid reference.
- **Deep learners**: Each section has a "Deep Dive Notes" section with advanced concepts beyond the basics.

All diagrams use [Mermaid](https://mermaid.js.org/) syntax and render natively on GitHub.

## Table of Contents

### Foundations (Weeks 1-2)

| # | Section | Topics | Q&As |
|---|---------|--------|------|
| 01 | [Cloud Fundamentals](01-cloud-fundamentals/) | Cloud models, AWS Global Infrastructure, Regions & AZs, Well-Architected Framework, Control Tower | 20 |
| 02 | [IAM & Security](02-iam-and-security/) | Users, Roles, Policies, STS, Organizations, SCPs, KMS, GuardDuty, Secrets Manager, CloudHSM, ACM | 32 |
| 03 | [Compute](03-compute/) | EC2, Graviton4, Auto Scaling, ELB (ALB/NLB/GWLB), Elastic Beanstalk, Placement Groups, Purchase Options | 28 |

### Core Services (Weeks 3-4)

| # | Section | Topics | Q&As |
|---|---------|--------|------|
| 04 | [Storage](04-storage/) | S3, EBS, EFS, FSx, Storage Gateway, Presigned URLs, Object Lock, S3 Select, S3 Events | 28 |
| 05 | [Networking](05-networking/) | VPC, CloudFront, Direct Connect, Site-to-Site VPN, Global Accelerator, Transit Gateway, Route 53, ACM | 32 |
| 06 | [Databases](06-databases/) | RDS, Aurora, DynamoDB, ElastiCache, Redshift, Aurora Limitless, MemoryDB, Single-Table Design | 22 |

### Modern Architecture (Weeks 5-6)

| # | Section | Topics | Q&As |
|---|---------|--------|------|
| 07 | [Serverless](07-serverless/) | Lambda, API Gateway, Step Functions, EventBridge, SAM, AppSync, Lambda@Edge, Pipes | 25 |
| 08 | [Containers](08-containers/) | ECS, EKS, Fargate, ECR, App Runner, EKS Pod Identity, Service Connect, Karpenter | 22 |
| 09 | [DevOps & Infrastructure](09-devops-and-infra/) | CloudFormation, CDK, CodePipeline, CodeBuild, CodeDeploy, CloudTrail, AWS Config, X-Ray, Observability, CloudWatch Advanced, Config Conformance Packs | 32 |

### Data & Analytics (Week 7)

| # | Section | Topics | Q&As |
|---|---------|--------|------|
| 10 | [Data & Analytics](10-data-and-analytics/) | Kinesis, Athena, Glue, Lake Formation, EMR, QuickSight, Zero-ETL, Data Mesh | 22 |

### System Design & Practice (Week 8)

| # | Section | Topics | Q&As |
|---|---------|--------|------|
| 11 | [Architecture Scenarios](11-architecture-scenarios/) | 23 real-world system design problems with diagrams and solutions | — |
| 12 | [Design Patterns & Frameworks](12-design-patterns-and-frameworks/) | Architecture decision frameworks, design patterns, 50+ service quick reference | — |

### Specialized Topics (Weeks 9-10)

| # | Section | Topics | Q&As |
|---|---------|--------|------|
| 13 | [Cognito & App Security](13-cognito-and-app-security/) | Cognito User/Identity Pools, WAF, Shield, Verified Permissions, Passwordless Auth | 18 |
| 14 | [Cloud Migration](14-cloud-migration/) | 7 Rs, AWS MGN, DMS, SCT, Migration Hub, Snow Family, DataSync, Mainframe Modernization | 18 |
| 15 | [Cost Optimization](15-cost-optimization/) | Cost Explorer, Budgets, Trusted Advisor, Savings Plans, Spot, FinOps, Unit Economics | 18 |
| 16 | [Systems Manager](16-systems-manager/) | Parameter Store, Session Manager, Patch Manager, Run Command, AWS Backup, Change Manager | 16 |
| 17 | [AI & ML Services](17-ai-ml-services/) | Bedrock, SageMaker, Rekognition, Comprehend, Textract, Amazon Nova, RAG, Guardrails, ML Fundamentals, Prompt Engineering, MLOps, Responsible AI | 26 |

### Advanced Topics (Weeks 11-12)

| # | Section | Topics | Q&As |
|---|---------|--------|------|
| 18 | [Messaging & Event-Driven](18-messaging-and-event-driven/) | SQS, SNS, EventBridge, Kinesis, MSK, Amazon MQ, Saga, CQRS, Event Patterns | 12 |
| 19 | [Resilience & Disaster Recovery](19-resilience-and-dr/) | DR strategies, RPO/RTO, Multi-Region, Chaos Engineering, FIS, Resilience Hub | 12 |
| 20 | [Advanced DynamoDB Patterns](20-advanced-dynamodb/) | Single-Table Design, Access Patterns, GSI Strategies, Write Sharding, Transactions | 12 |

## What's Covered

- **460+ Q&As** with detailed explanations
- **20 topic sections** covering all major AWS services
- **23 architecture scenarios** with production-grade diagrams
- **60+ real-world scenarios** to test your understanding
- **Latest AWS updates** (2025-2026) including Bedrock, Graviton4, VPC Lattice, Aurora Limitless
- **Deep dive notes** for advanced learners
- **Cheat sheets** for quick reference
- **Design patterns** (Saga, CQRS, Event Sourcing, Strangler Fig, Circuit Breaker)

> This content also aligns well with AWS certification tracks (Solutions Architect, Developer, SysOps, Cloud Practitioner, AI Practitioner) if you choose to pursue them.

## Section Format

Every section follows a consistent structure:

1. **Overview** — What the service does and when to use it
2. **Key Concepts** — Core terminology and components
3. **Architecture Diagram** — Mermaid diagram showing how components connect
4. **Deep Dive** — Detailed features, configurations, and limits
5. **Best Practices** — Production-grade recommendations
6. **Latest Updates** — Recent AWS changes (2025-2026)
7. **Knowledge Check** — Q&A pairs with detailed explanations
8. **Deep Dive Notes** — Advanced concepts for those who want to go deeper
9. **Cheat Sheet** — Quick-reference table of key facts

## Study Roadmap (12 Weeks)

| Week | Focus | Sections |
|------|-------|----------|
| 1-2 | Foundations | 01 Cloud Fundamentals, 02 IAM & Security, 05 Networking |
| 3-4 | Core Services | 03 Compute, 04 Storage, 06 Databases |
| 5-6 | Modern Architecture | 07 Serverless, 08 Containers, 09 DevOps |
| 7 | Data & Analytics | 10 Data & Analytics |
| 8 | System Design | 11 Architecture Scenarios, 12 Design Patterns & Frameworks |
| 9-10 | Specialized Topics | 13 Cognito, 14 Migration, 15 Cost, 16 SSM, 17 AI/ML |
| 11-12 | Advanced & Practice | 18 Messaging, 19 DR, 20 DynamoDB |

## Contributing

Found an error or want to add a service? PRs are welcome. Please follow the existing section format.

## License

MIT License. Use freely for learning.

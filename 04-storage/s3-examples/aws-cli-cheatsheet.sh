#!/bin/bash
# =============================================================================
# S3 Operations Quick Reference — Common AWS CLI commands for interview prep
# =============================================================================
# Run these commands with a real AWS account to build hands-on experience.
# Replace placeholder values (my-bucket, us-east-1, etc.) with your own.
# =============================================================================

# ─── BUCKET OPERATIONS ───────────────────────────────────────────────────────

# Create a bucket
aws s3 mb s3://my-unique-bucket-name-2026 --region us-east-1

# List all buckets
aws s3 ls

# List objects in a bucket
aws s3 ls s3://my-bucket/
aws s3 ls s3://my-bucket/ --recursive --human-readable --summarize

# Delete an empty bucket
aws s3 rb s3://my-bucket

# Delete a bucket and ALL its contents (destructive!)
aws s3 rb s3://my-bucket --force

# ─── UPLOAD / DOWNLOAD ───────────────────────────────────────────────────────

# Upload a single file
aws s3 cp myfile.txt s3://my-bucket/

# Upload to a "folder" (prefix)
aws s3 cp myfile.txt s3://my-bucket/data/2024/myfile.txt

# Download a file
aws s3 cp s3://my-bucket/myfile.txt ./downloaded.txt

# Sync a local directory to S3 (uploads only changed files)
aws s3 sync ./local-folder s3://my-bucket/prefix/

# Sync S3 to local
aws s3 sync s3://my-bucket/prefix/ ./local-folder

# Sync and delete files that don't exist in source
aws s3 sync ./dist s3://my-website-bucket --delete

# Upload with specific storage class
aws s3 cp largefile.zip s3://my-bucket/ --storage-class STANDARD_IA

# ─── MULTIPART UPLOAD (for files > 100 MB) ───────────────────────────────────

# S3 CLI automatically uses multipart for large files
# Configure multipart threshold:
aws configure set default.s3.multipart_threshold 100MB
aws configure set default.s3.multipart_chunksize 50MB

# List incomplete multipart uploads (these cost money!)
aws s3api list-multipart-uploads --bucket my-bucket

# Abort a specific incomplete upload
aws s3api abort-multipart-upload --bucket my-bucket --key large-file.zip --upload-id "UPLOAD_ID"

# ─── VERSIONING ──────────────────────────────────────────────────────────────

# Enable versioning
aws s3api put-bucket-versioning --bucket my-bucket \
  --versioning-configuration Status=Enabled

# Check versioning status
aws s3api get-bucket-versioning --bucket my-bucket

# List all versions of objects
aws s3api list-object-versions --bucket my-bucket

# Download a specific version
aws s3api get-object --bucket my-bucket --key myfile.txt \
  --version-id "VERSION_ID" downloaded.txt

# Delete a specific version (permanent delete)
aws s3api delete-object --bucket my-bucket --key myfile.txt \
  --version-id "VERSION_ID"

# ─── ENCRYPTION ──────────────────────────────────────────────────────────────

# Set default encryption (SSE-S3)
aws s3api put-bucket-encryption --bucket my-bucket \
  --server-side-encryption-configuration '{
    "Rules": [{"ApplyServerSideEncryptionByDefault": {"SSEAlgorithm": "AES256"}, "BucketKeyEnabled": true}]
  }'

# Set default encryption (SSE-KMS)
aws s3api put-bucket-encryption --bucket my-bucket \
  --server-side-encryption-configuration '{
    "Rules": [{"ApplyServerSideEncryptionByDefault": {"SSEAlgorithm": "aws:kms"}, "BucketKeyEnabled": true}]
  }'

# Upload with KMS encryption
aws s3 cp secret.txt s3://my-bucket/ --sse aws:kms --sse-kms-key-id alias/my-key

# ─── ACCESS CONTROL ──────────────────────────────────────────────────────────

# Block ALL public access (recommended for most buckets)
aws s3api put-public-access-block --bucket my-bucket \
  --public-access-block-configuration '{
    "BlockPublicAcls": true,
    "IgnorePublicAcls": true,
    "BlockPublicPolicy": true,
    "RestrictPublicBuckets": true
  }'

# Check public access settings
aws s3api get-public-access-block --bucket my-bucket

# Apply a bucket policy
aws s3api put-bucket-policy --bucket my-bucket --policy file://bucket-policy.json

# View current bucket policy
aws s3api get-bucket-policy --bucket my-bucket

# ─── PRESIGNED URLS ──────────────────────────────────────────────────────────

# Generate a presigned download URL (expires in 1 hour)
aws s3 presign s3://my-bucket/private-file.pdf --expires-in 3600

# ─── LIFECYCLE ───────────────────────────────────────────────────────────────

# Apply lifecycle rules
aws s3api put-bucket-lifecycle-configuration --bucket my-bucket \
  --lifecycle-configuration file://lifecycle-rules.json

# View lifecycle rules
aws s3api get-bucket-lifecycle-configuration --bucket my-bucket

# ─── REPLICATION ─────────────────────────────────────────────────────────────

# Set replication configuration (versioning must be enabled first)
aws s3api put-bucket-replication --bucket my-source-bucket \
  --replication-configuration file://replication-config.json

# Check replication status
aws s3api get-bucket-replication --bucket my-source-bucket

# ─── MONITORING & ANALYTICS ─────────────────────────────────────────────────

# Enable S3 server access logging
aws s3api put-bucket-logging --bucket my-bucket \
  --bucket-logging-status '{
    "LoggingEnabled": {
      "TargetBucket": "my-log-bucket",
      "TargetPrefix": "s3-access-logs/"
    }
  }'

# Enable S3 Storage Lens (account-level storage analytics)
# (Use the console for initial setup — CLI is complex for Storage Lens)

# ─── USEFUL TIPS ─────────────────────────────────────────────────────────────

# Find total size of a bucket
aws s3 ls s3://my-bucket --recursive --summarize | tail -2

# Find objects larger than 100 MB
aws s3api list-objects-v2 --bucket my-bucket --query 'Contents[?Size>`104857600`].[Key, Size]' --output table

# Count objects in a bucket
aws s3api list-objects-v2 --bucket my-bucket --query 'KeyCount'

# Copy between buckets (even cross-region)
aws s3 sync s3://source-bucket s3://destination-bucket

# Empty a bucket (delete all objects including versions)
aws s3 rm s3://my-bucket --recursive
# For versioned buckets, also delete all versions:
aws s3api list-object-versions --bucket my-bucket --query 'Versions[].{Key:Key,VersionId:VersionId}' --output json | \
  jq -c '.[]' | while read obj; do
    key=$(echo $obj | jq -r '.Key')
    vid=$(echo $obj | jq -r '.VersionId')
    aws s3api delete-object --bucket my-bucket --key "$key" --version-id "$vid"
  done

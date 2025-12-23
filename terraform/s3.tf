resource "aws_s3_bucket" "resume_site" {
  bucket = "cloud-resume-challenge-no999999"

  tags = {
    Project = "Cloud Resume"
    Owner   = "antonis"
  }
}
resource "aws_s3_bucket_website_configuration" "resume_site" {
  bucket = aws_s3_bucket.resume_site.id

  index_document {
    suffix = "index.html"
  }
}
resource "aws_s3_bucket_public_access_block" "resume_site" {
  bucket = aws_s3_bucket.resume_site.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
resource "aws_s3_bucket_policy" "resume_site" {
  bucket = aws_s3_bucket.resume_site.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.resume_site.arn}/*"
      }
    ]
  })
}


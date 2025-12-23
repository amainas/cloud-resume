output "website_url" {
  value       = aws_s3_bucket_website_configuration.resume_site.website_endpoint
  description = "S3 static website URL"
}
output "api_url" {
  value       = aws_apigatewayv2_api.visitor_api.api_endpoint
  description = "API Gateway endpoint"
}


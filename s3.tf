module "create_bucket" {
  source       = "./modules/buckets"
  bucket_name  = "sanitize-demo"
  function_arn = aws_lambda_function.func.arn

}
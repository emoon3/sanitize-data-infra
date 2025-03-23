resource "aws_lambda_function" "func" {
  filename      = "sanitize_data.zip"
  function_name = "sanitize-data"
  role          = aws_iam_role.role.arn
  handler       = "handleRequest"
  runtime       = "provided.al2023"
  architectures = ["arm64"]
}

resource "aws_lambda_permission" "bucket" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.func.arn
  principal     = "s3.amazonaws.com"
  source_arn    = module.create_bucket.bucket_arn
}
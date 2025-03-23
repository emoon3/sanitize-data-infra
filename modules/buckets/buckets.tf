resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_notification" "this" {
  bucket = aws_s3_bucket.this.id

  lambda_function {
    lambda_function_arn = var.function_arn
    events              = ["s3:ObjectCreated:*"]
  }

  eventbridge = true

}

resource "aws_s3_bucket" "output" {
  bucket = "${aws_s3_bucket.this.bucket}-output"
}
output "lambda_iam_role_arn" {
  value = aws_iam_role.role.arn
}

output "lambda_iam_role_name" {
  value = aws_iam_role.role.name
}

output "lambda_func_arn" {
  value = aws_lambda_function.func.arn
}
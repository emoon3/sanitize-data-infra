This builds the infrasctruture for the sanitize-data app. It creates an S3 bucket (named in the S3.tf file. It creates that bucket and an output bucket based on the provided names. The bucket is configured to send updates to Eventbridge whenever a new file is updloaded.

This terraform code creates a lambda function and all of the the needed security policies.

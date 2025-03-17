/*variable "bucket_name" {
    description = "This is the bucket name for S3"
    default = "my-static-website-bucket-15032025"
}

variable "website_index_document" {
  default = "index.html"
}*/

/*variable "aws_access_key_id" {
  type        = string
  description = "AWS Access Key ID"
  sensitive   = true
}

variable "aws_secret_access_key" {
  type        = string
  description = "AWS Secret Access Key"
  sensitive   = true
}*/

variable "aws_instance_names" {
  type        = list(string)
  description = "instance names"
  default     = ["webserve01", "webserve02"]
}

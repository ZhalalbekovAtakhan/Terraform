resource "aws_s3_bucket" "bucket_outbound" {
  count         = 3
  bucket        = "${var.environment}-${var.region}-outbound-${count.index+1}" #If it's just ${count.index} then first bucekt will start from zero
  force_destroy = var.force_destroy
}

resource "aws_s3_bucket" "bucket_inbound" {
  count         = 3
  bucket        = "${var.environment}-${var.region}-inbound-${count.index+1}" #If it's just ${count.index} then first bucekt will start from zero
  force_destroy = var.force_destroy
}



resource "aws_s3_bucket" "bucket_outbound" {
  count         = var.outbound_email ? 1 : 0      # if var.outbound_email is true, then 1 (means create), else (:) 0 (don't create)
  bucket        = "${var.environment}-${var.region}-outbound"
  force_destroy = var.force_destroy
}

resource "aws_s3_bucket" "bucket_inbound" {
  count         = var.inbound_email ? 1 : 0
  bucket        = "${var.environment}-${var.region}-inbound"
  force_destroy = var.force_destroy
}
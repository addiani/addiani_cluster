terraform {
  backend "s3" {
    bucket = "saidcluster.com"
    key = "state/addiani_cluster"
    region = "us-east-2"
  } 
}

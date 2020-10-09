
variable "region" {​​​​}​​​​
variable "access_key" {​​​​}​​​​
variable "secret_key" {​​​​}​​​​

 

provider "aws" {​​​​
 region = "${​​​​var.region}​​​​"
 access_key = "${​​​​var.access_key}​​​​"
secret_key = "${​​​​var.secret_key}​​​​"
}​​​​

 

resource "null_resource" "stop_instance2" {​​​​

 

  provisioner "local-exec" {​​​​
    interpreter = ["/bin/bash", "-c"]
    command     = <<EOT
        aws s3 ls
        echo "***************************************Rebooted****************************************************"
     EOT
}​​​​
 triggers = {​​​​
    always_run = "${​​​​timestamp()}​​​​"
  }​​​​
}​​​​
 

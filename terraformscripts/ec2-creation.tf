provider "aws"{
   region  = "us-east-1" 
   
}

resource "aws_instance" "AWSEC2Instance"{
     count   = 2
     ami     =  "ami-06640050dc3f556bb"
     instance_type = "t2.micro"
     security_groups = ["DevOps-Ports"]
     key_name        = "ops-key"
     tags = {
        Name = "Tomcat_Srv"
     }
}


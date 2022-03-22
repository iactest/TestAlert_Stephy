##########################
# Security group with name
##########################
resource "aws_security_group" "sg" {

  ingress {
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 80
           to_port     = 80
           protocol    = "tcp"
           description = "http"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 443
           to_port     = 443
           protocol    = "tcp"
           description = "https"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 22
           to_port     = 22
           protocol    = "tcp"
           description = "ssh"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 23
           to_port     = 23
           protocol    = "tcp"
           description = "telnet"
        } 
         ingress {
          from_port   = 25
          to_port     = 25
          protocol    = "tcp"
          cidr_blocks  = ["0.0.0.0/0"]
          description = "SMTP"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 389
           to_port     = 389
           protocol    = "tcp"
           description = "LDAP"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 3389
           to_port     = 3389
           protocol    = "tcp"
           description = "RDP"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 9200
           to_port     = 9200
           protocol    = "tcp"
           description = "ES"
        } 
         ingress {   
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 5432
           to_port     = 5432
           protocol    = "tcp"
           description = "Postgress"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 1521
           to_port     = 1521
           protocol    = "tcp"
           description = "Oracle"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 3306
           to_port     = 3306
           protocol    = "tcp"
           description = "MySQL"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 1433
           to_port     = 1433
           protocol    = "tcp"
           description = "MSSQLadmin"
        } 
        ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 1434
           to_port     = 1434
           protocol    = "tcp"
           description = "MSSQLbrowser"
        } 
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 7000
           to_port     = 7000
           protocol    = "tcp"
           description = "Cassandra"
        }  
         ingress {  
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 9042
           to_port     = 9042
           protocol    = "tcp"
           description = "cassandraops"
        } 
         ingress {
           cidr_blocks = ["0.0.0.0/0"]
           from_port   = 137
           to_port     = 138
           protocol    = "udp"
           description = "CIFS1"
        } 
         ingress {
          cidr_blocks = ["0.0.0.0/0"]
          from_port   = 139
          to_port     = 139
          protocol    = "tcp"
          description = "CIFS2"
        } 
         ingress {
        cidr_blocks = ["0.0.0.0/0"]
        from_port   = 445
        to_port     = 445
        protocol    = "tcp"
        description = "CIFS3"
  } 
  }

variable "aims" {
    type = map
    default = {
        "ami-us-west-1-amazon-linux-2-x86" = "ami-017c001a88dd93847"
        "ami-us-west-2-amazon-linux-2-x86" = "ami-0d593311db5abb72b"
        "ami-us-west-2-amazon-linux-2-ARM" = "ami-0efabcf945ffd8831"
        "ami-us-west-2-amazon-ubuntu-22.04-x86" = "ami-017fecd1353bcc96e"
    }
}

variable "cdirs_acesso_remoto" {
    type = list(string)
    default = ["201.17.120.163/32","0.0.0.0/32"]
}

variable "key_name" {
    default = "terrafor_aws"
}
variable "comp" {

    default = {
        frontend = {                                # each.key
            instance_type =  "t2.micro" 
        }

        mysql ={
            instance_type =  "t2.micro"             # each.value
        }

        backend ={
            instance_type =  "t2.micro"
        }
  
    }   
}
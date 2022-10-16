locals { 
  default = timestamp()
}

locals { 
  example = formatdate("DD MMM YYYY hh:mm ZZZ", "2018-01-02T23:12:01Z")
}


locals { 
  example-2 = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
}


locals { 
  file-1 = fileexists("${path.module}/hello.txt")
}


locals { 
  filecondition = fileexists("${path.module}/hello.txt") ? file("${path.module}/hello.txt") : local.default_error_msg
}

locals { 
  default_error_msg = "No file exists, please make sure file exists.!!"
}


output "filetest" { 
  value = local.file-1
}


output "filetest-2" { 
  value = local.filecondition
}

output "time" { 
  value = local.default
}

output "example" { 
  value = local.example
}

output "example-2" { 
  value = local.example-2
}





```
rajendra@Azure:~$ terraform console 
> 2 + 4 
6
> 10 - 7 
3
> 5 * 3
15
> 30 / 5 
6
> 

> contains(tolist(["apple", "mango", "orange"]), "kiwi")
false
> contains(tolist(["apple", "mango", "orange"]), "apple")
true
> 

> length("a,b,c")
5
> length(split(",", "a,b,c")) 
3
> 

> length(tomap({"key"="value"})) 
1
> 

> 

> max(56,75,95,5)
95
> min(56,75,95,5)
5
> 

> 

> element(["a","b","c","d"], 0 ) 
"a"
> element(["a","b","c","d"], 3 ) 
"d"
> 

> merge(tomap({"key"="value"}), tomap({"test"="abc"})) 
tomap({
  "key" = "value"
  "test" = "abc"
})
> 

> 

> lookup({a="Welcome", b="Terraform"},"a", "Please use the right key")
"Welcome"
> lookup({a="Welcome", b="Terraform"},"b", "Please use the right key")
"Terraform"
> lookup({a="Welcome", b="Terraform"},"c", "Please use the right key")
"Please use the right key"
> lookup({a="Welcome", b="Terraform"},"0", "Please use the right key")
"Please use the right key"
> lookup({a="Welcome", b="Terraform"},"1", "Please use the right key")
"Please use the right key"
> exit 

```

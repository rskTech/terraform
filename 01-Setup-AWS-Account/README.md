# Amazon Cloud Access

## Craete a Programatic Access Key User

```
You need to a IAM User - > Login -> AWS Console -> Search (IAM) -> Create User (terraform) -> Enable Progrmatic Access -> Attach Existing Policy (EC2FullAccess) -> Create & Downloand Keys.

```

## Now export the AWS Keys into Env. Variables

```
echo "export AWS_ACCESS_KEY_ID="XXXXXXXXXXXX" " >> ~/.bashrc
```

```
echo "export AWS_SECRET_ACCESS_KEY="XXXXXXYYYYYYYYYYYYYYYYYYYYYYYYYYY" " >>  ~/.bashrc
```

```
source ~/.bashrc
```

```
set | grep -i AWS
```



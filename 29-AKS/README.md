```
1553  terraform apply --auto-approve 
 1554  ls
 1555  kubectl  get nodes 
 1556  kubectl  get nodes --kubeconfig=kubeconfig
 1557  cp -rf kubeconfig ~/.kube/config 
 1558  kubectl  get nodes 
 1559  kubectl  get pods 
 1560  kubectl  run hello-k8s-pod --image=nginx --port=80
 1561  kubectl  get pods 
 1562  kubectl  get pods  -w
 1563  kubectl  describe pods hello-k8s-pod
 1564  kubectl  get pods  
 1565  kubectl  get pods  -o wide 
 1566  kubectl  expose pod hello-k8s-pod --type=LoadBalancer
 1567  kubectl  get pods  -o wide 
 1568  kubectl  get svc 
```

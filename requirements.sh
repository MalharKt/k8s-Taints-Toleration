#Taint a node with NoSchedule
kubectl taint nodes ip-192-168-16-95.us-east-2.compute.internal run=mypod:NoSchedule

#Check if it is tested
kubectl describe node ip-192-168-16-95.us-east-2.compute.internal | grep Taint

#Run pod
kubectl run test --image=redis --restart=Never

#Check if the pod is created in the specified node or not 
kubectl get po -o wide

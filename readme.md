This document will help us in Creating  EKS cluster  with in AWS Cloud.
Steps:
1)	Create a IAM Role with specific EKS policy attached.
2)	For EKS Cluster we need 1 VPC  and 3 subnetes in differnet availability zones
3)	Ensure that we need a Ec2 instance with kubectl installed with in the subnet 1. 
4)	With the help of kubectl we can communicate the EKS cluster.
5)	Create a  IAM user for kubernetes cluster.
6)	Now, Create a EKS Cluster.
7)	Ensure that EKS cluster with the VPC and  subnet which you specified previously.
8)	Then create config file by below example
Eg:    aws eks --region  us-east-1  update-kubeconfig  --name  eks
	Test the connection with kubectl command
   Eg: kubectl get svc
9)	Setup 2 Nodes with in the same VPC with different availability zones which you mentioned.
10)	 To enable worker nodes to join your cluster
11)	 Then test connection
Eg : kubectl get nodes
Before going to create deployment and service file,  Ensure the we have database already configured 
12)	 Here we configured the RDS mysql server
13)	After configure the RDS we need to  write a  connection string in applications properties file.
14)	 Then Build the appliction in jenkins ( Ensure that jenkins should have git and maven installed)
15)	 After build success we create docker image with jenkins using Dockerfile(we configured upstream and downstream job in jenkins)
16)	Then we deploy docker image  in EKS with using deployment.yml file and we create service.yml 
17)	We deploy this using kubectl command
Eg:-  kubectl apply –f deployment.yml
Eg :- kubectl apply  -f service.yml 

We have commited this code in https:github.com


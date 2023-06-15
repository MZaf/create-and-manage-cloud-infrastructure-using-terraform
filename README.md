# create-and-manage-cloud-infrastructure-using-terraform
Create, deploy and manage cloud infrastructure using terraform.

## main.tf
This main.tf file is used to define all the resources you wish to launch or manage with terraform. Below are some high level walkthroughs of the code:

```
count = 4
``` 
It signifies number of resources to create. count = 4 will create Four resources of the same kind will be provisioned.

```
Amazon machine image (ami) - 
```
Allows you to launch instances containing all the required softwares and operating system.

```
tags - 
```
Tags allow you to define the specific resource with a label, which is further beneficial for cost calculations.

```
aws_instance - 
```
Creates the EC2 instances in AWS console.

```
count.index - 
```
Allows you to define the name according to index. For example if the value of count is 4 then index starts with ( 0 to 3 )

```
Lookup 
```
Retrieves the value of a single element from a map, given its key. If you don't declare any key then the default value is considered.

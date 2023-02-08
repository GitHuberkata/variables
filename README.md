# A sample repo configuration to demonstrate usage of "variables"

### Use Case
We need to create N ec2 instances. To manage our infrastrucutre easily and quickly and to avoid repetions and mistakes we we create an additional file called `variables.tf` with our variables, in our example we introduce variable `variable "instance_count"`. In the main configuration file we put the count to be equel to our variable:
```
count         = var.instance_count
```

### Benefits
Whenever the count number is changed we will need to update the count only in one place. All other places where this variable is used will be updated automatically.

### Prerequisites
- Git
- Terraform CLI
- AWS credentials






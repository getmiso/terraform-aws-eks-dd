# AWS EKS Datadog-Operator terraform module

Made by <img src="logo.png" width="60" margin alt="Miso"> with ❤️

## Description

A terraform module to deploy the datadog-operator on Amazon EKS cluster.

### Installing

You can install this module as follows:

```tf
locals {
  dd_values = {
    "datadogMonitor" : {
      "enabled" : true
    }
  }
}

module "dd" {
  source = "git::https://github.com/getmiso/terraform-aws-eks-dd.git"

  enabled = true
  values  = yamlencode(local.dd_values)
}

```

### Usage
You can refer to [this](https://artifacthub.io/packages/helm/datadog/datadog-operator) repository to learn more about datadog-operator.
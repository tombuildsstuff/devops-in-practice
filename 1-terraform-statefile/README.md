## Storing Terraform State in a Backend

The state of the world in Terraform is tracked in a Statefile - by default this is saved to local disk, however these can also be stored remotely. [Terraform supports Backends](https://www.terraform.io/docs/backends/index.html) which can be used to store the Statefile in a variety of Providers - such as Amazon S3, Azure Blob Storage, Google Cloud Storage, Terraform Enterprise (and more)

The two examples in this folder demonstrate configuring a Backend using both [AWS](aws/) and [Azure](azurerm/) - additional information can be found on the [AWS Backend](https://www.terraform.io/docs/backends/types/aws.html) and the [Azure](https://www.terraform.io/docs/backends/types/azurerm.html) backend pages.

Once adding valid variables for your particular AWS Account / Azure Subscription - you can configure the Backend by running:

```
terraform init
```

This will configure the Backends and download the relevant versions of any Terraform Providers where appropriate.

## The Terraform and Provider Blocks

The `terraform` and `provider` blocks can be used to configure settings for either Terraform or the specific Terraform Provider respectively. In both cases - initialization can be done via:

```
terraform init
```

This will download the relevant versions of the Provider, and configure the backend where appropriate. Once that's done - you can run the examples via:

```
terraform apply
```

~> **NOTE:** You'll need credentials configured for Azure to use this example, either using the Azure CLI or a Service Principal.

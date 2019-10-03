## Packer template for OpenVidu

While AMIs and Docker images are already out there, this approach has a few upsides:

* Control over versions and other common configuration options at build time
* Reduces dependencies on cloud-init, resulting in faster boot times
* Security: a fully pre-provisioned instance can run with restrictions on initiating outbound connections

## Deployment

This repository has Github Actions setup to automatically build the target AMI. Just create a secret with the key of `USER_JSON` and the value in the this format:

```
{
  "aws_access_key": "key",
  "aws_secret_key": "secret"
}
```

## Recording sessions

Docker is required, inexplicably, to [enable session recording](https://openvidu.io/docs/advanced-features/recording/). That's why it's a dependency. Full recording support will be added soon using Packer's Docker provisioner.

# Terraform Beginner Bootcamp 2023

## Semantic Versioning :mage:

This project is going to utilize semantic versioning for its tagging.
[semver.org](https://semver.org/)

The general format:

**MAJOR.MINOR.PATCH**, e.g. `1.0.1`

- **MAJOR** version when you make incompatible API changes
- **MINOR** version when you add functionality in a backward compatible manner
- **PATCH** version when you make backward compatible bug fixes

Additional labels for pre-release and build metadata are available as extensions to the MAJOR.MINOR.PATCH format.

## Install the TF CLI
[Install TF CLI](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
https://www.cyberciti.biz/faq/
https://www.gitpod.io/docs/configure/workspaces/tasks

## Working with ENV
List them with `env`
Unset them with `unset`
Export them with `export MY_COLOR=blue`
Fither them with `env |grep`

Print them with `echo $MY_COLOR`

## Scoping of ENV
ENV are session dependent, once you open up another bash session the ENV that you've exported will no longer be available, this is why it's best to put them to ~/.bashrc so they are exported/defined on sessions start (logon)

You can also put them in .gitpod.yaml

Or if you can ENVs with secure information, you can store them as gitpod secrets
```
gp env HELLO='world'
```
### AWS Credentials
you need to set ENVS
[ENV SETUP](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html)

test that they work with:

```
aws sts get-caller-identity
```

It is good practice to  run this command before starting to work with AWS to make sure that you are logged in as the right user

## Terraform Basics

#### Terrafrom Registry

Terrafrom sources their provides and modules from the Terrafrom registry which located at registry. 
[registry.terrafrom.io](https://registry.terraform.io/)

- **Providers** is an interface to APIs that will allow to create resources in terrafrom.
- **Modules** are a way to make large amount of terrafrom code modular, portable and sharable.

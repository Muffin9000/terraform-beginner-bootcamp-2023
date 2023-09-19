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

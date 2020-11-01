[Index][home] > Cloud > AWS

# AWS

## CLI

### Set up CLI with profile
- Fill `None` values for all default settings
```bash
aws configure
```
- Setup a named profile
```bash
aws configure --profile my.profile.name
```
- then one can use any aws cli command with the profile as follows
```bash
COMMAND --profile my.profile.name
```

## Environment

### Set up Environment variables
- set the following env variables

```bash
export AWS_ACCESS_KEY_ID=xxxxxxxxxxxxxxx
export AWS_SECRET_ACCESS_KEY=xxxxxxxxxxxxxxx
export AWS_DEFAULT_REGION=us-east-1
```

[home]: /dev-guide

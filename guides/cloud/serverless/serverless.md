[Index][home] > Cloud > Serverless

# Serverless

## Index
1. [Install Serverless](#install-serverless)
2. [Create new project](#create-new-project)
3. [Test locally](#test-the-function-locally)
4. [Deploy to AWS](#deploy-to-aws)
5. [Remove from aws](#remove-from-aws)
6. [Logs](#logs)
7. [Plugins](#plugins)

---

#### Install `serverless`
```bash
npm install -g serverless
```

#### Check serverless is installed with either one of the following comands
```bash
serverless --version
sls -v
```

---

#### Create new project
- create a project by name `my-service`
```bash
sls create --template aws-nodejs --path my-service
```
- create a project by name `my-service` with typescript
```bash
sls create --template aws-nodejs-typescript --path my-service 
```


#### Set up creds
```bash
export AWS_ACCESS_KEY_ID=<your-key-here>
export AWS_SECRET_ACCESS_KEY=<your-secret-key-here>
```

#### Test the function locally
```bash
sls invoke local -f FUNCTION_NAME [-d EVENT_DATA]

# Example
sls invoke local -f hello -d '{\"name\": \"James Bond!\"}'
```

---

#### Deploy to AWS
- credentials should be set
```bash
sls deploy
```
- to override `stage`
```bash
sls deploy --stage prod
```
- deploy just function `hello`
```bash
sls deploy -f hello
```

---

#### Remove from AWS
```bash
sls remove
```

#### Logs
- Get last `5m` logs of function `add` for `prod` stage
```bash
sls logs -f add -s prod --startTime 5m
```

---

## Plugins
### Serverless Offline
- install
```bash
npm install --save-dev serverless-offline
```
- run
```bash
sls offline
```



[home]: /dev-guide

# AWS Serverless learning


## **Requirements**

Have this tools install on your local machine before starting

- nodejs
- AWS CLI [Install AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)
- AWS SAM CLI [Install AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)

---

### **Setup AWS Serverless learning project**


- Get list of actions in makefile

    ```bash
    make help
    ```

- Install utilities needed for the deployment.

    ```bash
    make install
    ```

- Initialized require environment variables

  ```bash
  export SAM_BUCKET=<AWS_SAM_BUCKET_NAME> # Name of S3 bucket where to deploy SAM code
  export PROFILE='profile="<YOUR_AWS_PROFILE>"' # It is optional
  export REGION=<AWS_REGION>
  ```

- command to run to generate samconfig.toml
  ```bash
  make samconfig
  ```

- Deploy selected template (Ex: lambda-logs-filtering)

  ```bash
  make lambda-logs-filtering.deploy
  ```
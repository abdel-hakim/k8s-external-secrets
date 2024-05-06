# external-secrets-operator

External Secrets Operator is a Kubernetes operator that integrates external secret management systems like AWS Secrets Manager, HashiCorp Vault, Google Secrets Manager, Azure Key Vault, IBM Cloud Secrets Manager, and many more. The operator reads information from external APIs and automatically injects the values into a Kubernetes Secret.
- Install Secret operator 
    ```
    helm repo add external-secrets https://charts.external-secrets.io

    helm install external-secrets \
    external-secrets/external-secrets \
        -n external-secrets \
        --create-namespace \
        --set installCRDs=true
    ```
- Create a secret and SecretStore by using vault token in vault-secret-store.yaml file, Incase this you have to create the SecretStore in the same namespace which the app deployed in 
    ```
    kubectl apply -f vault-secret-store.yaml
    ```

- If you want to create it globally and all the namespaces can consume it, then you have to create ClusterSecretStore
    ```
    kubectl apply -f vault-clustersecretstore-token.yaml
    ```
- Now create a externlsecret for the App to get the secrets from Vault

    ```
    kubectl apply -f xxx.yaml  
    ```


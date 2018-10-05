kube addons enable ingress
eval $(minikube docker-env)

kubectl create secret tls tls-certificate --key config/certs/nginx-selfsigned.key --cert config/certs/nginx-selfsigned.crt 
kubectl create secret generic tls-dhparam --from-file=config/certs/dhparam.pem


# Ingress config help
https://github.com/fabric8io/fabric8/issues/6840

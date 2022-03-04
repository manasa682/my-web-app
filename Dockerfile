apiVersion: apps/v1
kind: Deployment
metadata:
  name: javawebappdeployment
spec:
  replicas: 2
  selector:
    matchLabels:
      app: javawebapp
  strategy:
    type: Recreate    
  template:
    metadata:
      name: javawebapppod
      labels:
        app: javawebapp
    spec:
      containers:
      - name: javawebappcontainer
        image: dockerhandson/java-web-app:1
        ports:
        - containerPort: 1000

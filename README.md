# simple-server
This Project provides simple server for testing docker, k8s, consul, or other middlewares.

# usage
```shell-session
docker run -p 5000:5000 -e SERVICE_NAME=serviceA --rm ques0942/simple-server
```

```shell-session
curl "http://localhost:5000/"

{
  "service_name": "serviceA",
  "host_name": "serviceA-host"
}
```


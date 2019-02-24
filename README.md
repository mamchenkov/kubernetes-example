Docker and Kubernetes Example
=============================

This is an example of Docker and Kubernetes.

The example Docker image provides a number of basic bash workers:

* `workers/date.sh` - continuously outputs current date
* `workers/number.sh` - continuously outputs random number
* `workers/crash.sh` - continuously outputs random number (crash if number > 31,000)

The example Kubernetes deployment runs 3 copies of each worker, and restarts pods
automatically, when a crash occurs.

Usage
-----

To run the default worker (date):

```
docker run lmamchenkov/example
```

To run a particular worker:

```
# Date worker
docker run -it lmamchenkov/example /workers/date.sh
# Number worker
docker run -it lmamchenkov/example /workers/number.sh
# Crash worker
docker run -it lmamchenkov/example /workers/crash.sh
```

To stop a running worker:

```
docker ps
docker stop --time=1 <CONTAINER_ID>
```

To run the Kubernetes deployment:

```
kubectl create -f deployment.yml
```

To update Kubernetes with any changes in the file:

```
kubectl apply -f deployment.yml
```

To delete the deployment from Kubernetes:

```
kubectl delete deployments example
```

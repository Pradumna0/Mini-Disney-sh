You can run this task-manager-api and perform CRUD operation.

# helm install my-app ./my-app-chart
# helm upgrade  my-app ./my-app-chart --recreate-pods

# export $(grep -v '^#' .env | xargs)
# kubectl create secret generic redis-secret --from-literal=REDIS_PASSWORD=$REDIS_PASSWORD
# kubectl create secret generic redis-secret --from-literal=REDIS_PASSWORD_S=$REDIS_PASSWORD_ENV
# kubectl get secret redis-secret -o yaml



# kubectl create secret generic redis-secret --from-literal=REDIS_PASSWORD=$(echo -n $REDIS_PASSWORD | base64)


# kubectl create secret generic redis-secret --from-literal=REDIS_PASSWORD=$REDIS_PASSWORD

# kubectl exec -it redis-64fcf55bbb-qfvkx  -- cat /etc/redis/redis.conf | grep requirepass
# kubectl logs mini-web-6664fc7db7-8v7n4
#  kubectl logs mini-web-6c6b898dcd-t6d9r

# kubectl exec -it mini-web-6584b5f7dc-22cgb -- /bin/bash
# pip show python-dotenv


# kubectl exec -it redis-58654cff54-2j27f -- redis-cli
# kubectl exec -it mini-web-6df68c9877-zqpbm -- /bin/sh

# kubectl apply -f kubernetes/redis_secret.yaml
# kubectl apply -f kubernetes/redis_pv.yaml
# kubectl apply -f kubernetes/redis_deployment.yaml
# kubectl apply -f kubernetes/task_manager_deployment.yaml
# kubectl get deployments
# kubectl get services


# curl -X GET http://localhost:8000/tasks
# curl -X GET http://localhost:8000/tasks/<task_id>
# curl -X POST -H "Content-Type: application/json" -d '{"title": "My Task", "description": "Description of the task"}' http://localhost:8000/tasks
# curl -X PUT -H "Content-Type: application/json" -d '{"title": "Updated Task Title", "status": "Completed"}' http://localhost:8000/tasks/<task_id>
# curl -X DELETE http://localhost:8000/tasks/<task_id>
# curl -X PATCH -H "Content-Type: application/json" -d '{"status": "In Progress"}' http://localhost:8000/tasks/<task_id>/status


# curl -X PUT -H "Content-Type: application/json" -d 'Invalid data' http://localhost:8000/tasks/<task_id>
# curl -X PATCH -H "Content-Type: application/json" -d '{}' http://localhost:8000/tasks/3eec099c-6795-485f-bade-a9df8f862f48/status
# curl -X PATCH -H "Content-Type: application/json" -d '{"status": 123}' http://localhost:8000/tasks/<task_id>/status
# curl -X GET http://localhost:8000/tasks/nonexistent-id
# curl -X DELETE http://localhost:8000/tasks/nonexistent-id
# curl -X POST -H "Content-Type: application/json" -d '{"title": "Bad JSON}' http://localhost:8000/tasks






# curl -X GET http://127.0.0.1:8000/tasks
# curl http://localhost:8000/tasks/{task_id}
# curl -X POST http://localhost:8000/tasks -H "Content-Type: application/json" -d '{"title": "Task 1", "description": "Description for task 1"}'
# curl -X PUT http://localhost:8000/tasks/{task_id} -H "Content-Type: application/json" -d '{"description": "Updated Task"}'
# curl -X PATCH http://localhost:8000/tasks/{task_id}/status -H "Content-Type: application/json" -d '{"status": "Completed"}'
# curl -X DELETE http://localhost:8000/tasks/{task_id}

# kubectl exec -it redis-dfb8fbc45-lms7c -- /bin/sh
# apt-get install -y redis-tools
# curl -X GET http://192.168.67.2:32751/tasks

# helm upgrade  my-app ./my-app-chart --recreate-pods

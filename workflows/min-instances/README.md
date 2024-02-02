# A Cloud Workflows workflow to update minimum instances on Cloud Run. 

One way to use this is to prevent scale to zero during business hours. Note
that you can schedule a recurring workflow execution using Cloud Scheduler.  

Example arguments: 
```
  { "region": "europe-west1", "service": "hello-world", "minInstances": 1 }
```

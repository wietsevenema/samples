# Update minimum instances on Cloud Run with a workflow

- *Update February 2024*: The Cloud Run admin API now supports PATCH with a field filter, which makes it possible to update minimum instances directly from Scheduler, without using this workaround with Workflows.

One way to use this is to prevent scale to zero during business hours. Note
that you can schedule a recurring workflow execution using Cloud Scheduler.  

Example arguments: 
```
  { "region": "europe-west1", "service": "hello-world", "minInstances": 1 }
```


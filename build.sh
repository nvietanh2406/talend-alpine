cp /opt/job_store/dremio/DRE_FULLLOAD_STD_0.1/ .
docker build -t dockerhub.dsc.com.vn/dsc_datawarehouse/talend-job-dremio:v1.0.0
docker push dockerhub.dsc.com.vn/dsc_datawarehouse/talend-job-dremio:v1.0.0
kubectl delete -n talend -f deployment.yaml
kubectl apply -n talend -f deployment.yaml

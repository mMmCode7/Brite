# Brite implementation steps : 

## Overview:

the basic webapp is docrised and running on EKS cluster, uses github actions to build and push to ECR and using argocd to deploy, also it includes prometheus and grafana for getting metrics and alerts about the system.


## steps to Implement:

- first terraform script to be run starting from VPC folder then k8s folder then ECR folde.
pipeline is configured to trigger for any changes in any of the folders separetly so any future chanes has to be done first in code and it will be applied automatically.
for any new resources a new folder and pipeline has to be created.


- github actions pipeline configured to build the app, test, build docker image and push to ECR so for future changes once commited to main branch it will trigger the pipeline.

- argocd for deployment will use app of apps technique so first we will manually create argocd application that implements kustomization files and point to the argocd folder, this will create all infra_app, monitoring and the main application, it will be monitoring this folder for any changes to implement.

- the second part of updating the latest image pushed to ECR will be taken care of by image updater that will update the application with any new tag pushed to the ECR, it's using annotaions to do that.

- monitoring part will be implemented by prometheus alerts and grafana dashboards that will be deployed by argocd as well.

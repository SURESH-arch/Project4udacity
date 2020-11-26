#!/usr/bin/env bash
dockerpath="sureshgtechno/proj4ml" 
kubectl run projectml4 --image=sureshgtechno/proj4ml
kubectl get pods
kubectl port-forward projectml4 8000:80
kubectl logs --follow projectml4


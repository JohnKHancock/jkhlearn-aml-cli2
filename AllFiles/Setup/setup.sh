#! /usr/bin/sh

# Set the necessary variables
RESOURCE_PROVIDER="Microsoft.MachineLearning"
RESOURCE_GROUP="overview-rg"
REGION="eastus"
WORKSPACE_NAME="overview-wrksp"
COMPUTE_INSTANCE="overview-ci" 


#Register the Azure Machine Learning resource provider in the sub
echo "Register the Machine Learning resource provider:"
az provider register --namespace $RESOURCE_PROVIDER

#Create the resource group and workspace and set to default
echo "Create a resource group and set as default:"
az group create --name $RESOURCE_GROUP --location $REGION
az configure  --defaults group=$RESOURCE_GROUP

echo "Create an Azure Machine Learning workspace:"
az ml workspace create --name $WORKSPACE_NAME
az configure --defaults workspace=$WORKSPACE_NAME

#Create compute instance
echo "Creating a compute instance with name. "
az ml compute create --name $COMPUTE_INSTANCE --size STANDARD_DS11_V2 --type ComputeInstance








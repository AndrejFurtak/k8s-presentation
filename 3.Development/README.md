# Development example

Contains example applications with configurations and scripts for local deployment.


## Prerequisities

You have finished previous examples so the Minikube, Docker and Helm CLIs are installed 
and Minikube VM is up and running
and your local development environment is configured.

Run ./installTools.ps1 script.
  Will install:
   - skaffold cli

Installed VisualStudio extension "Bridge to Kuberentes" for debugging.

## Skaffold

Skaffold is image build, tagging, testing and deployment orchestration CLI.

It is configured based on skaffold.yaml file.

It is used in this service examples for easer image building and helm charts deployment.

There are also few powershell scripts for wrapping calls to skaffold with passing some default params.

Scripts:
  - build.ps1
  - buildAndPublish.ps1
  - delete.ps1


## ExampleServices


### Calculator service

Example service exposing endpoints for calculation operations.

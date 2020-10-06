# Python Demo - Fluid-Slurm-GCP
Copyright 2020 Fluid Numerics

This repository accompanies the ["Set up Python for Slurm-GCP" codelab](https://fluid-slurm-gcp-codelabs.web.app/python-package-management-strategies/#0). The test application in this repository is used to show which python3 site-packages are used depending on which python3 binary is being called.

## Centralized Package Managment Workflow
In the centralized package management workflow, system administrators maintain python3 and python3 package installs under `/apps` and use environment-modules to allow users to dynamically change which python installation they are using. To use a centralized package management workflow, install python3 under `/apps` using the provided [install script](./install_central_python3.sh)

#!/bin/bash

cd "$(dirname "$0")"

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

git init
git branch -M main

code --install-extension ms-python.python
code --install-extension ms-toolsai.jupyter
code --install-extension ms-azuretools.vscode-azureml
code --install-extension ms-vscode.powershell

echo "Setup complete: PaySim Financial Fraud Detection environment ready"

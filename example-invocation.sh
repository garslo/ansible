#!/bin/bash

ansible-playbook --limit localhost -i hosts --ask-vault-pass llnwdev.yaml

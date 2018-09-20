#!/bin/bash

#ansible-playbook --limit localhost -i hosts --ask-vault-pass llnwdev.yaml
ansible-playbook -i "localhost," --ask-vault-pass llnwdev.yaml

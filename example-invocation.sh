#!/bin/bash

ansible-playbook --limit 10.221.210.196 -i hosts site.yaml

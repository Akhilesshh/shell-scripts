#!/bin/bash
space=`df -h . | tail -1 | awk -F " " '{print$(NF -1)' | sed 's/%//g'


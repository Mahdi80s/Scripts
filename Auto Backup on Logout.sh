#!/bin/bash

BACKUP_DIR="/home/ubuntu"

tar -czf "$BACKUP_DIR/home_backup_$(date +%Y-%m-%d).tar.gz" /home/ubuntu

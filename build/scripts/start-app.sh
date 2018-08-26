#!/bin/bash

set -e

systemctl enable limitd.service
systemctl start limitd.service

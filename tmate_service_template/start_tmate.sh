#!/bin/bash
stty rows 512 cols 512 
/usr/bin/tmate -F -k [INSERT-API-KEY-HERE] -n $(hostname)

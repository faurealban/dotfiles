#!/bin/bash

free | grep Mem | awk '{ printf("%d", $3/$2 * 100.0) }'

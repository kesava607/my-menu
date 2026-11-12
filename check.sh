#!/bin/bash
bad=$(grep -vE '^.+ - [0-9]+$' menu.txt | grep -v '^#' | grep -v '^$')
if [ -n "$bad" ]; then
  echo "Lines without a price:"; echo "$bad"; exit 1
fi
echo "All lines OK"

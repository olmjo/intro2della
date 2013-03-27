#!/bin/bash

## -r recurse through sub-directories
## -L transform symlink into reference file/dir
## -v be verbose about printing messages
## -z compresses data before transfer and decompresses after transfer

rsync -rLvz ~/projectdir user@della.princeton.edu:~/

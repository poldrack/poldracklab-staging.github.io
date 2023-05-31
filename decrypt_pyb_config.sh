#!/bin/sh

# Decrypt the file
# --batch to prevent interactive command
# --yes to assume "yes" for questions
mkdir .pybliometrics
gpg --quiet --batch --yes --decrypt --passphrase="$TOKEN_PASSCODE" \
--output .pybliometrics/config.ini config.ini.gpg

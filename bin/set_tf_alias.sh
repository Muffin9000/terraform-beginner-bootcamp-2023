#!/usr/bin/bash

# Check if alias already exists
grep -q 'alias tf="terraform"' ~/.bash_profile

# $? is a special variable in bash that holds the exit status of the laast command
if [[ $? -ne 0 ]]; then
    # If the alias does not exist, append it
    echo 'alias tf="terraform"' >> ~/.bash_profile
    echo "Alias added successfully."
else
    echo "Alias already exists in .bash_profile."
fi

source ~/.bash_profile

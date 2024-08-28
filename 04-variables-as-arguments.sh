#!/bin/bash

PERSON1=$1
PERSON2=$2

# variable can be called in 2 ways --> $variable_name or ${variable_name}

echo "$PERSON1:: Hi ${PERSON2}, How are you?"
echo "${PERSON2}:: Hi $PERSON1, I am fine. How are you doing"
echo "$PERSON1:: I am donig good ${PERSON2}. What's going on?"
echo "${PERSON2}:: I started learning shell scripting $PERSON1"
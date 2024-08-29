#!/bin/bash

# PERSON1=Suresh      # variable syntax --> no spcae between variable name, = and value
# PERSON2=Prasad

# # variable can be called in 2 ways --> $variable_name or ${variable_name}

# echo "$PERSON1:: Hi ${PERSON2}, How are you?"
# echo "${PERSON2}:: Hi $PERSON1, I am fine. How are you doing"
# echo "$PERSON1:: I am donig good ${PERSON2}. What's going on?"
# echo "${PERSON2}:: I started learning shell scripting $PERSON1"

PERSON1=Yeswanth
PERSON2=Prasad

echo "$PERSON1:: Hi $PERSON2, Good moring!"
echo "$PERSON2:: Hi $PERSON1, Morning!"
echo "$PERSON1:: Do we have any tasks $PERSON2 today in KPMG project?"
echo "$PERSON2:: Yes, $PERSON1 we have enable ASE for EAE STG PROD servers"
#!/bin/bash

# PERSON1=$1
# PERSON2=$2

# #sh 04 varaiables  suresh prasad
# # variable can be called in 2 ways --> $variable_name or ${variable_name}

# echo "$PERSON1:: Hi ${PERSON2}, How are you?"
# echo "${PERSON2}:: Hi $PERSON1, I am fine. How are you doing"
# echo "$PERSON1:: I am donig good ${PERSON2}. What's going on?"
# echo "${PERSON2}:: I started learning shell scripting $PERSON1"

PERSON1=$1
PERSON2=$2
PERSON2=$3

echo "$PERSON1:: Hi $PERSON2, Good moring!"
echo "$PERSON2:: Hi $PERSON1, Morning!"
echo "$PERSON1:: Do we have any tasks $PERSON2 today in KPMG project?"
echo "$PERSON2:: Yes, $PERSON1 we have enable ASE for EAE STG PROD servers"
echo "$PERSON3:: Hi $PERSON2, do we have any CR's to complete today"
echo "$PERSON3:: Hi $PERSON1, is that Azure pipelines configuration completed"
echo "$PERSON2:: Yes $PERSON3, completed"
echo "$PERSON2:: Yes $PERSON3, I will close by EOD"
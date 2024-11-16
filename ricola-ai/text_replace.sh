#!/bin/bash  

FILE="test-output.txt"  
SEARCH_TERM="db_name="  
NEW_VALUE="db_name=newvalue"  

if grep -q "$SEARCH_TERM" "$FILE"; then  
    sed -i "s|$SEARCH_TERM.*|$NEW_VALUE|" "$FILE"  
else  
    echo "$NEW_VALUE" >> "$FILE"  
fi
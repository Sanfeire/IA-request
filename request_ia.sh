#!/bin/bash

#FUNCTIONS
caca (){
        read request
        sleep 3
        curl https://api.openai.com/v1/engines/davinci-instruct-beta-v3/completions \
          -H "Content-Type: application/json" \
          -H "Authorization: Bearer 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" \
          -d '{
          "prompt": "'"$request"'",
          "temperature": 0.7,
          "max_tokens": 1952,
          "top_p": 1,
          "frequency_penalty": 0,
          "presence_penalty": 0
        }'
}

#-----------------------------------------------
#MAIN
echo "Bienvenid@, haz tu petición a la IA ---->"
sleep 1
caca

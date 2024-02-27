#!/bin/bash
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# Ollama is intended to be run as a local development server.
# To download gemma:2b and store it in the container image, 
# this script starts the ollama server and sends a pull command to it. 

# Function to check if ollama serve is listening on port 8080
wait_for_ollama() {
  while ! nc -z localhost 8080; do 
    sleep 1  # Wait 1 second before checking again
  done
}

# Start ollama serve in the background
ollama serve & 

# Wait for ollama serve to start listening
wait_for_ollama
echo "ollama serve is now listening on port 8080"

# Run ollama pull
ollama pull gemma:2b

# Indicate successful completion
echo "ollama pull gemma:2b completed"

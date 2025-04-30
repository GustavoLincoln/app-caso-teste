#!/bin/bash

echo "🔧 Construindo containers..."
docker-compose build

echo "🚀 Subindo containers e executando teste..."
docker-compose up --abort-on-container-exit --exit-code-from tester

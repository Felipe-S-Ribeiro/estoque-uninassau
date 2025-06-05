#!/bin/bash

# Script para iniciar o sistema Estoque Uninassau localmente

echo "Iniciando o sistema Estoque Uninassau..."

# Verificar se o Node.js está instalado
if ! command -v node &> /dev/null; then
    echo "Node.js não encontrado. Por favor, instale o Node.js (v14 ou superior)."
    exit 1
fi

# Verificar se o npm está instalado
if ! command -v npm &> /dev/null; then
    echo "npm não encontrado. Por favor, instale o npm."
    exit 1
fi

# Verificar se o arquivo .env existe
if [ ! -f .env ]; then
    echo "Arquivo .env não encontrado. Criando a partir do exemplo..."
    if [ -f .env.example ]; then
        cp .env.example .env
        echo "Arquivo .env criado. Por favor, edite-o com suas configurações."
    else
        echo "ERRO: Arquivo .env.example não encontrado."
        echo "Por favor, crie um arquivo .env com as seguintes variáveis:"
        echo "PORT=5000"
        echo "NODE_ENV=development"
        echo "MONGO_URI=mongodb://localhost:27017/estoque-uninassau"
        echo "JWT_SECRET=seu_segredo_jwt"
        exit 1
    fi
fi

# Instalar dependências
echo "Instalando dependências..."
npm install

# Iniciar o servidor
echo "Iniciando o servidor..."
echo "O sistema estará disponível em: http://localhost:5000"
npm start

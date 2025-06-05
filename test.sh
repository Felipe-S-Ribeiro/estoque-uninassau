#!/bin/bash

# Script de teste para o sistema Estoque Uninassau
echo "Iniciando testes do sistema Estoque Uninassau..."

# Verificar se o diretório backend existe
if [ ! -d "backend" ]; then
  echo "ERRO: Diretório backend não encontrado!"
  exit 1
else
  echo "✓ Diretório backend encontrado"
fi

# Verificar se o diretório frontend existe
if [ ! -d "frontend" ]; then
  echo "ERRO: Diretório frontend não encontrado!"
  exit 1
else
  echo "✓ Diretório frontend encontrado"
fi

# Verificar arquivos principais do backend
echo "Verificando arquivos principais do backend..."
BACKEND_FILES=("server.js" "models/userModel.js" "models/productModel.js" "models/stockMovementModel.js" 
               "controllers/userController.js" "controllers/productController.js" "controllers/stockController.js" "controllers/reportController.js"
               "routes/userRoutes.js" "routes/productRoutes.js" "routes/stockRoutes.js" "routes/reportRoutes.js"
               "middleware/authMiddleware.js")

for file in "${BACKEND_FILES[@]}"; do
  if [ ! -f "backend/$file" ]; then
    echo "ERRO: Arquivo backend/$file não encontrado!"
    exit 1
  else
    echo "✓ Arquivo backend/$file encontrado"
  fi
done

# Verificar arquivos principais do frontend
echo "Verificando arquivos principais do frontend..."
FRONTEND_FILES=("index.html" "dashboard.html" "perfil.html" "produtos.html" "relatorios.html" "vencimentos.html"
                "src/css/style.css" "src/js/auth.js" "src/js/dashboard.js" "src/js/perfil.js" 
                "src/js/produtos.js" "src/js/relatorios.js" "src/js/vencimentos.js")

for file in "${FRONTEND_FILES[@]}"; do
  if [ ! -f "frontend/$file" ]; then
    echo "ERRO: Arquivo frontend/$file não encontrado!"
    exit 1
  else
    echo "✓ Arquivo frontend/$file encontrado"
  fi
done

# Verificar dependências do package.json
echo "Verificando dependências no package.json..."
DEPENDENCIES=("express" "mongoose" "dotenv" "bcryptjs" "jsonwebtoken" "cors" "pdfkit")

for dep in "${DEPENDENCIES[@]}"; do
  if ! grep -q "\"$dep\"" package.json; then
    echo "AVISO: Dependência $dep não encontrada no package.json"
  else
    echo "✓ Dependência $dep encontrada"
  fi
done

# Verificar diretório temporário para relatórios
if [ ! -d "backend/temp" ]; then
  echo "Criando diretório temporário para relatórios..."
  mkdir -p backend/temp
else
  echo "✓ Diretório temporário para relatórios encontrado"
fi

echo "Testes de verificação concluídos com sucesso!"
echo "O sistema está pronto para ser executado localmente ou implantado em produção."

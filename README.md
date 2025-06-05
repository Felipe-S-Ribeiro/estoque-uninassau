# Estoque Uninassau - Documentação

## Visão Geral

O Estoque Uninassau é um sistema completo de controle de estoque desenvolvido com tecnologias modernas para gerenciar produtos, movimentações, relatórios e controle de vencimentos. O sistema possui interface responsiva e intuitiva, adaptada para diferentes dispositivos.

## Tecnologias Utilizadas

### Backend
- Node.js com Express
- MongoDB para banco de dados
- JWT para autenticação
- PDFKit para geração de relatórios

### Frontend
- HTML5, CSS3, JavaScript
- Bootstrap 5 para interface responsiva
- Chart.js para gráficos
- Font Awesome para ícones

## Funcionalidades Principais

1. **Autenticação e Controle de Acesso**
   - Cadastro de usuários
   - Login seguro com JWT
   - Níveis de acesso (administrador e usuário comum)

2. **Dashboard**
   - Visão geral do estoque
   - Gráficos informativos
   - Alertas de produtos com baixo estoque
   - Alertas de produtos próximos ao vencimento

3. **Controle de Estoque**
   - Cadastro completo de produtos
   - Movimentações de entrada e saída
   - Ajustes de estoque
   - Histórico de movimentações

4. **Relatórios**
   - Relatório de estoque atual
   - Relatório de movimentações
   - Relatório de vencimentos
   - Exportação em PDF e CSV

5. **Controle de Vencimentos**
   - Monitoramento de produtos vencidos
   - Alerta de produtos próximos ao vencimento
   - Filtros por período

## Estrutura do Projeto

```
estoque-uninassau/
├── backend/
│   ├── config/
│   ├── controllers/
│   ├── middleware/
│   ├── models/
│   ├── routes/
│   ├── temp/
│   └── server.js
├── frontend/
│   ├── public/
│   ├── src/
│   │   ├── assets/
│   │   ├── css/
│   │   └── js/
│   ├── dashboard.html
│   ├── estoque.html
│   ├── index.html
│   ├── movimentacoes.html
│   ├── perfil.html
│   ├── produtos.html
│   ├── relatorios.html
│   └── vencimentos.html
├── .env
├── package.json
├── README.md
└── vercel.json
```

## Instalação Local

### Pré-requisitos
- Node.js (v14 ou superior)
- MongoDB

### Passos para Instalação

1. Clone o repositório:
   ```
   git clone https://github.com/seu-usuario/estoque-uninassau.git
   cd estoque-uninassau
   ```

2. Instale as dependências:
   ```
   npm install
   ```

3. Configure as variáveis de ambiente:
   Crie um arquivo `.env` na raiz do projeto com o seguinte conteúdo:
   ```
   PORT=5000
   NODE_ENV=development
   MONGO_URI=mongodb://localhost:27017/estoque-uninassau
   JWT_SECRET=seu_segredo_jwt
   ```

4. Inicie o servidor:
   ```
   npm start
   ```

5. Acesse o sistema em seu navegador:
   ```
   http://localhost:5000
   ```

## Deploy em Produção

O sistema está configurado para deploy na Vercel. Para realizar o deploy:

1. Crie uma conta na [Vercel](https://vercel.com)
2. Instale a CLI da Vercel:
   ```
   npm install -g vercel
   ```

3. Faça login na sua conta:
   ```
   vercel login
   ```

4. Configure as variáveis de ambiente na Vercel:
   ```
   vercel secrets add mongo_uri "sua_string_de_conexao_mongodb"
   vercel secrets add jwt_secret "seu_segredo_jwt"
   ```

5. Realize o deploy:
   ```
   vercel
   ```

## Uso do Sistema

### Primeiro Acesso

1. Acesse a página inicial e clique em "Cadastre-se"
2. Preencha o formulário de cadastro
3. O primeiro usuário cadastrado será automaticamente definido como administrador

### Navegação

- **Dashboard**: Visão geral do estoque e alertas
- **Produtos**: Cadastro e gerenciamento de produtos
- **Estoque**: Visualização do estoque atual
- **Movimentações**: Registro e histórico de movimentações
- **Vencimentos**: Controle de produtos vencidos ou a vencer
- **Relatórios**: Geração de relatórios em diferentes formatos
- **Perfil**: Gerenciamento de informações do usuário

## Suporte e Contato

Para suporte ou dúvidas sobre o sistema, entre em contato através do email: suporte@uninassau.edu.br

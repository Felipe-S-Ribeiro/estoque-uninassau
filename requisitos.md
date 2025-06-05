# Requisitos do Sistema - Estoque Uninassau

## Requisitos Funcionais

### Autenticação e Usuários
- Sistema de cadastro de novos usuários
- Sistema de login com autenticação segura
- Perfil de usuário com informações básicas e possibilidade de edição
- Níveis de acesso (administrador e usuário comum)

### Página Inicial (Dashboard)
- Visão geral do estoque atual
- Alertas de produtos com baixo estoque
- Alertas de produtos próximos ao vencimento
- Resumo de movimentações recentes
- Gráficos informativos sobre o estado do estoque

### Controle de Estoque
- Cadastro de produtos com informações detalhadas:
  - Nome do produto
  - Código/SKU
  - Categoria
  - Fornecedor
  - Preço de custo
  - Preço de venda
  - Quantidade em estoque
  - Data de fabricação
  - Data de validade
  - Localização no estoque
  - Descrição/observações
- Registro de entrada de produtos no estoque
- Registro de saída de produtos do estoque
- Histórico de movimentações por produto
- Busca e filtragem de produtos

### Relatórios
- Relatório de produtos em estoque
- Relatório de movimentações (entradas e saídas)
- Relatório de produtos por categoria
- Relatório de produtos por fornecedor
- Relatório de produtos com baixo estoque
- Exportação de relatórios em formatos comuns (PDF, CSV)

### Controle de Vencimento
- Visualização de produtos por data de vencimento
- Alertas configuráveis para produtos próximos ao vencimento
- Relatório específico de produtos vencidos ou a vencer

## Requisitos Não Funcionais

### Usabilidade
- Interface intuitiva e amigável
- Design responsivo para acesso em diferentes dispositivos
- Feedback visual para ações do usuário
- Tempo de resposta rápido para operações comuns

### Segurança
- Autenticação segura com senhas criptografadas
- Proteção contra injeção SQL e outros ataques comuns
- Controle de acesso baseado em permissões
- Validação de dados em formulários

### Performance
- Carregamento rápido das páginas (menos de 3 segundos)
- Otimização para consultas frequentes ao banco de dados
- Paginação para grandes volumes de dados

### Tecnologias
- Frontend: HTML, CSS, JavaScript, Bootstrap
- Backend: Node.js com Express
- Banco de Dados: MongoDB
- Autenticação: JWT (JSON Web Tokens)
- Deploy: Vercel ou plataforma similar

### Compatibilidade
- Compatível com navegadores modernos (Chrome, Firefox, Safari, Edge)
- Responsivo para dispositivos móveis e desktop

## Escopo do MVP (Minimum Viable Product)
1. Sistema de autenticação completo
2. Cadastro e gerenciamento básico de produtos
3. Registro de entradas e saídas
4. Visualização do estoque atual
5. Alertas de vencimento
6. Relatórios básicos
7. Interface responsiva e amigável

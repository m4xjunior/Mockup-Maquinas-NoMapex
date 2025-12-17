# Mockup Máquinas NoMapex

Projeto Next.js com React nas versões mais recentes.

## Tecnologias

- **Next.js** 16.0.10
- **React** 19.2.3
- **TypeScript** 5.9.3
- **Tailwind CSS** 4.1.18
- **ESLint** 9.39.2
- **Vercel CLI** 50.1.0

## Scripts Disponíveis

- `npm run dev` - Inicia o servidor de desenvolvimento
- `npm run build` - Cria a build de produção
- `npm run start` - Inicia o servidor de produção
- `npm run lint` - Executa o linter ESLint
- `npm run vercel` - Faz deploy na Vercel (preview)
- `npm run vercel:prod` - Faz deploy na Vercel (produção)

## Estrutura do Projeto

```
├── src/
│   └── app/
│       ├── layout.tsx
│       ├── page.tsx
│       └── globals.css
├── public/
├── package.json
├── tsconfig.json
├── tailwind.config.ts
├── next.config.ts
├── vercel.json
└── .eslintrc.json
```

## Como Começar

1. Instale as dependências (já instaladas):
   ```bash
   npm install
   ```

2. Inicie o servidor de desenvolvimento:
   ```bash
   npm run dev
   ```

3. Abra [http://localhost:3000](http://localhost:3000) no seu navegador.

## Deploy na Vercel

### Opção 1: Via CLI

1. Faça login na Vercel:
   ```bash
   npx vercel login
   ```

2. Faça deploy (preview):
   ```bash
   npm run vercel
   ```

3. Faça deploy em produção:
   ```bash
   npm run vercel:prod
   ```

### Opção 2: Via Interface Web

1. Acesse [vercel.com](https://vercel.com) e faça login
2. Conecte seu repositório Git (GitHub, GitLab, Bitbucket)
3. A Vercel detectará automaticamente o Next.js e fará o deploy
4. Cada push para a branch principal fará deploy automático em produção

### Configuração

O arquivo `vercel.json` já está configurado com as opções padrão para Next.js. A Vercel detecta automaticamente projetos Next.js, então este arquivo é opcional, mas útil para configurações customizadas.


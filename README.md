# Pedido de Almoco 3.0

Sistema web estatico para registrar pedidos de refeicao, comprovantes,
resumos e mensagens para WhatsApp.

## Arquivos principais

- `index.html`: aplicacao pronta para abrir no navegador ou publicar.
- `supabase-config.js`: configuracao publica do Supabase.
- `supabase/schema.sql`: script para criar as tabelas no Supabase.
- `vercel.json`: configuracao simples para deploy na Vercel.

## Supabase

1. Crie um projeto no Supabase.
2. Abra SQL Editor.
3. Execute o conteudo de `supabase/schema.sql`.
4. Copie a Project URL e a anon public key em Project Settings > API.
5. Cole esses valores em `supabase-config.js`.

Enquanto `supabase-config.js` estiver com os placeholders, o sistema usa
o armazenamento local do navegador. Depois de configurar o Supabase, os
pedidos e comprovantes passam a ir para o banco.

## Vercel

Depois que o projeto estiver no GitHub, importe o repositorio na Vercel.
Como e um site estatico, nao precisa configurar build command. A Vercel
vai publicar o `index.html` e gerar um link publico.

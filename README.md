# Pedido de Almoço 4.0

Sistema web estático para registrar pedidos de refeição, comprovantes, resumos e mensagens para WhatsApp.

## Arquivos principais

- `index.html`: aplicação pronta para abrir no navegador ou publicar.
- `supabase-config.js`: configuração pública do Supabase.
- `supabase/schema.sql`: script para criar as tabelas no Supabase.
- `vercel.json`: configuração simples para deploy na Vercel.
- `START-MELHORIAS.md`: lista de ideias para próximas melhorias.

## Acesso

- Operacional: entra direto para pedido rápido.
- Administrador: usuário `admin` e senha `admin`.

## Supabase

O projeto está preparado para usar o Supabase como banco de dados. Execute o conteúdo de `supabase/schema.sql` no SQL Editor do Supabase e mantenha a URL/chave pública no arquivo `supabase-config.js`.

## Vercel

Depois que o projeto estiver no GitHub, importe o repositório na Vercel. Como é um site estático, não precisa configurar build command. A Vercel publica o `index.html` e gera um link público.

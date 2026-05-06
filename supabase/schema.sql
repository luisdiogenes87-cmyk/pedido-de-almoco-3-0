create table if not exists public.pedidos (
  id bigint primary key,
  nome text not null,
  empresa text not null,
  local text,
  data date not null,
  hora text not null,
  atividade text not null,
  refeicao text not null,
  motivo text not null,
  valor numeric(10,2) not null,
  observacao text,
  data_criacao text,
  created_at timestamptz not null default now()
);

create table if not exists public.comprovantes (
  id bigint primary key,
  nome text not null,
  nome_arquivo text not null,
  tipo text,
  tamanho text,
  data_envio text,
  arquivo text not null,
  created_at timestamptz not null default now()
);

alter table public.pedidos enable row level security;
alter table public.comprovantes enable row level security;

drop policy if exists "Pedidos leitura publica" on public.pedidos;
drop policy if exists "Pedidos insercao publica" on public.pedidos;
drop policy if exists "Pedidos atualizacao publica" on public.pedidos;
drop policy if exists "Pedidos exclusao publica" on public.pedidos;

create policy "Pedidos leitura publica" on public.pedidos for select using (true);
create policy "Pedidos insercao publica" on public.pedidos for insert with check (true);
create policy "Pedidos atualizacao publica" on public.pedidos for update using (true) with check (true);
create policy "Pedidos exclusao publica" on public.pedidos for delete using (true);

drop policy if exists "Comprovantes leitura publica" on public.comprovantes;
drop policy if exists "Comprovantes insercao publica" on public.comprovantes;
drop policy if exists "Comprovantes exclusao publica" on public.comprovantes;

create policy "Comprovantes leitura publica" on public.comprovantes for select using (true);
create policy "Comprovantes insercao publica" on public.comprovantes for insert with check (true);
create policy "Comprovantes exclusao publica" on public.comprovantes for delete using (true);

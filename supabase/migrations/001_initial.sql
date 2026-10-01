create table campaigns (
 id uuid primary key default gen_random_uuid(),
 name text not null,
 objective text not null,
 created_at timestamptz default now()
);

create table prospects (
 id uuid primary key default gen_random_uuid(),
 campaign_id uuid references campaigns(id),
 company_name text not null,
 website text,
 contact_email text,
 source_url text,
 status text default 'new',
 created_at timestamptz default now()
);

create table email_drafts (
 id uuid primary key default gen_random_uuid(),
 prospect_id uuid references prospects(id),
 subject text,
 body text,
 status text default 'draft',
 created_at timestamptz default now()
);

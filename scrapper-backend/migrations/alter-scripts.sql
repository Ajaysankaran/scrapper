CREATE TABLE if not exists category (
	id uuid NOT NULL default gen_random_uuid(),
	"name" varchar(255) NULL,
	description varchar(500) NULL,
	created_by varchar(255) NULL,
	created_date timestamp default now(),
	last_modified_by varchar(255) NULL,
	last_modified_date timestamp default now(),
	CONSTRAINT category_pkey PRIMARY KEY (id)
);

create table application (
    id uuid NOT null,
    category_id uuid NOT NULL,
    app_name VARCHAR(255) NOT NULL,
    description VARCHAR(500),
    created_by varchar(255) NULL,
	created_date timestamp default now(),
	last_modified_by varchar(255) NULL,
	last_modified_date timestamp default now(),
    CONSTRAINT application_pkey PRIMARY KEY (id),
    CONSTRAINT application_category_fkey FOREIGN KEY(category_id) REFERENCES category (id)
);

create table app_config (
	id uuid not null,
	app_id uuid not null,
	config_name VARCHAR(255) not null,
	action_name VARCHAR(255) not null,
	config_value VARCHAR(500) not null,
	CONSTRAINT app_config_pkey PRIMARY KEY (id),
	CONSTRAINT app_config_fkey FOREIGN KEY (app_id) REFERENCES application (id)
);

CREATE TABLE category_params (
	id uuid NOT NULL,
	category_id uuid NULL,
	"name" varchar(255) NULL,
	description varchar(255) NULL,
	data_type VARCHAR(100) not NULL,
	created_by varchar(255) NULL,
	created_date timestamp default now(),
	last_modified_by varchar(255) NULL,
	last_modified_date timestamp default now(),
	CONSTRAINT category_params_pkey PRIMARY KEY (id),
	CONSTRAINT category_params_fkey FOREIGN KEY (category_id) REFERENCES category (id)
);

CREATE TABLE params_dom_config (
	id uuid NOT NULL,
	app_id uuid NOT NULL,
	param_id uuid NULL,
	dom_path varchar(500) NULL,
	element_type varchar(255) null,
	attribute_path varchar(255) null,
	created_by varchar(255) NULL,
	created_date timestamp default now(),
	last_modified_by varchar(255) NULL,
	last_modified_date timestamp default now(),
	CONSTRAINT config_pkey PRIMARY KEY (id)
);



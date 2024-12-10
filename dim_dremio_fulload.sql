-- metadata.dim_dremio_fullload definition

-- Drop table

-- DROP TABLE metadata.dim_dremio_fullload;

CREATE TABLE metadata.dim_dremio_fullload (
	id varchar(10) NOT NULL,
	qry_name varchar(200) NULL,
	select_string varchar(10000) NULL,
	created_date date NULL,
	update_date date NULL,
	status int4 NOT NULL,
	description varchar(5000) NULL,
	type_engine varchar(20) NULL,
	type_source varchar(20) NULL,
	env varchar(10) NULL
);

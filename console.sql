create table user(
id integer primary key not null,
email text(255) not null,
password text(255) not null,
create_time default current_timestamp
);

create table project(
id integer not null ,
name text(255) not null,
user_id integer,
FOREIGN KEY(user_id) REFERENCES user(id)
);

create table suite_tags(
suite_id integer not null,
project_id integer not null,
FOREIGN KEY(project_id) REFERENCES project(id),
FOREIGN KEY(suite_id) REFERENCES suite(id)
);

create table suite(
id integer not null ,
name text(255) not null
);


create table case_tags(
suite_id integer not null,
case_id integer not null,
FOREIGN KEY(suite_id) REFERENCES suite(id),
FOREIGN KEY(case_id) REFERENCES caseq(id)
);

create table caseq(
id integer not null ,
name text(255) not null
);


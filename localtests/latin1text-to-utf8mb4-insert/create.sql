drop table if exists gh_ost_test;
create table gh_ost_test (
  id int auto_increment,
  t text charset latin1 collate latin1_swedish_ci,
  primary key(id)
) auto_increment=1 charset latin1 collate latin1_swedish_ci;

insert into gh_ost_test values (null, char(189));
insert into gh_ost_test values (null, char(190));

drop table if exists gh_ost_test;
create table gh_ost_test (
  id INT NOT NULL AUTO_INCREMENT,
  json2 json NULL,
  json2_json_virtual json GENERATED ALWAYS AS (json_extract(json2,'$.json_in_json')) VIRTUAL,
  PRIMARY KEY (id)
) auto_increment=1;

drop event if exists gh_ost_test;
delimiter ;;
create event gh_ost_test
  on schedule every 1 second
  starts current_timestamp
  ends current_timestamp + interval 60 second
  on completion not preserve
  enable
  do
begin
  insert ignore into json_table (id, json2) values (
    1, '{"our_string": "complete",  "json_in_json": [{"2021-05-27 08:36:59 -0700": [null, "complete"]}]}'
  );
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
  update json_table
    set json2 = '{"our_string": "complete",  "json_in_json": [{"2021-05-28 08:36:59 -0700": [null, "we are borg"]}, {"2021-05-29 08:36:59 -0700": ["we are borg", "you have been assimilated!!"]}]}'
    where id = 1;
end ;;

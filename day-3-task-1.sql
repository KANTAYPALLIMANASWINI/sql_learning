USE college_info;
select user,host from mysql.user;
create user 'budigi'@'%'
identified by 'budigi@123';

show grants for  'budigi'@'%';
grant select,insert,update on college_info.* to 'budigi'@'%';
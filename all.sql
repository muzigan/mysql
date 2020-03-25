

create database aidatadb  DEFAULT CHARSET utf8;
use aidatadb;
source   aidatadb.sql;

create database gumigps DEFAULT CHARSET utf8;
use gumigps;
source   gumigps.sql;
source   alarm.sql

create database gumigps_gs  DEFAULT CHARSET utf8;
use gumigps_gs;
source   gumigps_gs.sql;

create database gumigps_org  DEFAULT CHARSET utf8;
use gumigps_org;
source   gumigps_org.sql;

create database payment_gateway  DEFAULT CHARSET utf8;
use payment_gateway;
source   payment_gateway.sql;

create database shared_vehicle  DEFAULT CHARSET utf8;
use shared_vehicle;
source   shared_vehicle.sql;

create database wdms  DEFAULT CHARSET utf8;
use wdms;
source   wdms.sql;

flush privileges; 

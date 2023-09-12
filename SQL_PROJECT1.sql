create database ola;
use ola;
create table drivers
(
dr_id int primary key,
b_date date,
dr_name varchar (20),
pickup_point varchar (25),
dropoff_point varchar (25),
fare int
);
use ola;
create table passengers
(
pgr_id int primary key,
dr_id int,
b_date date,
pgr_name varchar(30),
available_vehicle varchar (5)
);
use ola;
select drivers.dr_id, passengers.pgr_id, drivers.b_date
from drivers
inner join passengers
on drivers.dr_id=passengers.pgr_id;
use ola;
select drivers dr_name, pickup_point, dropoff_point, fare
from drivers
left join passengers
on drivers.dr_name=passengers.pgr_name;
select drivers. dr_name, pickup_point, dropoff_point, fare
from drivers    
right join passengers
on drivers.dr_name=passengers.pgr_name;
use ola;

select dr_id, b_date, dr_name, pickup_point, dropoff_point, fare
FROM DRIVERS
ORDER BY DRIVERS.DR_ID;
SELECT dr_name, pickup_point, dropoff_point, fare
FROM DRIVERS
CROSS JOIN PASSENGERS;
USE OLA;
SELECT PASSENGERS.PGR_NAME, DRIVERS.DR_ID
FROM PASSENGERS
CROSS JOIN DRIVERS
WHERE PASSENGERS.DR_ID=DRIVERS.DR_ID;




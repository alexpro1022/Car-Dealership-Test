insert into salesman (
	salesman_id,
	first_name,
	last_name
) values (
	1,
	'Joey',
	'Powel'
);

insert into customer (
	customer_id,
	first_name,
	last_name
) values (
	1,
	'Luke',
	'Skywalker'
);

insert into cars (
	car_id,
	model
) values (
	1,
	'Chevrolet Corvette'
);

insert into mechanic (
	mechanic_id,
	first_name,
	last_name
) values (
	1,
	'Gerold',
	'Yarker'
);

--functions to hire new employee / 2nd function to add a car to the lot

create function new_employee (_salesman_id INTEGER,_first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin 
		insert into salesman(salesman_id,first_name,last_name)
		values (_salesman_id, _first_name, _last_name);
	
end;
$MAIN$
language plpgsql;

select new_employee(2, 'Greg', 'Fercik');
select * from salesman;
------------------------------------------------------------------------
create function add_car (_car_id INTEGER, _model VARCHAR)
returns VOID
as $MAIN$
begin
		insert into cars(car_id,model)
		values (_car_id, _model);
end;
$MAIN$
language plpgsql;

select add_car(2, 'Dodge Viper');
select * from cars






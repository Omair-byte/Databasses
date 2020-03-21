describe pobyrne.h_hotel;

alter session set current_schema = oduadu;

--Q2------------------
create table my_hotel as (select * from pobyrne.h_hotel);



--Q3----------------
select * from my_hotel;


--Q4----------------to add a attribute to the table after the table is created
alter table my_hotel
add nightly_fee
number(6);


--Q5----------------to set a attribute to componetns which meet a certain requirement
update my_hotel
    set nightly_fee =150 where hotel_no >400;



--Q6-----------------to make a primary key in the table
alter table my_hotel
    add constraint pk_hotel_no primary key (hotel_no);
    
    
    
--Q7-----------------create a table and designate the primary key,Q8referances my_hotel as well
create table my_booking
(
    bookcode 
        number(8)
        primary key,
    start_date
        Date
        not null,
    end_date
        Date
        not null,
    hotel_no
        number(6)
        not null
        references my_hotel
);

drop table my_booking;

--Q8-----------------inserting content into the table
insert into my_booking values
(
    01234567,
    '28/JAN/2020',
    '29/JAN/2020',
    300
);

insert into my_booking values
(
    76543120,
    '28/JAN/2020',
    '29/JAN/2020',
    300
);


insert into my_booking values
(
    0126543,
    '28/dec/2020',
    '29/mar/2020',
    300
);

insert into my_booking values
(
    02345667,
    '28/MAY/2020',
    '29/SEP/2020',
    300
);


SELECT * FROM my_booking;


commit;


















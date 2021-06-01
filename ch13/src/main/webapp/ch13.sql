create table pds_item (
	id number NOT NULL,
	fileName VARCHAR2(100) NOT NULL,
	fileSize NUMBER,
	description VARCHAR2(255)
);

select * from pds_item;
update pds_item set filename='k_'||filename;
delete from PDS_ITEM where id between 1 and 11;
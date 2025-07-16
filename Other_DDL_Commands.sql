use puma;
# Select Table
select * from inventory;

# Add column
alter table inventory add new_column_2 int;

# Modify Column
alter table inventory modify new_column_2 varchar(30);

# Rename Column
alter table inventory rename column new_column_2 to new_column_3;

# Drop Column
alter table inventory drop column new_column_1;

# Rename Table
rename table inventory to inventories;

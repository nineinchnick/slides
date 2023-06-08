select month, format('%,d', cast(value * 1000000 as bigint)) as value from (values (date '2023-04-01', random()), (date '2023-05-01', random())) as t(month, value);

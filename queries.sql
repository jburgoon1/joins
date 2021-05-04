-- write your queries here
--1
SELECT * FROM owners LEFT JOIN  vehicles ON owners.id = vehicles.owner_id;
--2
SELECT first_name, last_name, COUNT(*) FROM vehicles JOIN owners ON vehicles.owner_id = owners.id
GROUP BY first_name, last_name ORDER BY first_name;
--3
SELECT first_name, last_name, avg(round(price)) AS average_price, COUNT(*) AS vehicle_count FROM vehicles JOIN owners ON vehicles.owner_id = owners.id GROUP BY first_name, last_name ORDER BY first_name desc;
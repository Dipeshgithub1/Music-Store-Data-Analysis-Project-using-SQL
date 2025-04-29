-- Basic:
-- 1. Retrieve the total number of orders placed.

select count(order_id) from orders;

-- 2.Calculate the total revenue generated from pizza sales.
SELECT 
  sum(order_details.quantity * pizzas.price) AS total_revenue
FROM order_details
JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id;

-- 3.Identify the highest-priced pizza.
select pizza_types.name,pizzas.price from pizza_types
join pizzas 
on pizza_types.pizza_type_id = pizzas.pizza_type_id
order by pizzas.price DESC
limit 1;
-- 4.Identify the most common pizza size ordered.
SELECT 
  pizzas.size,
  COUNT(order_details.order_details_id) AS order_count 
FROM 
  pizzas
JOIN
  order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY 
  pizzas.size
ORDER BY 
  order_count DESC;


-- 5.List the top 5 most ordered pizza types along with their quantities.


SELECT 
  pt.name AS pizza_name,
  SUM(od.quantity) AS total_quantity
FROM 
  order_details od
JOIN 
  pizzas p ON od.pizza_id = p.pizza_id
JOIN 
  pizza_types pt ON p.pizza_type_id = pt.pizza_type_id
GROUP BY 
  pt.name
ORDER BY 
  total_quantity DESC
LIMIT 5;



--  Intermediate:
-- 6. Join the necessary tables to find the total quantity of each pizza category ordered.

select pizza_types.category,
sum(order_details.quantity) AS quantity 
FROM pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details 
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category order by quantity desc;


-- 2. Determine the distribution of orders by hour of the day.

select hour(order_time) as hour ,count(order_id)  as order_count from orders 
group by hour(order_time);

-- 3. Join relevant tables to find the category-wise distribution of pizzas.

select category, count(name) from pizza_types 
group by category


-- 4. Group the orders by date and calculate the average number of pizzas ordered per day.


select   pt.name AS pizza_name,
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



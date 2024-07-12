/* ---------- Create database and table ---------- */
CREATE DATABASE IF NOT EXISTS db_food;
USE db_food;
CREATE TABLE user(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(225),
    email VARCHAR(225),
    password VARCHAR(100)
);
CREATE TABLE restaurant(
    res_id INT PRIMARY KEY AUTO_INCREMENT,
    res_name VARCHAR(125),
    image VARCHAR(225),
    description VARCHAR(255)
);
CREATE TABLE food_type(
    type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(255)
);
CREATE TABLE rate_res(
    rate_res_id INT PRIMARY KEY AUTO_INCREMENT,
    amount INT,
    date_rate DATETIME,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    res_id INT,
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);
CREATE TABLE like_res(
    like_res_id INT PRIMARY KEY AUTO_INCREMENT,
    date_like DATETIME,
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    res_id INT,
    FOREIGN KEY (res_id) REFERENCES restaurant(res_id)
);
CREATE TABLE food(
    food_id INT PRIMARY KEY AUTO_INCREMENT,
    food_name VARCHAR(225),
    image VARCHAR(225),
    price FLOAT,
    description VARCHAR(225),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES food_type(type_id)
);
CREATE TABLE sub_food(
    sub_id INT PRIMARY KEY AUTO_INCREMENT,
    sub_name VARCHAR(255),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);
CREATE TABLE orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    amount INT,
    code VARCHAR(255),
    arr_sub_id VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES food(food_id)
);
/* ---------- Insert data ---------- */
INSERT INTO
    user(full_name, email, password)
VALUES
    (
        "Kermit Shepherd",
        "id.sapien@aol.ca",
        "FWD94JJR7RQ"
    ),
    (
        "Yael Sargent",
        "mi@protonmail.edu",
        "DKB18GUU7BW"
    ),
    (
        "Allen Randolph",
        "eleifend@google.org",
        "WRT98MAN4HG"
    ),
    (
        "Maisie Ross",
        "purus.gravida.sagittis@google.com",
        "HCO07LHK4FW"
    ),
    (
        "Addison Carter",
        "vitae.velit@aol.edu",
        "COR42MMK6LV"
    ),
    (
        "Shannon Aguilar",
        "purus@icloud.org",
        "UGJ38VBB3OE"
    ),
    (
        "Dorothy Stanley",
        "mauris@outlook.org",
        "GYC91EHS3ID"
    ),
    ("Cora Bender", "id@hotmail.ca", "RVF58KOS1NC"),
    (
        "Kuame Robinson",
        "egestas.lacinia.sed@google.edu",
        "QHR54DJJ0MO"
    ),
    (
        "Rebekah Young",
        "duis.ac@yahoo.com",
        "SRH11GOO1KU"
    ),
    (
        "Curran Thompson",
        "tempor.lorem@yahoo.edu",
        "JLU41VGE9KX"
    ),
    (
        "Hiram Byers",
        "in.at@hotmail.com",
        "KJS56GEL1OV"
    ),
    (
        "Jordan Holmes",
        "magna.suspendisse@yahoo.net",
        "IAE87DLV6LK"
    );
INSERT INTO
    restaurant (res_name, image, description)
VALUES
    (
        "Pizza Palace",
        "images/pizza_palace.jpg",
        "Delicious pizzas made with fresh ingredients and a variety of toppings."
    ),
    (
        "Noodle Nirvana",
        "images/noodle_nirvana.jpg",
        "Authentic Asian noodle dishes with bold flavors and generous portions."
    ),
    (
        "Taco Fiesta",
        "images/taco_fiesta.jpg",
        "Lively atmosphere with traditional and creative tacos, plus margaritas."
    ),
    (
        "The Curry Corner",
        "images/curry_corner.jpg",
        "Exquisite Indian curries with fragrant spices and a range of vegetarian options."
    ),
    (
        "Burger Barn",
        "images/burger_barn.jpg",
        "Classic American burgers made with juicy patties, fresh toppings, and crispy fries."
    ),
    (
        "Sushi Symphony",
        "images/sushi_symphony.jpg",
        "Upscale sushi restaurant offering fresh seafood, creative rolls, and traditional Japanese dishes."
    ),
    (
        "Crepe Heaven",
        "images/crepe_heaven.jpg",
        "Sweet and savory crepes made with authentic French batter and a variety of delicious fillings."
    ),
    (
        "Happy Wok",
        "images/happy_wok.jpg",
        "Healthy and flavorful stir-fries with fresh vegetables, protein options, and homemade sauces."
    ),
    (
        "Mamma's Kitchen",
        "images/mammas_kitchen.jpg",
        "Homestyle cooking with comforting dishes like pasta, lasagna, and slow-cooked meats."
    ),
    (
        "The Grill House",
        "images/grill_house.jpg",
        "High-quality steaks, seafood, and other grilled specialties in an elegant setting."
    ),
    (
        "Burrito Bandits",
        "images/burrito_bandits.jpg",
        "Large and flavorful burritos, tacos, and other Mexican favorites with fresh ingredients."
    ),
    (
        "Pasta Paradise",
        "images/pasta_paradise.jpg",
        "Italian comfort food with a variety of pasta dishes, sauces, and fresh seafood options."
    ),
    (
        "The Ramen Shop",
        "images/ramen_shop.jpg",
        "Authentic Japanese ramen with savory broths, perfectly cooked noodles, and customizable toppings."
    ),
    (
        "Falafel Frenzy",
        "images/falafel_frenzy.jpg",
        "Delicious and healthy Middle Eastern cuisine featuring falafel wraps, pita bread, and fresh dips."
    ),
    (
        "The French Table",
        "images/french_table.jpg",
        "Romantic French bistro offering classic dishes like steak frites, escargot, and decadent desserts."
    ),
    (
        "Taco Tuesday Everyday",
        "images/taco_tuesday_everyday.jpg",
        "Casual eatery celebrating tacos every day with creative fillings, delicious salsas, and refreshing drinks."
    ),
    (
        "Dim Sum Delight",
        "images/dim_sum_delight.jpg",
        "Traditional and innovative dim sum dishes in a vibrant and bustling atmosphere."
    ),
    (
        "The Healthy Choice",
        "images/healthy_choice.jpg",
        "Fresh and nutritious meals with a focus on healthy ingredients, dietary needs, and delicious flavors."
    ),
    (
        "Coffee Corner & Bakery",
        "images/coffee_corner_bakery.jpg",
        "Cozy cafe offering delicious coffee drinks, fresh-baked pastries, and light lunch options."
    );
INSERT INTO
    food_type (type_name)
VALUES
    ("Italian"),
    ("Mexican"),
    ("Asian"),
    ("American"),
    ("French"),
    ("Mediterranean"),
    ("Indian"),
    ("Vegetarian"),
    ("Healthy"),
    ("Fast Food");
INSERT INTO
    rate_res (user_id, res_id, amount, date_rate)
VALUES
    (1, 3, 5, "2024-07-03"),
    (2, 5, 4, "2024-06-20"),
    (3, 1, 4, "2024-05-12"),
    (4, 7, 5, "2024-07-02"),
    (1, 2, 3, "2024-06-22"),
    (3, 8, 4, "2024-07-01"),
    (6, 1, 5, "2024-03-15"),
    (7, 9, 4, "2024-05-08"),
    (9, 6, 3, "2024-02-10"),
    (5, 10, 5, "2024-06-19"),
    (2, 14, 4, "2024-06-27"),
    (4, 16, 5, "2024-06-12"),
    (1, 18, 3, "2024-06-25"),
    (8, 12, 5, "2024-04-20"),
    (10, 15, 4, "2024-01-25");
INSERT INTO
    like_res (user_id, res_id, date_like)
VALUES
    (1, 3, "2024-07-03"),
    (2, 5, "2024-06-20"),
    (3, 1, "2024-05-12"),
    (1, 7, "2024-07-02"),
    (4, 2, "2024-06-25"),
    (5, 8, "2024-07-01"),
    (2, 10, "2024-06-18"),
    (3, 14, "2024-04-10"),
    (1, 16, "2024-06-30"),
    (4, 18, "2024-06-15");
INSERT INTO
    food (food_name, price, image, description, type_id)
VALUES
    (
        "Margherita Pizza",
        12.99,
        "images/margherita_pizza.jpg",
        "Classic pizza with tomato sauce, mozzarella cheese, and fresh basil.",
        1
    ),
    (
        "Chicken Fajitas",
        15.50,
        "images/chicken_fajitas.jpg",
        "Sizzling grilled chicken strips with peppers and onions, served with tortillas, salsa, and guacamole.",
        2
    ),
    (
        "Pad Thai",
        11.75,
        "images/pad_thai.jpg",
        "Stir-fried rice noodles with chicken, vegetables, and a flavorful peanut sauce.",
        3
    ),
    (
        "Cheeseburger",
        9.99,
        "images/cheeseburger.jpg",
        "All-American cheeseburger with a juicy beef patty, melted cheddar cheese, lettuce, tomato, and onion on a toasted bun.",
        4
    ),
    (
        "Ratatouille",
        14.25,
        "images/ratatouille.jpg",
        "Provençal vegetable stew with eggplant, zucchini, tomatoes, and herbs.",
        6
    ),
    (
        "Butter Chicken",
        13.95,
        "images/butter_chicken.jpg",
        "Creamy Indian curry with tender chicken in a spiced tomato gravy.",
        7
    ),
    (
        "Black Bean Burger",
        10.50,
        "images/black_bean_burger.jpg",
        "Vegetarian burger made with black beans, corn, and spices, served on a whole wheat bun.",
        8
    ),
    (
        "Salmon with Roasted Vegetables",
        18.75,
        "images/salmon_roasted_vegetables.jpg",
        "Grilled salmon fillet with roasted seasonal vegetables",
        5
    ),
    (
        "Quinoa Salad",
        11.25,
        "images/quinoa_salad.jpg",
        "Healthy and flavorful salad with quinoa, vegetables, and a light vinaigrette dressing.",
        9
    );
INSERT INTO
    sub_food (sub_name, sub_price, food_id)
VALUES
    ('Pizza', 25, 1),
    ('Burger', 20, 2),
    ('Pasta', 18, 3),
    ('Noodles', 15, 4),
    ('Salad', 12, 5),
    ('Soup', 10, 6),
    ('Burrito', 22, 7),
    ('Sandwich', 16, 8),
    ('Wraps', 14, 9),
    ('Fries', 8, 2);
INSERT INTO
    orders (user_id, food_id, amount, code, arr_sub_id)
VALUES
    (1, 3, 2, "ORDER123", "[1,2,3]"),
    (2, 5, 1, "ORDER456", "[4,2,3]"),
    (3, 1, 1, "ORDER789", "[1,2,3]"),
    (4, 7, 3, "ORDER012", "[]"),
    (1, 4, 1, "ORDER345", "[]"),
    (5, 2, 2, "ORDER678", "[]"),
    (3, 8, 1, "ORDER901", "[]"),
    (2, 9, 2, "ORDER234", "[]"),
    (4, 2, 1, "ORDER124", "[]"),
    (1, 4, 1, "ORDER890", "[5,6,7]"),
    (6, 7, 1, "ORDER509", "[1]"),
    (7, 9, 2, "ORDER349", "[]"),
    (8, 6, 1, "ORDER781", "[3,7,9]"),
    (5, 8, 1, "ORDER058", "[]"),
    (9, 3, 3, "ORDER930", "[]");

/* ---------- Question ---------- */
-- Tìm 5 người like nhà hàng nhiều nhất
SELECT
  COUNT(u.user_id) AS 'Numbers of Likes',
  u.full_name AS "Full name"
FROM
  like_res AS lr
  INNER JOIN user AS u ON u.user_id = lr.user_id
GROUP BY u.full_name
ORDER BY
  'Numbers of Likes' DESC
LIMIT 5;

-- Tìm 2 nhà hàng có lượt like nhiều nhất
SELECT
  COUNT(res.res_id) AS 'Numbers of Likes',
  res_name AS 'Restaurant'
FROM
  like_res AS lr
  INNER JOIN restaurant AS res ON res.res_id = lr.res_id
GROUP BY res.res_name
ORDER BY 'Numbers of Likes' DESC
LIMIT 2;

-- Tìm người đã đặt hàng nhiều nhất
SELECT
  COUNT(u.user_id) AS 'Numbers of Order',
  u.full_name AS 'Full name',
  u.email AS 'Email'
FROM
  orders AS o
  INNER JOIN user AS u ON u.user_id = o.user_id
GROUP BY
  u.full_name,
  u.email
ORDER BY
  'Numbers of Order' DESC
LIMIT 1;

-- Tìm người dùng: không đặt hàng, không like, không đánh giá nhà hàng
SELECT
  u.full_name AS "Full name",
  u.email AS 'Email'
FROM
  user AS u
  LEFT JOIN orders AS o ON o.user_id = u.user_id
  LEFT JOIN like_res AS lr ON lr.user_id = u.user_id
  LEFT JOIN rate_res AS rs ON rs.user_id = u.user_id
WHERE
  o.user_id IS NULL AND
  lr.user_id IS NULL AND
  rs.user_id IS NULL;

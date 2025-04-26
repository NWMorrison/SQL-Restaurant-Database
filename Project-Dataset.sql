-- Sample Data for Restaurant Database
-- This script contains INSERT statements for all tables defined in the project

-- Clear existing data (if any)
-- Uncomment these if you need to clean existing data
DELETE FROM Menu_Item_Ingredients;
DELETE FROM Order_Items;
DELETE FROM Payments;
DELETE FROM Orders;
DELETE FROM Shifts;
DELETE FROM Staff;
DELETE FROM Reservations;
DELETE FROM Tables;
DELETE FROM Customers;
DELETE FROM Menu;
DELETE FROM Menu_Categories;
DELETE FROM Ingredients;
DELETE FROM Suppliers;

-- Suppliers Table
INSERT INTO Suppliers (supplier_id, name, contact_person, email, phone, address, preferred_status, lead_time_days) VALUES
(1, 'Farm Fresh Produce', 'Maria Johnson', 'maria@farmfresh.com', '555-123-4567', '123 Rural Route, Farmington, CA 94123', TRUE, 2),
(2, 'Quality Meats Inc.', 'John Smith', 'john@qualitymeats.com', '555-234-5678', '456 Butcher St, Meatville, CA 94124', TRUE, 3),
(3, 'Organic Dairy Co-op', 'Laura Chen', 'laura@organicdairy.com', '555-345-6789', '789 Milk Way, Cowtown, CA 94125', TRUE, 1),
(4, 'Seafood Suppliers', 'Michael Lee', 'michael@seafoodsup.com', '555-456-7890', '101 Ocean Dr, Bayshore, CA 94126', FALSE, 2),
(5, 'Wine & Spirits Dist.', 'Sarah Williams', 'sarah@winespirits.com', '555-567-8901', '202 Vineyard Ln, Grapeville, CA 94127', TRUE, 5),
(6, 'Bakery Basics', 'David Rodriguez', 'david@bakerybasics.com', '555-678-9012', '303 Flour Ave, Breadtown, CA 94128', FALSE, 2),
(7, 'Specialty Imports', 'Emma Garcia', 'emma@specialtyimports.com', '555-789-0123', '404 Foreign Blvd, Portcity, CA 94129', TRUE, 7),
(8, 'Local Herbs & Spices', 'Robert Kim', 'robert@localherbs.com', '555-890-1234', '505 Garden Path, Herbville, CA 94130', TRUE, 2),
(9, 'Restaurant Equipment Co.', 'James Wilson', 'james@restaurantequip.com', '555-901-2345', '606 Industry Way, Tooltown, CA 94131', FALSE, 10),
(10, 'Cleaning Supplies Wholesale', 'Patricia Martinez', 'patricia@cleaningsupplies.com', '555-012-3456', '707 Soap St, Cleanville, CA 94132', TRUE, 4),
(11, 'Golden State Farms', 'Alex Thompson', 'alex@goldenstatefarms.com', '555-234-5678', '789 Valley View Road, Fresno, CA 93720', TRUE, 3),
(12, 'Pacific Northwest Seafoods', 'Rachel Kim', 'rachel@pacificseafoods.com', '555-345-6789', '456 Coastal Highway, Monterey, CA 93940', TRUE, 2),
(13, 'Sierra Nevada Dairy', 'Carlos Mendez', 'carlos@sierranevadadairy.com', '555-456-7890', '234 Mountain Pass Lane, Modesto, CA 95354', FALSE, 4),
(14, 'Artisan Bread Company', 'Elena Rodriguez', 'elena@artisanbread.com', '555-567-8901', '567 Baker Street, San Jose, CA 95110', TRUE, 1),
(15, 'California Herb Gardens', 'Steven Wong', 'steven@californiaherbgardens.com', '555-678-9012', '890 Agricultural Way, Salinas, CA 93901', TRUE, 2),
(16, 'Premium Meat Distributors', 'Jessica Taylor', 'jessica@premiummeatdist.com', '555-789-0123', '123 Rancher Road, Sacramento, CA 95814', FALSE, 5),
(17, 'Coastal Olive Oil Co.', 'Miguel Santos', 'miguel@coastaloliveoil.com', '555-890-1234', '456 Olive Grove Lane, Chico, CA 95926', TRUE, 3),
(18, 'California Wine Merchants', 'Anna Patel', 'anna@californiawinemerchants.com', '555-901-2345', '789 Vineyard Terrace, Napa, CA 94558', TRUE, 4),
(19, 'Green Valley Kitchen Supplies', 'Brian Anderson', 'brian@greenvalleysupplies.com', '555-012-3456', '234 Industrial Park Drive, Santa Rosa, CA 95403', FALSE, 7),
(20, 'Natural Pantry Provisions', 'Sophia Lee', 'sophia@naturalpantry.com', '555-123-4567', '567 Harvest Lane, Davis, CA 95616', TRUE, 2);

-- Ingredients Table
INSERT INTO Ingredients (ingredient_id, name, unit, quantity_on_hand, reorder_level, supplier_id, cost_per_unit, storage_location) VALUES
(1, 'Flour', 'kg', 50.00, 10.00, 6, 1.25, 'Dry Storage A1'),
(2, 'Sugar', 'kg', 30.00, 8.00, 6, 1.50, 'Dry Storage A2'),
(3, 'Salt', 'kg', 15.00, 3.00, 8, 0.75, 'Dry Storage A3'),
(4, 'Pepper', 'kg', 5.00, 1.00, 8, 15.00, 'Dry Storage A4'),
(5, 'Chicken Breast', 'kg', 25.00, 8.00, 2, 9.50, 'Refrigerator B1'),
(6, 'Ground Beef', 'kg', 20.00, 7.00, 2, 8.75, 'Refrigerator B2'),
(7, 'Salmon Fillet', 'kg', 15.00, 5.00, 4, 18.50, 'Refrigerator B3'),
(8, 'Shrimp', 'kg', 12.00, 4.00, 4, 22.00, 'Refrigerator B4'),
(9, 'Tomatoes', 'kg', 30.00, 10.00, 1, 3.50, 'Produce C1'),
(10, 'Lettuce', 'head', 25.00, 8.00, 1, 1.75, 'Produce C2'),
(11, 'Onions', 'kg', 40.00, 10.00, 1, 1.25, 'Produce C3'),
(12, 'Garlic', 'kg', 8.00, 2.00, 1, 5.00, 'Produce C4'),
(13, 'Milk', 'liter', 30.00, 10.00, 3, 1.50, 'Refrigerator D1'),
(14, 'Cream', 'liter', 15.00, 5.00, 3, 4.00, 'Refrigerator D2'),
(15, 'Butter', 'kg', 12.00, 4.00, 3, 8.00, 'Refrigerator D3'),
(16, 'Eggs', 'dozen', 20.00, 5.00, 3, 3.50, 'Refrigerator D4'),
(17, 'Red Wine', 'bottle', 48.00, 12.00, 5, 15.00, 'Wine Cellar E1'),
(18, 'White Wine', 'bottle', 48.00, 12.00, 5, 14.00, 'Wine Cellar E2'),
(19, 'Vodka', 'bottle', 24.00, 6.00, 5, 20.00, 'Bar Storage E3'),
(20, 'Gin', 'bottle', 18.00, 4.00, 5, 22.00, 'Bar Storage E4'),
(21, 'Olive Oil', 'liter', 25.00, 5.00, 7, 12.00, 'Dry Storage F1'),
(22, 'Balsamic Vinegar', 'liter', 15.00, 3.00, 7, 18.00, 'Dry Storage F2'),
(23, 'Rice', 'kg', 40.00, 10.00, 7, 2.50, 'Dry Storage F3'),
(24, 'Pasta', 'kg', 35.00, 8.00, 7, 2.00, 'Dry Storage F4'),
(25, 'Basil', 'bunch', 20.00, 5.00, 8, 2.00, 'Produce G1'),
(26, 'Rosemary', 'bunch', 15.00, 4.00, 8, 2.00, 'Produce G2'),
(27, 'Thyme', 'bunch', 15.00, 4.00, 8, 2.00, 'Produce G3'),
(28, 'Parsley', 'bunch', 20.00, 5.00, 8, 1.75, 'Produce G4'),
(29, 'Chocolate', 'kg', 10.00, 3.00, 7, 12.00, 'Dry Storage H1'),
(30, 'Vanilla Extract', 'liter', 5.00, 1.00, 7, 28.00, 'Dry Storage H2'),
(31, 'Cheddar Cheese', 'kg', 15.00, 4.00, 3, 9.00, 'Refrigerator I1'),
(32, 'Mozzarella Cheese', 'kg', 18.00, 5.00, 3, 8.50, 'Refrigerator I2'),
(33, 'Parmesan Cheese', 'kg', 8.00, 2.00, 3, 14.00, 'Refrigerator I3'),
(34, 'Lemon', 'kg', 12.00, 4.00, 1, 3.00, 'Produce J1'),
(35, 'Lime', 'kg', 10.00, 3.00, 1, 3.25, 'Produce J2'),
(36, 'Avocado', 'each', 35.00, 10.00, 1, 1.75, 'Produce J3'),
(37, 'Bell Peppers', 'kg', 15.00, 5.00, 1, 4.50, 'Produce J4'),
(38, 'Heavy Cream', 'liter', 12.00, 4.00, 3, 5.00, 'Refrigerator K1'),
(39, 'Sour Cream', 'kg', 8.00, 2.00, 3, 4.50, 'Refrigerator K2'),
(40, 'Bacon', 'kg', 10.00, 3.00, 2, 11.00, 'Refrigerator K3');

-- Menu_Categories Table
INSERT INTO Menu_Categories (category_id, name, description, display_order) VALUES
(1, 'Appetizers', 'Small dishes to start your meal', 1),
(2, 'Soups', 'Warm and comforting soups', 2),
(3, 'Salads', 'Fresh and healthy salad options', 3),
(4, 'Pasta', 'Handmade pasta dishes', 4),
(5, 'Main Courses', 'Hearty entrees and specialties', 5),
(6, 'Seafood', 'Fresh catches from the sea', 6),
(7, 'Vegetarian', 'Delicious plant-based options', 7),
(8, 'Sides', 'Complementary side dishes', 8),
(9, 'Desserts', 'Sweet treats to finish your meal', 9),
(10, 'Drinks', 'Refreshing beverages', 10),
(11, 'Breakfast', 'Morning favorites', 11),
(12, 'Lunch Specials', 'Midday meal deals', 12),
(13, 'Kids Menu', 'Child-friendly options', 13),
(14, 'Seasonal Specials', 'Limited time offerings', 14),
(15, 'Chef Recommendations', 'Our chef favorite dishes', 15);

-- Menu Table
INSERT INTO Menu (dish_id, category_id, dish_name, description, price, is_vegetarian, is_vegan, is_gluten_free, calories, preparation_time, is_available, is_seasonal, image_path) VALUES
(1, 1, 'Bruschetta', 'Toasted bread topped with fresh tomatoes, garlic, and basil', 8.95, TRUE, TRUE, FALSE, 320, 10, TRUE, FALSE, '/images/bruschetta.jpg'),
(2, 1, 'Calamari Fritti', 'Crispy fried calamari served with marinara sauce', 12.95, FALSE, FALSE, FALSE, 450, 15, TRUE, FALSE, '/images/calamari.jpg'),
(3, 1, 'Spinach Artichoke Dip', 'Creamy spinach and artichoke dip with tortilla chips', 10.95, TRUE, FALSE, TRUE, 520, 12, TRUE, FALSE, '/images/spinach_dip.jpg'),
(4, 2, 'Minestrone Soup', 'Traditional Italian vegetable soup with pasta', 7.95, TRUE, TRUE, FALSE, 280, 8, TRUE, FALSE, '/images/minestrone.jpg'),
(5, 2, 'Clam Chowder', 'New England style creamy clam chowder', 8.95, FALSE, FALSE, FALSE, 420, 8, TRUE, FALSE, '/images/clam_chowder.jpg'),
(6, 3, 'Caesar Salad', 'Romaine lettuce, croutons, and parmesan with Caesar dressing', 9.95, TRUE, FALSE, FALSE, 380, 7, TRUE, FALSE, '/images/caesar_salad.jpg'),
(7, 3, 'Caprese Salad', 'Fresh mozzarella, tomatoes, and basil with balsamic glaze', 11.95, TRUE, FALSE, TRUE, 320, 6, TRUE, FALSE, '/images/caprese.jpg'),
(8, 4, 'Spaghetti Carbonara', 'Spaghetti with pancetta, eggs, and parmesan', 16.95, FALSE, FALSE, FALSE, 780, 18, TRUE, FALSE, '/images/carbonara.jpg'),
(9, 4, 'Fettuccine Alfredo', 'Fettuccine pasta in a creamy parmesan sauce', 15.95, TRUE, FALSE, FALSE, 850, 15, TRUE, FALSE, '/images/alfredo.jpg'),
(10, 5, 'Chicken Parmesan', 'Breaded chicken breast topped with marinara and mozzarella', 18.95, FALSE, FALSE, FALSE, 720, 25, TRUE, FALSE, '/images/chicken_parm.jpg'),
(11, 5, 'Filet Mignon', '8oz filet served with mashed potatoes and seasonal vegetables', 32.95, FALSE, FALSE, TRUE, 680, 30, TRUE, FALSE, '/images/filet.jpg'),
(12, 6, 'Grilled Salmon', 'Fresh salmon fillet with lemon butter sauce', 24.95, FALSE, FALSE, TRUE, 520, 20, TRUE, FALSE, '/images/salmon.jpg'),
(13, 6, 'Shrimp Scampi', 'Garlic butter shrimp over linguine pasta', 22.95, FALSE, FALSE, FALSE, 650, 22, TRUE, FALSE, '/images/scampi.jpg'),
(14, 7, 'Vegetable Stir Fry', 'Mixed vegetables stir-fried with tofu in teriyaki sauce', 14.95, TRUE, TRUE, TRUE, 380, 15, TRUE, FALSE, '/images/stir_fry.jpg'),
(15, 7, 'Eggplant Parmesan', 'Breaded eggplant topped with marinara and mozzarella', 16.95, TRUE, FALSE, FALSE, 560, 25, TRUE, FALSE, '/images/eggplant_parm.jpg'),
(16, 8, 'Garlic Mashed Potatoes', 'Creamy garlic mashed potatoes', 5.95, TRUE, FALSE, TRUE, 240, 10, TRUE, FALSE, '/images/mashed_potatoes.jpg'),
(17, 8, 'Steamed Broccoli', 'Fresh broccoli steamed and lightly seasoned', 4.95, TRUE, TRUE, TRUE, 120, 8, TRUE, FALSE, '/images/broccoli.jpg'),
(18, 9, 'Tiramisu', 'Classic Italian coffee-flavored dessert', 8.95, TRUE, FALSE, FALSE, 420, 5, TRUE, FALSE, '/images/tiramisu.jpg'),
(19, 9, 'Chocolate Lava Cake', 'Warm chocolate cake with a molten center', 9.95, TRUE, FALSE, FALSE, 580, 15, TRUE, FALSE, '/images/lava_cake.jpg'),
(20, 10, 'House Red Wine', 'Glass of our house Cabernet Sauvignon', 9.95, TRUE, TRUE, TRUE, 120, 2, TRUE, FALSE, '/images/red_wine.jpg'),
(21, 10, 'Craft Beer', 'Rotating selection of local craft beers', 7.95, TRUE, TRUE, TRUE, 180, 2, TRUE, FALSE, '/images/craft_beer.jpg'),
(22, 11, 'Eggs Benedict', 'Poached eggs and Canadian bacon on English muffin with hollandaise', 14.95, FALSE, FALSE, FALSE, 680, 15, TRUE, FALSE, '/images/eggs_benedict.jpg'),
(23, 11, 'Buttermilk Pancakes', 'Stack of fluffy buttermilk pancakes with maple syrup', 12.95, TRUE, FALSE, FALSE, 720, 12, TRUE, FALSE, '/images/pancakes.jpg'),
(24, 12, 'Lunch Combo', 'Half sandwich with soup or salad', 12.95, FALSE, FALSE, FALSE, 550, 10, TRUE, FALSE, '/images/lunch_combo.jpg'),
(25, 13, 'Chicken Tenders', 'Breaded chicken tenders with french fries', 9.95, FALSE, FALSE, FALSE, 580, 15, TRUE, FALSE, '/images/chicken_tenders.jpg'),
(26, 14, 'Pumpkin Ravioli', 'Seasonal pumpkin-filled ravioli with sage brown butter', 18.95, TRUE, FALSE, FALSE, 620, 20, TRUE, TRUE, '/images/pumpkin_ravioli.jpg'),
(27, 15, 'Surf & Turf', 'Filet mignon and lobster tail with drawn butter', 42.95, FALSE, FALSE, TRUE, 820, 35, TRUE, FALSE, '/images/surf_turf.jpg'),
(28, 1, 'Buffalo Wings', 'Spicy buffalo wings with blue cheese dressing', 13.95, FALSE, FALSE, TRUE, 680, 18, TRUE, FALSE, '/images/buffalo_wings.jpg'),
(29, 3, 'Greek Salad', 'Mixed greens with feta, olives, and Greek dressing', 12.95, TRUE, FALSE, TRUE, 350, 8, TRUE, FALSE, '/images/greek_salad.jpg'),
(30, 5, 'Beef Stroganoff', 'Tender beef in a mushroom sauce over egg noodles', 19.95, FALSE, FALSE, FALSE, 720, 25, TRUE, FALSE, '/images/stroganoff.jpg');

-- Menu_Item_Ingredients (Junction table for Menu and Ingredients)
INSERT INTO Menu_Item_Ingredients (dish_id, ingredient_id, quantity) VALUES
(1, 1, 0.10), -- Bruschetta - Flour (for bread)
(1, 9, 0.20), -- Bruschetta - Tomatoes
(1, 12, 0.05), -- Bruschetta - Garlic
(1, 21, 0.03), -- Bruschetta - Olive Oil
(1, 25, 0.02), -- Bruschetta - Basil
(2, 1, 0.15), -- Calamari - Flour
(2, 3, 0.01), -- Calamari - Salt
(2, 16, 0.17), -- Calamari - Eggs
(2, 21, 0.10), -- Calamari - Olive Oil
(3, 14, 0.20), -- Spinach Artichoke Dip - Cream
(3, 31, 0.15), -- Spinach Artichoke Dip - Cheddar Cheese
(3, 33, 0.10), -- Spinach Artichoke Dip - Parmesan Cheese
(4, 9, 0.15), -- Minestrone - Tomatoes
(4, 11, 0.10), -- Minestrone - Onions
(4, 24, 0.10), -- Minestrone - Pasta
(4, 37, 0.08), -- Minestrone - Bell Peppers
(5, 8, 0.20), -- Clam Chowder - Shrimp
(5, 13, 0.25), -- Clam Chowder - Milk
(5, 14, 0.15), -- Clam Chowder - Cream
(6, 10, 0.30), -- Caesar Salad - Lettuce
(6, 33, 0.10), -- Caesar Salad - Parmesan Cheese
(7, 9, 0.25), -- Caprese - Tomatoes
(7, 21, 0.05), -- Caprese - Olive Oil
(7, 22, 0.03), -- Caprese - Balsamic Vinegar
(7, 25, 0.05), -- Caprese - Basil
(7, 32, 0.25), -- Caprese - Mozzarella Cheese
(8, 16, 0.25), -- Carbonara - Eggs
(8, 24, 0.30), -- Carbonara - Pasta
(8, 33, 0.15), -- Carbonara - Parmesan Cheese
(8, 40, 0.15), -- Carbonara - Bacon
(9, 14, 0.30), -- Alfredo - Cream
(9, 24, 0.30), -- Alfredo - Pasta
(9, 33, 0.20), -- Alfredo - Parmesan Cheese
(10, 5, 0.35), -- Chicken Parmesan - Chicken Breast
(10, 9, 0.20), -- Chicken Parmesan - Tomatoes
(10, 32, 0.20), -- Chicken Parmesan - Mozzarella Cheese
(11, 15, 0.10), -- Filet Mignon - Butter
(11, 26, 0.01), -- Filet Mignon - Rosemary
(12, 7, 0.30), -- Grilled Salmon - Salmon Fillet
(12, 15, 0.08), -- Grilled Salmon - Butter
(12, 34, 0.10), -- Grilled Salmon - Lemon
(13, 8, 0.35), -- Shrimp Scampi - Shrimp
(13, 12, 0.05), -- Shrimp Scampi - Garlic
(13, 15, 0.15), -- Shrimp Scampi - Butter
(13, 24, 0.25), -- Shrimp Scampi - Pasta
(14, 11, 0.15), -- Vegetable Stir Fry - Onions
(14, 37, 0.20), -- Vegetable Stir Fry - Bell Peppers
(15, 9, 0.25), -- Eggplant Parmesan - Tomatoes
(15, 32, 0.20), -- Eggplant Parmesan - Mozzarella Cheese
(16, 14, 0.10), -- Mashed Potatoes - Cream
(16, 15, 0.10), -- Mashed Potatoes - Butter
(17, 3, 0.01), -- Steamed Broccoli - Salt
(18, 16, 0.10), -- Tiramisu - Eggs
(18, 29, 0.05), -- Tiramisu - Chocolate
(19, 15, 0.10), -- Chocolate Lava Cake - Butter
(19, 16, 0.15), -- Chocolate Lava Cake - Eggs
(19, 29, 0.20), -- Chocolate Lava Cake - Chocolate
(20, 17, 1.00), -- House Red Wine - Red Wine
(21, 21, 1.00), -- Craft Beer - Not applicable
(22, 15, 0.10), -- Eggs Benedict - Butter
(22, 16, 0.25), -- Eggs Benedict - Eggs
(22, 40, 0.15), -- Eggs Benedict - Bacon
(23, 1, 0.25), -- Pancakes - Flour
(23, 2, 0.10), -- Pancakes - Sugar
(23, 13, 0.20), -- Pancakes - Milk
(23, 16, 0.20), -- Pancakes - Eggs
(24, 1, 0.15), -- Lunch Combo - Flour
(24, 10, 0.15), -- Lunch Combo - Lettuce
(24, 31, 0.10), -- Lunch Combo - Cheddar Cheese
(25, 5, 0.25), -- Chicken Tenders - Chicken Breast
(25, 16, 0.15), -- Chicken Tenders - Eggs
(26, 1, 0.30), -- Pumpkin Ravioli - Flour
(26, 15, 0.15), -- Pumpkin Ravioli - Butter
(26, 16, 0.20), -- Pumpkin Ravioli - Eggs
(26, 27, 0.02), -- Pumpkin Ravioli - Thyme
(27, 7, 0.30), -- Surf & Turf - Salmon Fillet
(27, 15, 0.20), -- Surf & Turf - Butter
(28, 5, 0.35), -- Buffalo Wings - Chicken
(28, 21, 0.15), -- Buffalo Wings - Olive Oil
(29, 10, 0.30), -- Greek Salad - Lettuce
(29, 21, 0.05), -- Greek Salad - Olive Oil
(29, 34, 0.08), -- Greek Salad - Lemon
(30, 6, 0.35), -- Beef Stroganoff - Ground Beef
(30, 14, 0.20), -- Beef Stroganoff - Cream
(30, 24, 0.25); -- Beef Stroganoff - Pasta

-- Tables Table
INSERT INTO Tables (table_id, table_number, capacity, section, is_accessible, status) VALUES
(1, 'A1', 2, 'Window', TRUE, 'Available'),
(2, 'A2', 2, 'Window', TRUE, 'Available'),
(3, 'A3', 4, 'Window', FALSE, 'Available'),
(4, 'A4', 4, 'Window', FALSE, 'Available'),
(5, 'B1', 4, 'Main', TRUE, 'Available'),
(6, 'B2', 4, 'Main', TRUE, 'Available'),
(7, 'B3', 6, 'Main', FALSE, 'Available'),
(8, 'B4', 6, 'Main', FALSE, 'Available'),
(9, 'C1', 8, 'Main', TRUE, 'Available'),
(10, 'C2', 8, 'Main', FALSE, 'Available'),
(11, 'D1', 2, 'Bar', FALSE, 'Available'),
(12, 'D2', 2, 'Bar', FALSE, 'Available'),
(13, 'D3', 4, 'Bar', FALSE, 'Available'),
(14, 'E1', 6, 'Patio', TRUE, 'Available'),
(15, 'E2', 6, 'Patio', TRUE, 'Available'),
(16, 'E3', 8, 'Patio', FALSE, 'Available'),
(17, 'F1', 10, 'Private', TRUE, 'Available'),
(18, 'F2', 12, 'Private', TRUE, 'Available'),
(19, 'G1', 4, 'Lounge', FALSE, 'Available'),
(20, 'G2', 4, 'Lounge', FALSE, 'Available');

-- Customers Table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, address, loyalty_points, join_date, birth_date, dietary_preferences, allergy_information, last_visit_date, marketing_opt_in) VALUES
(1, 'Emily', 'Rodriguez', 'emily.rodriguez@email.com', '(415) 555-1234', '1245 Marina Boulevard, San Francisco, CA 94123', 350, '2022-03-15', '1985-06-22', 'Vegetarian', 'None', '2024-02-10', TRUE),
(2, 'Jason', 'Chen', 'jason.chen@gmail.com', '(650) 555-5678', '892 University Avenue, Palo Alto, CA 94301', 175, '2022-05-22', '1990-11-15', 'No Restrictions', 'Shellfish', '2024-01-28', FALSE),
(3, 'Aisha', 'Patel', 'aisha.patel@outlook.com', '(510) 555-9012', '456 College Avenue, Berkeley, CA 94702', 525, '2021-11-01', '1978-04-03', 'Vegan', 'Tree Nuts', '2024-02-15', TRUE),
(4, 'Marcus', 'Thompson', 'marcus.thompson@yahoo.com', '(707) 555-3456', '789 Vineyard Road, Napa, CA 94558', 250, '2023-01-10', '1982-09-17', 'Gluten-Free', 'Dairy', '2024-02-05', FALSE),
(5, 'Sophia', 'Kim', 'sophia.kim@icloud.com', '(408) 555-7890', '234 Almaden Boulevard, San Jose, CA 95113', 425, '2022-07-18', '1988-12-30', 'No Restrictions', 'Peanuts', '2024-01-19', FALSE),
(6, 'Carlos', 'Garcia', 'carlos.garcia@gmail.com', '(925) 555-2345', '567 Olive Lane, Walnut Creek, CA 94597', 625, '2022-09-05', '1975-07-11', 'Pescatarian', 'None', '2024-02-12', TRUE),
(7, 'Olivia', 'Wong', 'olivia.wong@email.com', '(619) 555-6789', '123 Harbor Drive, San Diego, CA 92101', 200, '2022-04-12', '1993-01-25', 'No Restrictions', 'Soy', '2024-01-30', TRUE),
(8, 'Ethan', 'Nguyen', 'ethan.nguyen@outlook.com', '(213) 555-4567', '456 Sunset Boulevard, Los Angeles, CA 90028', 475, '2023-02-20', '1980-05-14', 'Vegetarian', 'Eggs', '2024-02-08', FALSE),
(9, 'Rachel', 'Cohen', 'rachel.cohen@yahoo.com', '(805) 555-8901', '789 Mission Street, Santa Barbara, CA 93101', 300, '2022-06-30', '1987-10-08', 'No Restrictions', 'None', '2024-01-22', TRUE),
(10, 'Michael', 'Lee', 'michael.lee@icloud.com', '(562) 555-2345', '234 Palm Avenue, Long Beach, CA 90802', 150, '2022-10-15', '1995-03-19', 'Gluten-Free', 'Shellfish', '2024-02-03', TRUE),
(11, 'Samantha', 'Brown', 'samantha.brown@gmail.com', '(760) 555-6789', '567 Desert Road, Palm Springs, CA 92262', 400, '2021-12-08', '1983-08-26', 'Vegan', 'Tree Nuts', '2024-01-25', FALSE),
(12, 'David', 'Singh', 'david.singh@email.com', '(916) 555-3456', '890 Capitol Street, Sacramento, CA 95814', 275, '2023-03-01', '1979-12-05', 'No Restrictions', 'Dairy', '2024-02-14', TRUE),
(13, 'Emma', 'Martinez', 'emma.martinez@outlook.com', '(949) 555-7890', '345 Newport Boulevard, Newport Beach, CA 92663', 500, '2022-08-22', '1991-06-13', 'Pescatarian', 'Peanuts', '2024-01-17', TRUE),
(14, 'Ryan', 'Taylor', 'ryan.taylor@yahoo.com', '(858) 555-2345', '678 La Jolla Drive, San Diego, CA 92037', 225, '2023-04-05', '1986-02-28', 'No Restrictions', 'Soy', '2024-02-06', FALSE),
(15, 'Zara', 'Khan', 'zara.khan@icloud.com', '(530) 555-6789', '901 Mountain View Road, Tahoe City, CA 96145', 375, '2022-05-17', '1984-11-22', 'Vegetarian', 'Eggs', '2024-01-29', TRUE),
(16, 'Christopher', 'Jackson', 'christopher.jackson@gmail.com', '(415) 555-4567', '234 Marina Boulevard, San Francisco, CA 94123', 550, '2021-10-20', '1977-09-16', 'No Restrictions', 'None', '2024-02-11', TRUE),
(17, 'Lauren', 'Davis', 'lauren.davis@email.com', '(925) 555-8901', '567 Orchard Street, Pleasanton, CA 94566', 175, '2022-11-12', '1992-07-07', 'Gluten-Free', 'Shellfish', '2024-01-20', FALSE),
(18, 'Alexander', 'Wilson', 'alexander.wilson@outlook.com', '(650) 555-3456', '123 Stanford Avenue, Menlo Park, CA 94025', 425, '2023-01-25', '1981-04-12', 'Vegan', 'Tree Nuts', '2024-02-07', TRUE),
(19, 'Maya', 'Gupta', 'maya.gupta@yahoo.com', '(510) 555-7890', '456 Piedmont Road, Oakland, CA 94611', 300, '2022-02-14', '1989-01-30', 'No Restrictions', 'Dairy', '2024-01-26', TRUE),
(20, 'Daniel', 'Miller', 'daniel.miller@icloud.com', '(408) 555-2345', '789 Almaden Boulevard, San Jose, CA 95113', 475, '2022-12-05', '1976-05-18', 'Pescatarian', 'Peanuts', '2024-02-04', FALSE),
(21, 'Jasmine', 'Liu', 'jasmine.liu@gmail.com', '(619) 555-6789', '234 Harbor Street, San Diego, CA 92101', 250, '2022-01-30', '1994-08-09', 'No Restrictions', 'Soy', '2024-01-31', TRUE),
(22, 'Brandon', 'Moore', 'brandon.moore@email.com', '(707) 555-4567', '567 Wine Country Road, Healdsburg, CA 95448', 625, '2023-05-10', '1980-03-25', 'Vegetarian', 'Eggs', '2024-02-13', TRUE),
(23, 'Priya', 'Ramirez', 'priya.ramirez@outlook.com', '(805) 555-8901', '890 Coastal Road, Santa Barbara, CA 93101', 300, '2022-09-15', '1987-11-04', 'Vegan', 'Peanuts', '2024-01-16', TRUE),
(24, 'Nathan', 'Park', 'nathan.park@yahoo.com', '(650) 555-3210', '123 University Drive, Mountain View, CA 94040', 175, '2023-02-28', '1993-06-17', 'No Restrictions', 'Shellfish', '2024-02-09', FALSE),
(25, 'Isabella', 'White', 'isabella.white@icloud.com', '(949) 555-6543', '456 Newport Coast Road, Newport Beach, CA 92657', 450, '2022-05-03', '1979-09-22', 'Gluten-Free', 'Tree Nuts', '2024-01-24', TRUE),
(26, 'Ahmed', 'Johnson', 'ahmed.johnson@gmail.com', '(510) 555-9876', '789 Telegraph Avenue, Berkeley, CA 94720', 525, '2021-12-12', '1982-01-15', 'Pescatarian', 'Dairy', '2024-02-07', TRUE),
(27, 'Lily', 'Chang', 'lily.chang@email.com', '(408) 555-4321', '234 Silicon Valley Road, Cupertino, CA 95014', 375, '2022-07-22', '1991-04-30', 'Vegetarian', 'Soy', '2024-01-18', FALSE),
(28, 'Kevin', 'Martinez', 'kevin.martinez@outlook.com', '(619) 555-7890', '567 Harbor Drive, San Diego, CA 92101', 400, '2023-01-05', '1986-12-08', 'No Restrictions', 'None', '2024-02-12', TRUE),
(29, 'Aria', 'Sharma', 'aria.sharma@yahoo.com', '(925) 555-2468', '890 Vineyard Lane, Livermore, CA 94550', 250, '2022-10-20', '1995-07-11', 'Vegan', 'Eggs', '2024-01-22', TRUE),
(30, 'Justin', 'Anderson', 'justin.anderson@icloud.com', '(415) 555-1357', '123 Golden Gate Avenue, San Francisco, CA 94102', 475, '2022-04-18', '1980-02-14', 'Gluten-Free', 'Peanuts', '2024-02-05', FALSE),
(31, 'Sophia', 'Gupta', 'sophia.gupta@gmail.com', '(760) 555-8642', '456 Desert Springs Road, Palm Springs, CA 92262', 300, '2023-03-15', '1984-10-26', 'Pescatarian', 'Shellfish', '2024-01-30', TRUE),
(32, 'Eric', 'Rodriguez', 'eric.rodriguez@email.com', '(916) 555-9753', '789 Capitol Mall, Sacramento, CA 95814', 525, '2021-11-07', '1977-05-19', 'No Restrictions', 'Tree Nuts', '2024-02-14', TRUE),
(33, 'Mia', 'Kim', 'mia.kim@outlook.com', '(562) 555-4680', '234 Seaside Boulevard, Long Beach, CA 90802', 200, '2022-08-30', '1992-03-05', 'Vegetarian', 'Dairy', '2024-01-25', FALSE),
(34, 'Gabriel', 'Torres', 'gabriel.torres@yahoo.com', '(805) 555-2580', '567 Mission Street, Santa Maria, CA 93454', 425, '2023-02-10', '1983-11-30', 'Vegan', 'Soy', '2024-02-08', TRUE),
(35, 'Hannah', 'Lee', 'hannah.lee@icloud.com', '(650) 555-7412', '890 Stanford Campus Drive, Stanford, CA 94305', 350, '2022-06-05', '1990-08-17', 'No Restrictions', 'Eggs', '2024-01-21', TRUE),
(36, 'Miguel', 'Singh', 'miguel.singh@gmail.com', '(408) 555-3698', '123 Technology Park, San Jose, CA 95134', 475, '2022-12-22', '1981-01-09', 'Gluten-Free', 'Peanuts', '2024-02-03', FALSE),
(37, 'Olivia', 'Brown', 'olivia.brown@email.com', '(949) 555-9514', '456 Fashion Island Boulevard, Newport Beach, CA 92660', 250, '2023-04-01', '1988-06-23', 'Pescatarian', 'Shellfish', '2024-01-17', TRUE),
(38, 'Cameron', 'Wilson', 'cameron.wilson@outlook.com', '(530) 555-6347', '789 Lake Tahoe Boulevard, South Lake Tahoe, CA 96150', 400, '2022-02-25', '1979-09-08', 'Vegetarian', 'Tree Nuts', '2024-02-11', TRUE),
(39, 'Zoe', 'Chen', 'zoe.chen@yahoo.com', '(510) 555-8023', '234 Park Street, Oakland, CA 94610', 525, '2021-10-05', '1994-12-12', 'No Restrictions', 'Dairy', '2024-01-28', FALSE),
(40, 'Luis', 'Jackson', 'luis.jackson@icloud.com', '(619) 555-5791', '567 Coronado Avenue, Coronado, CA 92118', 300, '2023-01-20', '1986-07-16', 'Vegan', 'Soy', '2024-02-06', TRUE),
(41, 'Emma', 'Khan', 'emma.khan@gmail.com', '(925) 555-2469', '890 Dublin Boulevard, Dublin, CA 94568', 375, '2022-05-12', '1991-02-28', 'Gluten-Free', 'Eggs', '2024-01-19', TRUE),
(42, 'Derek', 'Garcia', 'derek.garcia@email.com', '(415) 555-7890', '123 Lombard Street, San Francisco, CA 94109', 450, '2022-11-30', '1983-05-07', 'No Restrictions', 'Peanuts', '2024-02-10', FALSE),
(43, 'Nina', 'Patel', 'nina.patel@outlook.com', '(408) 555-1234', '456 Saratoga Avenue, Saratoga, CA 95070', 275, '2023-03-10', '1989-10-20', 'Pescatarian', 'Shellfish', '2024-01-26', TRUE),
(44, 'Jordan', 'Miller', 'jordan.miller@yahoo.com', '(707) 555-6543', '789 Wine Country Road, Sonoma, CA 95476', 500, '2022-07-08', '1980-04-15', 'Vegetarian', 'Tree Nuts', '2024-02-07', TRUE);


-----------------------------------------------------------
-- SAMPLE DATA INSERTS AND VIEWS FOR ADDITIONAL REPORTS
-----------------------------------------------------------

-- 1. Sample Data for Staff
INSERT INTO Staff (employee_id, first_name, last_name, position, hourly_rate, hire_date, email, phone, emergency_contact, address, social_security, tax_withholding)
VALUES
(1, 'Marco', 'Rossi', 'Executive Chef', 42.50, '2022-03-15', 'marco.rossi@cucinaristorante.com', '(415) 555-1234', 'Sofia Rossi (Wife) - (415) 888-9999', '1245 Lombard Street, San Francisco, CA 94109', '123-45-6789', 0.24),
(2, 'Elena', 'Conti', 'Sous Chef', 35.75, '2022-05-22', 'elena.conti@cucinaristorante.com', '(650) 555-4567', 'Antonio Conti (Brother) - (650) 777-2222', '892 California Avenue, Palo Alto, CA 94301', '234-56-7890', 0.22),
(3, 'Giovanni', 'Bianchi', 'Head Waiter', 28.00, '2021-11-01', 'giovanni.bianchi@cucinaristorante.com', '(510) 555-7890', 'Maria Bianchi (Mother) - (510) 666-3333', '456 Oak Street, Berkeley, CA 94702', '345-67-8901', 0.20),
(4, 'Sophia', 'Romano', 'Pastry Chef', 32.50, '2023-01-10', 'sophia.romano@cucinaristorante.com', '(707) 555-2345', 'Luigi Romano (Father) - (707) 999-4444', '789 Vine Road, Napa, CA 94558', '456-78-9012', 0.21),
(5, 'Antonio', 'Moretti', 'Line Cook', 24.50, '2022-07-18', 'antonio.moretti@cucinaristorante.com', '(408) 555-6789', 'Laura Moretti (Wife) - (408) 555-5555', '234 Santa Clara Street, San Jose, CA 95113', '567-89-0123', 0.18),
(6, 'Isabella', 'Ferrari', 'Sommelier', 30.00, '2022-09-05', 'isabella.ferrari@cucinaristorante.com', '(925) 555-3456', 'Paolo Ferrari (Brother) - (925) 777-6666', '567 Olive Lane, Walnut Creek, CA 94597', '678-90-1234', 0.20),
(7, 'Lorenzo', 'Esposito', 'Bartender', 26.50, '2022-04-12', 'lorenzo.esposito@cucinaristorante.com', '(619) 555-8901', 'Francesca Esposito (Sister) - (619) 888-7777', '123 Harbor Drive, San Diego, CA 92101', '789-01-2345', 0.19),
(8, 'Valentina', 'Ricci', 'Server', 22.75, '2023-02-20', 'valentina.ricci@cucinaristorante.com', '(213) 555-4567', 'Roberto Ricci (Father) - (213) 666-9999', '456 Sunset Boulevard, Los Angeles, CA 90028', '890-12-3456', 0.17),
(9, 'Francesco', 'Colombo', 'Prep Cook', 22.00, '2022-06-30', 'francesco.colombo@cucinaristorante.com', '(805) 555-5678', 'Teresa Colombo (Mother) - (805) 555-4444', '789 Vineyard Road, Santa Barbara, CA 93101', '901-23-4567', 0.16),
(10, 'Alessandra', 'Marino', 'Host', 21.50, '2022-10-15', 'alessandra.marino@cucinaristorante.com', '(562) 555-6789', 'Marco Marino (Brother) - (562) 999-3333', '234 Palm Avenue, Long Beach, CA 90802', '012-34-5678', 0.16),
(11, 'Roberto', 'Greco', 'Kitchen Manager', 38.25, '2021-12-08', 'roberto.greco@cucinaristorante.com', '(760) 555-2345', 'Lucia Greco (Wife) - (760) 888-2222', '567 Desert Road, Palm Springs, CA 92262', '123-45-6789', 0.23),
(12, 'Lucia', 'Rinaldi', 'Server', 22.75, '2023-03-01', 'lucia.rinaldi@cucinaristorante.com', '(916) 555-7890', 'Andrea Rinaldi (Father) - (916) 777-5555', '890 Capitol Street, Sacramento, CA 95814', '234-56-7890', 0.17),
(13, 'Matteo', 'Santini', 'Dishwasher', 19.50, '2022-08-22', 'matteo.santini@cucinaristorante.com', '(949) 555-3456', 'Elena Santini (Sister) - (949) 666-7777', '345 Newport Boulevard, Newport Beach, CA 92663', '345-67-8901', 0.15),
(14, 'Chiara', 'Lazzari', 'Server Assistant', 20.75, '2023-04-05', 'chiara.lazzari@cucinaristorante.com', '(858) 555-8901', 'Giuseppe Lazzari (Uncle) - (858) 555-6666', '678 La Jolla Drive, San Diego, CA 92037', '456-78-9012', 0.16),
(15, 'Nicola', 'Palermo', 'Line Cook', 24.50, '2022-05-17', 'nicola.palermo@cucinaristorante.com', '(530) 555-4567', 'Rita Palermo (Mother) - (530) 888-8888', '901 Mountain View Road, Tahoe City, CA 96145', '567-89-0123', 0.18),
(16, 'Daniela', 'Bruno', 'Bar Manager', 32.00, '2021-10-20', 'daniela.bruno@cucinaristorante.com', '(415) 555-5678', 'Marco Bruno (Husband) - (415) 999-1111', '234 Marina Boulevard, San Francisco, CA 94123', '678-90-1234', 0.21),
(17, 'Andrea', 'Monti', 'Expediter', 25.50, '2022-11-12', 'andrea.monti@cucinaristorante.com', '(925) 555-6789', 'Sophia Monti (Wife) - (925) 777-4444', '567 Orchard Street, Pleasanton, CA 94566', '789-01-2345', 0.19),
(18, 'Serena', 'Pagano', 'Wine Steward', 28.50, '2023-01-25', 'serena.pagano@cucinaristorante.com', '(650) 555-7890', 'Carlo Pagano (Father) - (650) 666-6666', '123 Stanford Avenue, Menlo Park, CA 94025', '890-12-3456', 0.20),
(19, 'Vincenzo', 'De Luca', 'Sous Chef', 35.75, '2022-02-14', 'vincenzo.deluca@cucinaristorante.com', '(510) 555-2345', 'Anna De Luca (Mother) - (510) 888-3333', '456 Piedmont Road, Oakland, CA 94611', '901-23-4567', 0.22),
(20, 'Rita', 'Morelli', 'Hostess', 21.50, '2022-12-05', 'rita.morelli@cucinaristorante.com', '(408) 555-3456', 'Giovanni Morelli (Brother) - (408) 999-2222', '789 Almaden Boulevard, San Jose, CA 95113', '012-34-5678', 0.16),
(21, 'Giuseppe', 'Russo', 'Head Dishwasher', 20.25, '2022-01-30', 'giuseppe.russo@cucinaristorante.com', '(619) 555-4567', 'Maria Russo (Wife) - (619) 777-5555', '234 Harbor Street, San Diego, CA 92101', '123-45-6789', 0.16),
(22, 'Francesca', 'Colombo', 'Server', 22.75, '2023-05-10', 'francesca.colombo@cucinaristorante.com', '(707) 555-5678', 'Paolo Colombo (Father) - (707) 666-7777', '567 Wine Country Road, Healdsburg, CA 95448', '234-56-7890', 0.17),
(23, 'Alessandro', 'Romano', 'Prep Cook', 22.00, '2022-09-15', 'alessandro.romano@cucinaristorante.com', '(805) 555-6789', 'Isabella Romano (Sister) - (805) 888-9999', '890 Mission Street, Santa Maria, CA 93454', '345-67-8901', 0.16),
(24, 'Maria', 'Ferrari', 'Pantry Chef', 30.50, '2021-08-07', 'maria.ferrari@cucinaristorante.com', '(530) 555-7890', 'Luca Ferrari (Husband) - (530) 999-4444', '123 Lakeside Drive, South Lake Tahoe, CA 96150', '456-78-9012', 0.20),
(25, 'Luca', 'Bernardi', 'Kitchen Porter', 19.75, '2023-02-14', 'luca.bernardi@cucinaristorante.com', '(562) 555-8901', 'Sofia Bernardi (Mother) - (562) 777-6666', '456 Seaside Boulevard, Long Beach, CA 90802', '567-89-0123', 0.15),
(26, 'Silvia', 'Gentile', 'Catering Coordinator', 27.50, '2022-06-20', 'silvia.gentile@cucinaristorante.com', '(949) 555-2345', 'Matteo Gentile (Brother) - (949) 888-7777', '789 Coast Highway, Laguna Beach, CA 92651', '678-90-1234', 0.19),
(27, 'Riccardo', 'Gallo', 'Night Shift Cook', 25.00, '2022-04-01', 'riccardo.gallo@cucinaristorante.com', '(916) 555-3456', 'Clara Gallo (Wife) - (916) 666-8888', '234 River Road, Sacramento, CA 95814', '789-01-2345', 0.18),
(28, 'Beatrice', 'Marchetti', 'Bookkeeper', 33.00, '2021-09-12', 'beatrice.marchetti@cucinaristorante.com', '(408) 555-4567', 'Giorgio Marchetti (Husband) - (408) 999-5555', '567 Technology Drive, Santa Clara, CA 95054', '890-12-3456', 0.21),
(29, 'Paolo', 'Ferrero', 'Sous Chef', 35.75, '2022-07-05', 'paolo.ferrero@cucinaristorante.com', '(925) 555-5678', 'Giulia Ferrero (Sister) - (925) 888-2222', '890 Vineyard Road, Pleasanton, CA 94566', '901-23-4567', 0.22),
(30, 'Emma', 'Santoro', 'Server', 22.75, '2023-03-20', 'emma.santoro@cucinaristorante.com', '(213) 555-6789', 'Antonio Santoro (Father) - (213) 777-3333', '123 Hollywood Boulevard, Los Angeles, CA 90028', '012-34-5678', 0.17),
(31, 'Marco', 'Vitale', 'Bar Back', 21.25, '2022-10-01', 'marco.vitale@cucinaristorante.com', '(858) 555-7890', 'Lucia Vitale (Mother) - (858) 666-9999', '456 La Jolla Boulevard, San Diego, CA 92037', '123-45-6789', 0.16),
(32, 'Valentina', 'Barbieri', 'Server', 22.75, '2023-01-15', 'valentina.barbieri@cucinaristorante.com', '(650) 555-8901', 'Roberto Barbieri (Brother) - (650) 888-4444', '789 University Avenue, Palo Alto, CA 94301', '234-56-7890', 0.17),
(33, 'Leonardo', 'Cattaneo', 'Butcher', 29.50, '2022-02-28', 'leonardo.cattaneo@cucinaristorante.com', '(707) 555-2345', 'Elena Cattaneo (Wife) - (707) 999-5555', '234 Grape Lane, Napa, CA 94558', '345-67-8901', 0.20),
(34, 'Sofia', 'Pellegrini', 'Pastry Assistant', 21.75, '2023-04-15', 'sofia.pellegrini@cucinaristorante.com', '(510) 555-3456', 'Enzo Pellegrini (Father) - (510) 777-7777', '567 Piedmont Street, Berkeley, CA 94702', '456-78-9012', 0.17),
(35, 'Enzo', 'Caruso', 'Line Cook', 24.50, '2022-05-10', 'enzo.caruso@cucinaristorante.com', '(562) 555-4567', 'Rosa Caruso (Mother) - (562) 888-6666', '890 Atlantic Avenue, Long Beach, CA 90813', '567-89-0123', 0.18),
(36, 'Laura', 'Lombardi', 'Host Manager', 26.00, '2021-11-15', 'laura.lombardi@cucinaristorante.com', '(415) 555-5678', 'Andrea Lombardi (Husband) - (415) 999-2222', '123 Russian Hill Place, San Francisco, CA 94109', '678-90-1234', 0.19);




-- 2. Sample Data for Orders and Payments (to simulate staff productivity)
-- Order 1 for Staff 1
INSERT INTO Orders (order_id, table_id, customer_id, server_id, order_date, order_time, status, special_instructions, total_amount, discount_amount, tax_amount, final_amount)
VALUES
(1, 5, 1, 3, '2025-03-15', '18:45:00', 'Completed', 'Extra olive oil on side', 87.50, 0, 7.88, 95.38),
(2, 2, 2, 7, '2025-03-15', '19:15:00', 'Completed', 'Gluten-free pasta', 65.25, 0, 5.87, 71.12),
(3, 9, 3, 11, '2025-03-15', '20:30:00', 'Completed', 'High chair needed', 124.75, 10.00, 11.28, 126.03),
(4, 7, 4, 15, '2025-03-16', '18:00:00', 'Completed', 'Vegan options', 92.35, 0, 8.31, 100.66),
(5, 12, 5, 6, '2025-03-16', '19:45:00', 'Completed', 'Allergy alert - no nuts', 76.90, 0, 6.92, 83.82),
(6, 3, 6, 9, '2025-03-16', '20:15:00', 'Completed', 'Anniversary dessert', 108.50, 15.00, 9.77, 103.27),
(7, 8, 7, 12, '2025-03-17', '18:30:00', 'Completed', 'Wheelchair accessible seating', 63.75, 0, 5.74, 69.49),
(8, 15, 8, 2, '2025-03-17', '19:00:00', 'Completed', 'Large group, split checks', 245.60, 25.00, 22.10, 242.70),
(9, 6, 9, 14, '2025-03-17', '20:45:00', 'Completed', 'Birthday celebration', 98.25, 0, 8.84, 107.09),
(10, 1, 10, 5, '2025-03-18', '18:15:00', 'Completed', 'Romantic dinner', 112.50, 0, 10.13, 122.63),
(11, 10, 11, 8, '2025-03-18', '19:30:00', 'Completed', 'No onions', 79.90, 0, 7.19, 87.09),
(12, 4, 12, 16, '2025-03-18', '20:00:00', 'Completed', 'Extra bread', 67.35, 0, 6.06, 73.41),
(13, 14, 13, 1, '2025-03-19', '18:45:00', 'Completed', 'Corporate dinner', 203.75, 20.00, 18.34, 202.09),
(14, 5, 14, 10, '2025-03-19', '19:15:00', 'Completed', 'First date', 89.60, 0, 8.06, 97.66),
(15, 11, 15, 13, '2025-03-19', '20:30:00', 'Completed', 'Family reunion', 156.25, 15.00, 14.06, 155.31),
(16, 16, 16, 4, '2025-03-20', '18:00:00', 'Completed', 'Business meeting', 185.40, 25.00, 16.69, 177.09),
(17, 7, 17, 15, '2025-03-20', '19:45:00', 'Completed', 'Engagement celebration', 98.75, 0, 8.89, 107.64),
(18, 3, 18, 7, '2025-03-20', '20:15:00', 'Completed', 'Quiet table', 72.50, 0, 6.53, 79.03),
(19, 9, 19, 11, '2025-03-21', '18:30:00', 'Completed', 'Vegetarian options', 84.90, 0, 7.64, 92.54),
(20, 8, 20, 12, '2025-03-21', '19:00:00', 'Completed', 'Business dinner', 132.75, 10.00, 11.95, 134.70),
(21, 6, 21, 14, '2025-03-21', '20:45:00', 'Completed', 'Retirement party', 167.35, 20.00, 15.06, 162.41),
(22, 1, 22, 5, '2025-03-22', '18:15:00', 'Completed', 'Romantic evening', 95.60, 0, 8.60, 104.20),
(23, 12, 23, 6, '2025-03-22', '19:30:00', 'Completed', 'Surprise party', 215.50, 25.00, 19.40, 209.90),
(24, 4, 24, 16, '2025-03-22', '20:00:00', 'Completed', 'Graduation dinner', 103.25, 0, 9.29, 112.54),
(25, 15, 25, 2, '2025-03-23', '18:45:00', 'Completed', 'Large family gathering', 187.90, 20.00, 16.91, 184.81),
(26, 10, 26, 8, '2025-03-23', '19:15:00', 'Completed', 'Bachelor party', 142.35, 15.00, 12.81, 140.16),
(27, 5, 27, 10, '2025-03-23', '20:30:00', 'Completed', 'Belated birthday', 76.50, 0, 6.89, 83.39),
(28, 14, 28, 1, '2025-03-24', '18:00:00', 'Completed', 'Team dinner', 229.75, 25.00, 20.68, 225.43),
(29, 7, 29, 15, '2025-03-24', '19:45:00', 'Completed', 'Date night', 87.25, 0, 7.85, 95.10),
(30, 2, 30, 7, '2025-03-24', '20:15:00', 'Completed', 'Farewell dinner', 98.60, 0, 8.87, 107.47);


INSERT INTO Payments (payment_id, order_id, payment_date, payment_time, amount, tip_amount, payment_method, card_last_four, is_split, transaction_id, receipt_number)
VALUES
(1, 1, '2025-03-15', '19:15:00', 95.38, 15.50, 'Credit', '4532', FALSE, 'TXN-A12345', 'RCP-001'),
(2, 2, '2025-03-15', '19:45:00', 71.12, 12.00, 'Debit', '5421', FALSE, 'TXN-B23456', 'RCP-002'),
(3, 3, '2025-03-15', '21:00:00', 126.03, 20.25, 'Credit', '3210', TRUE, 'TXN-C34567', 'RCP-003'),
(4, 4, '2025-03-16', '18:30:00', 100.66, 16.75, 'Credit', '6543', FALSE, 'TXN-D45678', 'RCP-004'),
(5, 5, '2025-03-16', '20:15:00', 83.82, 14.50, 'Debit', '7654', FALSE, 'TXN-E56789', 'RCP-005'),
(6, 6, '2025-03-16', '20:45:00', 103.27, 17.25, 'Credit', '8765', FALSE, 'TXN-F67890', 'RCP-006'),
(7, 7, '2025-03-17', '19:00:00', 69.49, 11.75, 'Debit', '9876', FALSE, 'TXN-G78901', 'RCP-007'),
(8, 8, '2025-03-17', '19:30:00', 242.70, 35.50, 'Credit', '2109', TRUE, 'TXN-H89012', 'RCP-008'),
(9, 9, '2025-03-17', '21:15:00', 107.09, 18.00, 'Credit', '3456', FALSE, 'TX-I90123', 'RCP-009'),
(10, 10, '2025-03-18', '18:45:00', 122.63, 20.75, 'Debit', '4567', FALSE, 'TXN-J01234', 'RCP-010'),
(11, 11, '2025-03-18', '20:00:00', 87.09, 14.25, 'Credit', '5678', FALSE, 'TXN-K12345', 'RCP-011'),
(12, 12, '2025-03-18', '20:30:00', 73.41, 12.50, 'Debit', '6789', FALSE, 'TXN-L23456', 'RCP-012'),
(13, 13, '2025-03-19', '19:15:00', 202.09, 30.50, 'Credit', '7890', TRUE, 'TXN-M34567', 'RCP-013'),
(14, 14, '2025-03-19', '19:45:00', 97.66, 16.25, 'Credit', '8901', FALSE, 'TXN-N45678', 'RCP-014'),
(15, 15, '2025-03-19', '21:00:00', 155.31, 22.75, 'Debit', '9012', TRUE, 'TXN-O56789', 'RCP-015'),
(16, 16, '2025-03-20', '18:30:00', 177.09, 26.50, 'Credit', '0123', TRUE, 'TXN-P67890', 'RCP-016'),
(17, 17, '2025-03-20', '20:15:00', 107.64, 18.25, 'Debit', '1234', FALSE, 'TXN-Q78901', 'RCP-017'),
(18, 18, '2025-03-20', '20:45:00', 79.03, 13.00, 'Credit', '2345', FALSE, 'TXN-R89012', 'RCP-018'),
(19, 19, '2025-03-21', '19:00:00', 92.54, 15.75, 'Credit', '3456', FALSE, 'TXN-S90123', 'RCP-019'),
(20, 20, '2025-03-21', '19:30:00', 134.70, 20.25, 'Debit', '4567', TRUE, 'TXN-T01234', 'RCP-020'),
(21, 21, '2025-03-21', '21:15:00', 162.41, 24.50, 'Credit', '5678', FALSE, 'TXN-U12345', 'RCP-021'),
(22, 22, '2025-03-22', '18:45:00', 104.20, 17.50, 'Debit', '6789', FALSE, 'TXN-V23456', 'RCP-022'),
(23, 23, '2025-03-22', '20:00:00', 209.90, 31.50, 'Credit', '7890', TRUE, 'TXN-W34567', 'RCP-023'),
(24, 24, '2025-03-22', '20:30:00', 112.54, 19.00, 'Credit', '8901', FALSE, 'TXN-X45678', 'RCP-024'),
(25, 25, '2025-03-23', '19:15:00', 184.81, 27.75, 'Debit', '9012', TRUE, 'TXN-Y56789', 'RCP-025'),
(26, 26, '2025-03-23', '19:45:00', 140.16, 21.25, 'Credit', '0123', FALSE, 'TXN-Z67890', 'RCP-026'),
(27, 27, '2025-03-23', '21:00:00', 83.39, 14.00, 'Debit', '1234', FALSE, 'TXN-AA78901', 'RCP-027'),
(28, 28, '2025-03-24', '18:30:00', 225.43, 33.75, 'Credit', '2345', TRUE, 'TXN-BB89012', 'RCP-028'),
(29, 29, '2025-03-24', '20:15:00', 95.10, 16.00, 'Credit', '3456', FALSE, 'TXN-CC90123', 'RCP-029'),
(30, 30, '2025-03-24', '20:45:00', 107.47, 18.25, 'Debit', '4567', FALSE, 'TXN-DD01234', 'RCP-030');


-- 3. Sample Data for Reservations on a Specific Future Date (March 15, 2025)
INSERT INTO Reservations (reservation_id, customer_id, reservation_date, reservation_time, party_size, table_id, special_requests, status, reserved_by, contact_phone)
VALUES
  (101, 1, '2025-03-15', '18:30:00', 4, 5, 'Window seat preferred', 'Confirmed', 'Online', '555-123-4567'),
  (102, 2, '2025-03-15', '19:00:00', 2, 2, 'Quiet corner', 'Confirmed', 'Phone', '555-234-5678'),
  (103, 3, '2025-03-15', '20:00:00', 6, 9, 'High chair required', 'Confirmed', 'Online', '555-345-6789'),
  (104, 4, '2025-03-16', '17:45:00', 3, 7, 'Vegan options needed', 'Confirmed', 'Email', '415-555-1234'),
  (105, 5, '2025-03-16', '18:15:00', 5, 12, 'Gluten-free meal', 'Confirmed', 'Phone', '650-555-2345'),
  (106, 6, '2025-03-16', '19:30:00', 2, 3, 'Anniversary celebration', 'Confirmed', 'Online', '510-555-3456'),
  (107, 7, '2025-03-16', '20:45:00', 4, 8, 'Wheelchair accessible', 'Confirmed', 'Phone', '408-555-4567'),
  (108, 8, '2025-03-17', '17:30:00', 6, 15, 'Large group, multiple tables', 'Confirmed', 'Email', '925-555-5678'),
  (109, 9, '2025-03-17', '18:00:00', 3, 6, 'Birthday celebration', 'Confirmed', 'Online', '619-555-6789'),
  (110, 10, '2025-03-17', '19:15:00', 2, 1, 'Romantic dinner', 'Confirmed', 'Phone', '707-555-7890'),
  (111, 11, '2025-03-17', '20:30:00', 4, 10, 'Allergic to shellfish', 'Confirmed', 'Email', '805-555-8901'),
  (112, 12, '2025-03-18', '17:45:00', 5, 14, 'Corporate dinner', 'Confirmed', 'Online', '916-555-9012'),
  (113, 13, '2025-03-18', '18:30:00', 3, 4, 'Near fireplace', 'Confirmed', 'Phone', '562-555-0123'),
  (114, 14, '2025-03-18', '19:45:00', 2, 2, 'First date', 'Confirmed', 'Email', '858-555-1234'),
  (115, 15, '2025-03-18', '20:15:00', 4, 11, 'Family reunion', 'Confirmed', 'Online', '530-555-2345'),
  (116, 16, '2025-03-19', '17:30:00', 6, 16, 'Large group', 'Confirmed', 'Phone', '415-555-3456'),
  (117, 17, '2025-03-19', '18:45:00', 3, 5, 'Vegetarian options', 'Confirmed', 'Email', '650-555-4567'),
  (118, 18, '2025-03-19', '19:30:00', 2, 3, 'Quiet table', 'Confirmed', 'Online', '510-555-5678'),
  (119, 19, '2025-03-19', '20:45:00', 4, 9, 'Graduation dinner', 'Confirmed', 'Phone', '408-555-6789'),
  (120, 20, '2025-03-20', '17:15:00', 5, 13, 'Business meeting', 'Confirmed', 'Email', '925-555-7890'),
  (121, 21, '2025-03-20', '18:30:00', 3, 7, 'Engagement celebration', 'Confirmed', 'Online', '619-555-8901'),
  (122, 22, '2025-03-20', '19:45:00', 2, 1, 'Romantic evening', 'Confirmed', 'Phone', '707-555-9012'),
  (123, 23, '2025-03-20', '20:15:00', 4, 8, 'Surprise party', 'Confirmed', 'Email', '805-555-0123'),
  (124, 24, '2025-03-21', '17:45:00', 6, 15, 'Large family gathering', 'Confirmed', 'Online', '916-555-1234'),
  (125, 25, '2025-03-21', '18:00:00', 3, 6, 'Retirement party', 'Confirmed', 'Phone', '562-555-2345'),
  (126, 26, '2025-03-21', '19:30:00', 2, 4, 'Intimate dinner', 'Confirmed', 'Email', '858-555-3456'),
  (127, 27, '2025-03-21', '20:45:00', 4, 12, 'Bachelor party', 'Confirmed', 'Online', '530-555-4567'),
  (128, 28, '2025-03-22', '17:30:00', 5, 14, 'Team dinner', 'Confirmed', 'Phone', '415-555-5678'),
  (129, 29, '2025-03-22', '18:45:00', 3, 5, 'Belated birthday', 'Confirmed', 'Email', '650-555-6789'),
  (130, 30, '2025-03-22', '19:15:00', 2, 2, 'Date night', 'Confirmed', 'Online', '510-555-7890'),
  (131, 31, '2025-03-22', '20:30:00', 4, 10, 'Farewell dinner', 'Confirmed', 'Phone', '408-555-8901'),
  (132, 32, '2025-03-23', '17:15:00', 6, 16, 'Large reunion', 'Confirmed', 'Email', '925-555-9012');

-- 4. Sample Data for a range of shifts for our Shifts table.
insert into Shifts values -- Sample Data for Restaurant Database
-- This script contains INSERT statements for all tables defined in the project

-- Clear existing data (if any)
-- Uncomment these if you need to clean existing data
DELETE FROM Menu_Item_Ingredients;
DELETE FROM Order_Items;
DELETE FROM Payments;
DELETE FROM Orders;
DELETE FROM Shifts;
DELETE FROM Staff;
DELETE FROM Reservations;
DELETE FROM Tables;
DELETE FROM Customers;
DELETE FROM Menu;
DELETE FROM Menu_Categories;
DELETE FROM Ingredients;
DELETE FROM Suppliers;

-- Suppliers Table
INSERT INTO Suppliers (supplier_id, name, contact_person, email, phone, address, preferred_status, lead_time_days) VALUES
(1, 'Farm Fresh Produce', 'Maria Johnson', 'maria@farmfresh.com', '555-123-4567', '123 Rural Route, Farmington, CA 94123', TRUE, 2),
(2, 'Quality Meats Inc.', 'John Smith', 'john@qualitymeats.com', '555-234-5678', '456 Butcher St, Meatville, CA 94124', TRUE, 3),
(3, 'Organic Dairy Co-op', 'Laura Chen', 'laura@organicdairy.com', '555-345-6789', '789 Milk Way, Cowtown, CA 94125', TRUE, 1),
(4, 'Seafood Suppliers', 'Michael Lee', 'michael@seafoodsup.com', '555-456-7890', '101 Ocean Dr, Bayshore, CA 94126', FALSE, 2),
(5, 'Wine & Spirits Dist.', 'Sarah Williams', 'sarah@winespirits.com', '555-567-8901', '202 Vineyard Ln, Grapeville, CA 94127', TRUE, 5),
(6, 'Bakery Basics', 'David Rodriguez', 'david@bakerybasics.com', '555-678-9012', '303 Flour Ave, Breadtown, CA 94128', FALSE, 2),
(7, 'Specialty Imports', 'Emma Garcia', 'emma@specialtyimports.com', '555-789-0123', '404 Foreign Blvd, Portcity, CA 94129', TRUE, 7),
(8, 'Local Herbs & Spices', 'Robert Kim', 'robert@localherbs.com', '555-890-1234', '505 Garden Path, Herbville, CA 94130', TRUE, 2),
(9, 'Restaurant Equipment Co.', 'James Wilson', 'james@restaurantequip.com', '555-901-2345', '606 Industry Way, Tooltown, CA 94131', FALSE, 10),
(10, 'Cleaning Supplies Wholesale', 'Patricia Martinez', 'patricia@cleaningsupplies.com', '555-012-3456', '707 Soap St, Cleanville, CA 94132', TRUE, 4),
(11, 'Golden State Farms', 'Alex Thompson', 'alex@goldenstatefarms.com', '555-234-5678', '789 Valley View Road, Fresno, CA 93720', TRUE, 3),
(12, 'Pacific Northwest Seafoods', 'Rachel Kim', 'rachel@pacificseafoods.com', '555-345-6789', '456 Coastal Highway, Monterey, CA 93940', TRUE, 2),
(13, 'Sierra Nevada Dairy', 'Carlos Mendez', 'carlos@sierranevadadairy.com', '555-456-7890', '234 Mountain Pass Lane, Modesto, CA 95354', FALSE, 4),
(14, 'Artisan Bread Company', 'Elena Rodriguez', 'elena@artisanbread.com', '555-567-8901', '567 Baker Street, San Jose, CA 95110', TRUE, 1),
(15, 'California Herb Gardens', 'Steven Wong', 'steven@californiaherbgardens.com', '555-678-9012', '890 Agricultural Way, Salinas, CA 93901', TRUE, 2),
(16, 'Premium Meat Distributors', 'Jessica Taylor', 'jessica@premiummeatdist.com', '555-789-0123', '123 Rancher Road, Sacramento, CA 95814', FALSE, 5),
(17, 'Coastal Olive Oil Co.', 'Miguel Santos', 'miguel@coastaloliveoil.com', '555-890-1234', '456 Olive Grove Lane, Chico, CA 95926', TRUE, 3),
(18, 'California Wine Merchants', 'Anna Patel', 'anna@californiawinemerchants.com', '555-901-2345', '789 Vineyard Terrace, Napa, CA 94558', TRUE, 4),
(19, 'Green Valley Kitchen Supplies', 'Brian Anderson', 'brian@greenvalleysupplies.com', '555-012-3456', '234 Industrial Park Drive, Santa Rosa, CA 95403', FALSE, 7),
(20, 'Natural Pantry Provisions', 'Sophia Lee', 'sophia@naturalpantry.com', '555-123-4567', '567 Harvest Lane, Davis, CA 95616', TRUE, 2);

-- Ingredients Table
INSERT INTO Ingredients (ingredient_id, name, unit, quantity_on_hand, reorder_level, supplier_id, cost_per_unit, storage_location) VALUES
(1, 'Flour', 'kg', 50.00, 10.00, 6, 1.25, 'Dry Storage A1'),
(2, 'Sugar', 'kg', 30.00, 8.00, 6, 1.50, 'Dry Storage A2'),
(3, 'Salt', 'kg', 15.00, 3.00, 8, 0.75, 'Dry Storage A3'),
(4, 'Pepper', 'kg', 5.00, 1.00, 8, 15.00, 'Dry Storage A4'),
(5, 'Chicken Breast', 'kg', 25.00, 8.00, 2, 9.50, 'Refrigerator B1'),
(6, 'Ground Beef', 'kg', 20.00, 7.00, 2, 8.75, 'Refrigerator B2'),
(7, 'Salmon Fillet', 'kg', 15.00, 5.00, 4, 18.50, 'Refrigerator B3'),
(8, 'Shrimp', 'kg', 12.00, 4.00, 4, 22.00, 'Refrigerator B4'),
(9, 'Tomatoes', 'kg', 30.00, 10.00, 1, 3.50, 'Produce C1'),
(10, 'Lettuce', 'head', 25.00, 8.00, 1, 1.75, 'Produce C2'),
(11, 'Onions', 'kg', 40.00, 10.00, 1, 1.25, 'Produce C3'),
(12, 'Garlic', 'kg', 8.00, 2.00, 1, 5.00, 'Produce C4'),
(13, 'Milk', 'liter', 30.00, 10.00, 3, 1.50, 'Refrigerator D1'),
(14, 'Cream', 'liter', 15.00, 5.00, 3, 4.00, 'Refrigerator D2'),
(15, 'Butter', 'kg', 12.00, 4.00, 3, 8.00, 'Refrigerator D3'),
(16, 'Eggs', 'dozen', 20.00, 5.00, 3, 3.50, 'Refrigerator D4'),
(17, 'Red Wine', 'bottle', 48.00, 12.00, 5, 15.00, 'Wine Cellar E1'),
(18, 'White Wine', 'bottle', 48.00, 12.00, 5, 14.00, 'Wine Cellar E2'),
(19, 'Vodka', 'bottle', 24.00, 6.00, 5, 20.00, 'Bar Storage E3'),
(20, 'Gin', 'bottle', 18.00, 4.00, 5, 22.00, 'Bar Storage E4'),
(21, 'Olive Oil', 'liter', 25.00, 5.00, 7, 12.00, 'Dry Storage F1'),
(22, 'Balsamic Vinegar', 'liter', 15.00, 3.00, 7, 18.00, 'Dry Storage F2'),
(23, 'Rice', 'kg', 40.00, 10.00, 7, 2.50, 'Dry Storage F3'),
(24, 'Pasta', 'kg', 35.00, 8.00, 7, 2.00, 'Dry Storage F4'),
(25, 'Basil', 'bunch', 20.00, 5.00, 8, 2.00, 'Produce G1'),
(26, 'Rosemary', 'bunch', 15.00, 4.00, 8, 2.00, 'Produce G2'),
(27, 'Thyme', 'bunch', 15.00, 4.00, 8, 2.00, 'Produce G3'),
(28, 'Parsley', 'bunch', 20.00, 5.00, 8, 1.75, 'Produce G4'),
(29, 'Chocolate', 'kg', 10.00, 3.00, 7, 12.00, 'Dry Storage H1'),
(30, 'Vanilla Extract', 'liter', 5.00, 1.00, 7, 28.00, 'Dry Storage H2'),
(31, 'Cheddar Cheese', 'kg', 15.00, 4.00, 3, 9.00, 'Refrigerator I1'),
(32, 'Mozzarella Cheese', 'kg', 18.00, 5.00, 3, 8.50, 'Refrigerator I2'),
(33, 'Parmesan Cheese', 'kg', 8.00, 2.00, 3, 14.00, 'Refrigerator I3'),
(34, 'Lemon', 'kg', 12.00, 4.00, 1, 3.00, 'Produce J1'),
(35, 'Lime', 'kg', 10.00, 3.00, 1, 3.25, 'Produce J2'),
(36, 'Avocado', 'each', 35.00, 10.00, 1, 1.75, 'Produce J3'),
(37, 'Bell Peppers', 'kg', 15.00, 5.00, 1, 4.50, 'Produce J4'),
(38, 'Heavy Cream', 'liter', 12.00, 4.00, 3, 5.00, 'Refrigerator K1'),
(39, 'Sour Cream', 'kg', 8.00, 2.00, 3, 4.50, 'Refrigerator K2'),
(40, 'Bacon', 'kg', 10.00, 3.00, 2, 11.00, 'Refrigerator K3');

-- Menu_Categories Table
INSERT INTO Menu_Categories (category_id, name, description, display_order) VALUES
(1, 'Appetizers', 'Small dishes to start your meal', 1),
(2, 'Soups', 'Warm and comforting soups', 2),
(3, 'Salads', 'Fresh and healthy salad options', 3),
(4, 'Pasta', 'Handmade pasta dishes', 4),
(5, 'Main Courses', 'Hearty entrees and specialties', 5),
(6, 'Seafood', 'Fresh catches from the sea', 6),
(7, 'Vegetarian', 'Delicious plant-based options', 7),
(8, 'Sides', 'Complementary side dishes', 8),
(9, 'Desserts', 'Sweet treats to finish your meal', 9),
(10, 'Drinks', 'Refreshing beverages', 10),
(11, 'Breakfast', 'Morning favorites', 11),
(12, 'Lunch Specials', 'Midday meal deals', 12),
(13, 'Kids Menu', 'Child-friendly options', 13),
(14, 'Seasonal Specials', 'Limited time offerings', 14),
(15, 'Chef Recommendations', 'Our chef favorite dishes', 15);

-- Menu Table
INSERT INTO Menu (dish_id, category_id, dish_name, description, price, is_vegetarian, is_vegan, is_gluten_free, calories, preparation_time, is_available, is_seasonal, image_path) VALUES
(1, 1, 'Bruschetta', 'Toasted bread topped with fresh tomatoes, garlic, and basil', 8.95, TRUE, TRUE, FALSE, 320, 10, TRUE, FALSE, '/images/bruschetta.jpg'),
(2, 1, 'Calamari Fritti', 'Crispy fried calamari served with marinara sauce', 12.95, FALSE, FALSE, FALSE, 450, 15, TRUE, FALSE, '/images/calamari.jpg'),
(3, 1, 'Spinach Artichoke Dip', 'Creamy spinach and artichoke dip with tortilla chips', 10.95, TRUE, FALSE, TRUE, 520, 12, TRUE, FALSE, '/images/spinach_dip.jpg'),
(4, 2, 'Minestrone Soup', 'Traditional Italian vegetable soup with pasta', 7.95, TRUE, TRUE, FALSE, 280, 8, TRUE, FALSE, '/images/minestrone.jpg'),
(5, 2, 'Clam Chowder', 'New England style creamy clam chowder', 8.95, FALSE, FALSE, FALSE, 420, 8, TRUE, FALSE, '/images/clam_chowder.jpg'),
(6, 3, 'Caesar Salad', 'Romaine lettuce, croutons, and parmesan with Caesar dressing', 9.95, TRUE, FALSE, FALSE, 380, 7, TRUE, FALSE, '/images/caesar_salad.jpg'),
(7, 3, 'Caprese Salad', 'Fresh mozzarella, tomatoes, and basil with balsamic glaze', 11.95, TRUE, FALSE, TRUE, 320, 6, TRUE, FALSE, '/images/caprese.jpg'),
(8, 4, 'Spaghetti Carbonara', 'Spaghetti with pancetta, eggs, and parmesan', 16.95, FALSE, FALSE, FALSE, 780, 18, TRUE, FALSE, '/images/carbonara.jpg'),
(9, 4, 'Fettuccine Alfredo', 'Fettuccine pasta in a creamy parmesan sauce', 15.95, TRUE, FALSE, FALSE, 850, 15, TRUE, FALSE, '/images/alfredo.jpg'),
(10, 5, 'Chicken Parmesan', 'Breaded chicken breast topped with marinara and mozzarella', 18.95, FALSE, FALSE, FALSE, 720, 25, TRUE, FALSE, '/images/chicken_parm.jpg'),
(11, 5, 'Filet Mignon', '8oz filet served with mashed potatoes and seasonal vegetables', 32.95, FALSE, FALSE, TRUE, 680, 30, TRUE, FALSE, '/images/filet.jpg'),
(12, 6, 'Grilled Salmon', 'Fresh salmon fillet with lemon butter sauce', 24.95, FALSE, FALSE, TRUE, 520, 20, TRUE, FALSE, '/images/salmon.jpg'),
(13, 6, 'Shrimp Scampi', 'Garlic butter shrimp over linguine pasta', 22.95, FALSE, FALSE, FALSE, 650, 22, TRUE, FALSE, '/images/scampi.jpg'),
(14, 7, 'Vegetable Stir Fry', 'Mixed vegetables stir-fried with tofu in teriyaki sauce', 14.95, TRUE, TRUE, TRUE, 380, 15, TRUE, FALSE, '/images/stir_fry.jpg'),
(15, 7, 'Eggplant Parmesan', 'Breaded eggplant topped with marinara and mozzarella', 16.95, TRUE, FALSE, FALSE, 560, 25, TRUE, FALSE, '/images/eggplant_parm.jpg'),
(16, 8, 'Garlic Mashed Potatoes', 'Creamy garlic mashed potatoes', 5.95, TRUE, FALSE, TRUE, 240, 10, TRUE, FALSE, '/images/mashed_potatoes.jpg'),
(17, 8, 'Steamed Broccoli', 'Fresh broccoli steamed and lightly seasoned', 4.95, TRUE, TRUE, TRUE, 120, 8, TRUE, FALSE, '/images/broccoli.jpg'),
(18, 9, 'Tiramisu', 'Classic Italian coffee-flavored dessert', 8.95, TRUE, FALSE, FALSE, 420, 5, TRUE, FALSE, '/images/tiramisu.jpg'),
(19, 9, 'Chocolate Lava Cake', 'Warm chocolate cake with a molten center', 9.95, TRUE, FALSE, FALSE, 580, 15, TRUE, FALSE, '/images/lava_cake.jpg'),
(20, 10, 'House Red Wine', 'Glass of our house Cabernet Sauvignon', 9.95, TRUE, TRUE, TRUE, 120, 2, TRUE, FALSE, '/images/red_wine.jpg'),
(21, 10, 'Craft Beer', 'Rotating selection of local craft beers', 7.95, TRUE, TRUE, TRUE, 180, 2, TRUE, FALSE, '/images/craft_beer.jpg'),
(22, 11, 'Eggs Benedict', 'Poached eggs and Canadian bacon on English muffin with hollandaise', 14.95, FALSE, FALSE, FALSE, 680, 15, TRUE, FALSE, '/images/eggs_benedict.jpg'),
(23, 11, 'Buttermilk Pancakes', 'Stack of fluffy buttermilk pancakes with maple syrup', 12.95, TRUE, FALSE, FALSE, 720, 12, TRUE, FALSE, '/images/pancakes.jpg'),
(24, 12, 'Lunch Combo', 'Half sandwich with soup or salad', 12.95, FALSE, FALSE, FALSE, 550, 10, TRUE, FALSE, '/images/lunch_combo.jpg'),
(25, 13, 'Chicken Tenders', 'Breaded chicken tenders with french fries', 9.95, FALSE, FALSE, FALSE, 580, 15, TRUE, FALSE, '/images/chicken_tenders.jpg'),
(26, 14, 'Pumpkin Ravioli', 'Seasonal pumpkin-filled ravioli with sage brown butter', 18.95, TRUE, FALSE, FALSE, 620, 20, TRUE, TRUE, '/images/pumpkin_ravioli.jpg'),
(27, 15, 'Surf & Turf', 'Filet mignon and lobster tail with drawn butter', 42.95, FALSE, FALSE, TRUE, 820, 35, TRUE, FALSE, '/images/surf_turf.jpg'),
(28, 1, 'Buffalo Wings', 'Spicy buffalo wings with blue cheese dressing', 13.95, FALSE, FALSE, TRUE, 680, 18, TRUE, FALSE, '/images/buffalo_wings.jpg'),
(29, 3, 'Greek Salad', 'Mixed greens with feta, olives, and Greek dressing', 12.95, TRUE, FALSE, TRUE, 350, 8, TRUE, FALSE, '/images/greek_salad.jpg'),
(30, 5, 'Beef Stroganoff', 'Tender beef in a mushroom sauce over egg noodles', 19.95, FALSE, FALSE, FALSE, 720, 25, TRUE, FALSE, '/images/stroganoff.jpg');

-- Menu_Item_Ingredients (Junction table for Menu and Ingredients)
INSERT INTO Menu_Item_Ingredients (dish_id, ingredient_id, quantity) VALUES
(1, 1, 0.10), -- Bruschetta - Flour (for bread)
(1, 9, 0.20), -- Bruschetta - Tomatoes
(1, 12, 0.05), -- Bruschetta - Garlic
(1, 21, 0.03), -- Bruschetta - Olive Oil
(1, 25, 0.02), -- Bruschetta - Basil
(2, 1, 0.15), -- Calamari - Flour
(2, 3, 0.01), -- Calamari - Salt
(2, 16, 0.17), -- Calamari - Eggs
(2, 21, 0.10), -- Calamari - Olive Oil
(3, 14, 0.20), -- Spinach Artichoke Dip - Cream
(3, 31, 0.15), -- Spinach Artichoke Dip - Cheddar Cheese
(3, 33, 0.10), -- Spinach Artichoke Dip - Parmesan Cheese
(4, 9, 0.15), -- Minestrone - Tomatoes
(4, 11, 0.10), -- Minestrone - Onions
(4, 24, 0.10), -- Minestrone - Pasta
(4, 37, 0.08), -- Minestrone - Bell Peppers
(5, 8, 0.20), -- Clam Chowder - Shrimp
(5, 13, 0.25), -- Clam Chowder - Milk
(5, 14, 0.15), -- Clam Chowder - Cream
(6, 10, 0.30), -- Caesar Salad - Lettuce
(6, 33, 0.10), -- Caesar Salad - Parmesan Cheese
(7, 9, 0.25), -- Caprese - Tomatoes
(7, 21, 0.05), -- Caprese - Olive Oil
(7, 22, 0.03), -- Caprese - Balsamic Vinegar
(7, 25, 0.05), -- Caprese - Basil
(7, 32, 0.25), -- Caprese - Mozzarella Cheese
(8, 16, 0.25), -- Carbonara - Eggs
(8, 24, 0.30), -- Carbonara - Pasta
(8, 33, 0.15), -- Carbonara - Parmesan Cheese
(8, 40, 0.15), -- Carbonara - Bacon
(9, 14, 0.30), -- Alfredo - Cream
(9, 24, 0.30), -- Alfredo - Pasta
(9, 33, 0.20), -- Alfredo - Parmesan Cheese
(10, 5, 0.35), -- Chicken Parmesan - Chicken Breast
(10, 9, 0.20), -- Chicken Parmesan - Tomatoes
(10, 32, 0.20), -- Chicken Parmesan - Mozzarella Cheese
(11, 15, 0.10), -- Filet Mignon - Butter
(11, 26, 0.01), -- Filet Mignon - Rosemary
(12, 7, 0.30), -- Grilled Salmon - Salmon Fillet
(12, 15, 0.08), -- Grilled Salmon - Butter
(12, 34, 0.10), -- Grilled Salmon - Lemon
(13, 8, 0.35), -- Shrimp Scampi - Shrimp
(13, 12, 0.05), -- Shrimp Scampi - Garlic
(13, 15, 0.15), -- Shrimp Scampi - Butter
(13, 24, 0.25), -- Shrimp Scampi - Pasta
(14, 11, 0.15), -- Vegetable Stir Fry - Onions
(14, 37, 0.20), -- Vegetable Stir Fry - Bell Peppers
(15, 9, 0.25), -- Eggplant Parmesan - Tomatoes
(15, 32, 0.20), -- Eggplant Parmesan - Mozzarella Cheese
(16, 14, 0.10), -- Mashed Potatoes - Cream
(16, 15, 0.10), -- Mashed Potatoes - Butter
(17, 3, 0.01), -- Steamed Broccoli - Salt
(18, 16, 0.10), -- Tiramisu - Eggs
(18, 29, 0.05), -- Tiramisu - Chocolate
(19, 15, 0.10), -- Chocolate Lava Cake - Butter
(19, 16, 0.15), -- Chocolate Lava Cake - Eggs
(19, 29, 0.20), -- Chocolate Lava Cake - Chocolate
(20, 17, 1.00), -- House Red Wine - Red Wine
(21, 21, 1.00), -- Craft Beer - Not applicable
(22, 15, 0.10), -- Eggs Benedict - Butter
(22, 16, 0.25), -- Eggs Benedict - Eggs
(22, 40, 0.15), -- Eggs Benedict - Bacon
(23, 1, 0.25), -- Pancakes - Flour
(23, 2, 0.10), -- Pancakes - Sugar
(23, 13, 0.20), -- Pancakes - Milk
(23, 16, 0.20), -- Pancakes - Eggs
(24, 1, 0.15), -- Lunch Combo - Flour
(24, 10, 0.15), -- Lunch Combo - Lettuce
(24, 31, 0.10), -- Lunch Combo - Cheddar Cheese
(25, 5, 0.25), -- Chicken Tenders - Chicken Breast
(25, 16, 0.15), -- Chicken Tenders - Eggs
(26, 1, 0.30), -- Pumpkin Ravioli - Flour
(26, 15, 0.15), -- Pumpkin Ravioli - Butter
(26, 16, 0.20), -- Pumpkin Ravioli - Eggs
(26, 27, 0.02), -- Pumpkin Ravioli - Thyme
(27, 7, 0.30), -- Surf & Turf - Salmon Fillet
(27, 15, 0.20), -- Surf & Turf - Butter
(28, 5, 0.35), -- Buffalo Wings - Chicken
(28, 21, 0.15), -- Buffalo Wings - Olive Oil
(29, 10, 0.30), -- Greek Salad - Lettuce
(29, 21, 0.05), -- Greek Salad - Olive Oil
(29, 34, 0.08), -- Greek Salad - Lemon
(30, 6, 0.35), -- Beef Stroganoff - Ground Beef
(30, 14, 0.20), -- Beef Stroganoff - Cream
(30, 24, 0.25); -- Beef Stroganoff - Pasta

-- Tables Table
INSERT INTO Tables (table_id, table_number, capacity, section, is_accessible, status) VALUES
(1, 'A1', 2, 'Window', TRUE, 'Available'),
(2, 'A2', 2, 'Window', TRUE, 'Available'),
(3, 'A3', 4, 'Window', FALSE, 'Available'),
(4, 'A4', 4, 'Window', FALSE, 'Available'),
(5, 'B1', 4, 'Main', TRUE, 'Available'),
(6, 'B2', 4, 'Main', TRUE, 'Available'),
(7, 'B3', 6, 'Main', FALSE, 'Available'),
(8, 'B4', 6, 'Main', FALSE, 'Available'),
(9, 'C1', 8, 'Main', TRUE, 'Available'),
(10, 'C2', 8, 'Main', FALSE, 'Available'),
(11, 'D1', 2, 'Bar', FALSE, 'Available'),
(12, 'D2', 2, 'Bar', FALSE, 'Available'),
(13, 'D3', 4, 'Bar', FALSE, 'Available'),
(14, 'E1', 6, 'Patio', TRUE, 'Available'),
(15, 'E2', 6, 'Patio', TRUE, 'Available'),
(16, 'E3', 8, 'Patio', FALSE, 'Available'),
(17, 'F1', 10, 'Private', TRUE, 'Available'),
(18, 'F2', 12, 'Private', TRUE, 'Available'),
(19, 'G1', 4, 'Lounge', FALSE, 'Available'),
(20, 'G2', 4, 'Lounge', FALSE, 'Available');

-- Customers Table
INSERT INTO Customers (customer_id, first_name, last_name, email, phone, address, loyalty_points, join_date, birth_date, dietary_preferences, allergy_information, last_visit_date, marketing_opt_in) VALUES
(1, 'Emily', 'Rodriguez', 'emily.rodriguez@email.com', '(415) 555-1234', '1245 Marina Boulevard, San Francisco, CA 94123', 350, '2022-03-15', '1985-06-22', 'Vegetarian', 'None', '2024-02-10', TRUE),
(2, 'Jason', 'Chen', 'jason.chen@gmail.com', '(650) 555-5678', '892 University Avenue, Palo Alto, CA 94301', 175, '2022-05-22', '1990-11-15', 'No Restrictions', 'Shellfish', '2024-01-28', FALSE),
(3, 'Aisha', 'Patel', 'aisha.patel@outlook.com', '(510) 555-9012', '456 College Avenue, Berkeley, CA 94702', 525, '2021-11-01', '1978-04-03', 'Vegan', 'Tree Nuts', '2024-02-15', TRUE),
(4, 'Marcus', 'Thompson', 'marcus.thompson@yahoo.com', '(707) 555-3456', '789 Vineyard Road, Napa, CA 94558', 250, '2023-01-10', '1982-09-17', 'Gluten-Free', 'Dairy', '2024-02-05', FALSE),
(5, 'Sophia', 'Kim', 'sophia.kim@icloud.com', '(408) 555-7890', '234 Almaden Boulevard, San Jose, CA 95113', 425, '2022-07-18', '1988-12-30', 'No Restrictions', 'Peanuts', '2024-01-19', FALSE),
(6, 'Carlos', 'Garcia', 'carlos.garcia@gmail.com', '(925) 555-2345', '567 Olive Lane, Walnut Creek, CA 94597', 625, '2022-09-05', '1975-07-11', 'Pescatarian', 'None', '2024-02-12', TRUE),
(7, 'Olivia', 'Wong', 'olivia.wong@email.com', '(619) 555-6789', '123 Harbor Drive, San Diego, CA 92101', 200, '2022-04-12', '1993-01-25', 'No Restrictions', 'Soy', '2024-01-30', TRUE),
(8, 'Ethan', 'Nguyen', 'ethan.nguyen@outlook.com', '(213) 555-4567', '456 Sunset Boulevard, Los Angeles, CA 90028', 475, '2023-02-20', '1980-05-14', 'Vegetarian', 'Eggs', '2024-02-08', FALSE),
(9, 'Rachel', 'Cohen', 'rachel.cohen@yahoo.com', '(805) 555-8901', '789 Mission Street, Santa Barbara, CA 93101', 300, '2022-06-30', '1987-10-08', 'No Restrictions', 'None', '2024-01-22', TRUE),
(10, 'Michael', 'Lee', 'michael.lee@icloud.com', '(562) 555-2345', '234 Palm Avenue, Long Beach, CA 90802', 150, '2022-10-15', '1995-03-19', 'Gluten-Free', 'Shellfish', '2024-02-03', TRUE),
(11, 'Samantha', 'Brown', 'samantha.brown@gmail.com', '(760) 555-6789', '567 Desert Road, Palm Springs, CA 92262', 400, '2021-12-08', '1983-08-26', 'Vegan', 'Tree Nuts', '2024-01-25', FALSE),
(12, 'David', 'Singh', 'david.singh@email.com', '(916) 555-3456', '890 Capitol Street, Sacramento, CA 95814', 275, '2023-03-01', '1979-12-05', 'No Restrictions', 'Dairy', '2024-02-14', TRUE),
(13, 'Emma', 'Martinez', 'emma.martinez@outlook.com', '(949) 555-7890', '345 Newport Boulevard, Newport Beach, CA 92663', 500, '2022-08-22', '1991-06-13', 'Pescatarian', 'Peanuts', '2024-01-17', TRUE),
(14, 'Ryan', 'Taylor', 'ryan.taylor@yahoo.com', '(858) 555-2345', '678 La Jolla Drive, San Diego, CA 92037', 225, '2023-04-05', '1986-02-28', 'No Restrictions', 'Soy', '2024-02-06', FALSE),
(15, 'Zara', 'Khan', 'zara.khan@icloud.com', '(530) 555-6789', '901 Mountain View Road, Tahoe City, CA 96145', 375, '2022-05-17', '1984-11-22', 'Vegetarian', 'Eggs', '2024-01-29', TRUE),
(16, 'Christopher', 'Jackson', 'christopher.jackson@gmail.com', '(415) 555-4567', '234 Marina Boulevard, San Francisco, CA 94123', 550, '2021-10-20', '1977-09-16', 'No Restrictions', 'None', '2024-02-11', TRUE),
(17, 'Lauren', 'Davis', 'lauren.davis@email.com', '(925) 555-8901', '567 Orchard Street, Pleasanton, CA 94566', 175, '2022-11-12', '1992-07-07', 'Gluten-Free', 'Shellfish', '2024-01-20', FALSE),
(18, 'Alexander', 'Wilson', 'alexander.wilson@outlook.com', '(650) 555-3456', '123 Stanford Avenue, Menlo Park, CA 94025', 425, '2023-01-25', '1981-04-12', 'Vegan', 'Tree Nuts', '2024-02-07', TRUE),
(19, 'Maya', 'Gupta', 'maya.gupta@yahoo.com', '(510) 555-7890', '456 Piedmont Road, Oakland, CA 94611', 300, '2022-02-14', '1989-01-30', 'No Restrictions', 'Dairy', '2024-01-26', TRUE),
(20, 'Daniel', 'Miller', 'daniel.miller@icloud.com', '(408) 555-2345', '789 Almaden Boulevard, San Jose, CA 95113', 475, '2022-12-05', '1976-05-18', 'Pescatarian', 'Peanuts', '2024-02-04', FALSE),
(21, 'Jasmine', 'Liu', 'jasmine.liu@gmail.com', '(619) 555-6789', '234 Harbor Street, San Diego, CA 92101', 250, '2022-01-30', '1994-08-09', 'No Restrictions', 'Soy', '2024-01-31', TRUE),
(22, 'Brandon', 'Moore', 'brandon.moore@email.com', '(707) 555-4567', '567 Wine Country Road, Healdsburg, CA 95448', 625, '2023-05-10', '1980-03-25', 'Vegetarian', 'Eggs', '2024-02-13', TRUE),
(23, 'Priya', 'Ramirez', 'priya.ramirez@outlook.com', '(805) 555-8901', '890 Coastal Road, Santa Barbara, CA 93101', 300, '2022-09-15', '1987-11-04', 'Vegan', 'Peanuts', '2024-01-16', TRUE),
(24, 'Nathan', 'Park', 'nathan.park@yahoo.com', '(650) 555-3210', '123 University Drive, Mountain View, CA 94040', 175, '2023-02-28', '1993-06-17', 'No Restrictions', 'Shellfish', '2024-02-09', FALSE),
(25, 'Isabella', 'White', 'isabella.white@icloud.com', '(949) 555-6543', '456 Newport Coast Road, Newport Beach, CA 92657', 450, '2022-05-03', '1979-09-22', 'Gluten-Free', 'Tree Nuts', '2024-01-24', TRUE),
(26, 'Ahmed', 'Johnson', 'ahmed.johnson@gmail.com', '(510) 555-9876', '789 Telegraph Avenue, Berkeley, CA 94720', 525, '2021-12-12', '1982-01-15', 'Pescatarian', 'Dairy', '2024-02-07', TRUE),
(27, 'Lily', 'Chang', 'lily.chang@email.com', '(408) 555-4321', '234 Silicon Valley Road, Cupertino, CA 95014', 375, '2022-07-22', '1991-04-30', 'Vegetarian', 'Soy', '2024-01-18', FALSE),
(28, 'Kevin', 'Martinez', 'kevin.martinez@outlook.com', '(619) 555-7890', '567 Harbor Drive, San Diego, CA 92101', 400, '2023-01-05', '1986-12-08', 'No Restrictions', 'None', '2024-02-12', TRUE),
(29, 'Aria', 'Sharma', 'aria.sharma@yahoo.com', '(925) 555-2468', '890 Vineyard Lane, Livermore, CA 94550', 250, '2022-10-20', '1995-07-11', 'Vegan', 'Eggs', '2024-01-22', TRUE),
(30, 'Justin', 'Anderson', 'justin.anderson@icloud.com', '(415) 555-1357', '123 Golden Gate Avenue, San Francisco, CA 94102', 475, '2022-04-18', '1980-02-14', 'Gluten-Free', 'Peanuts', '2024-02-05', FALSE),
(31, 'Sophia', 'Gupta', 'sophia.gupta@gmail.com', '(760) 555-8642', '456 Desert Springs Road, Palm Springs, CA 92262', 300, '2023-03-15', '1984-10-26', 'Pescatarian', 'Shellfish', '2024-01-30', TRUE),
(32, 'Eric', 'Rodriguez', 'eric.rodriguez@email.com', '(916) 555-9753', '789 Capitol Mall, Sacramento, CA 95814', 525, '2021-11-07', '1977-05-19', 'No Restrictions', 'Tree Nuts', '2024-02-14', TRUE),
(33, 'Mia', 'Kim', 'mia.kim@outlook.com', '(562) 555-4680', '234 Seaside Boulevard, Long Beach, CA 90802', 200, '2022-08-30', '1992-03-05', 'Vegetarian', 'Dairy', '2024-01-25', FALSE),
(34, 'Gabriel', 'Torres', 'gabriel.torres@yahoo.com', '(805) 555-2580', '567 Mission Street, Santa Maria, CA 93454', 425, '2023-02-10', '1983-11-30', 'Vegan', 'Soy', '2024-02-08', TRUE),
(35, 'Hannah', 'Lee', 'hannah.lee@icloud.com', '(650) 555-7412', '890 Stanford Campus Drive, Stanford, CA 94305', 350, '2022-06-05', '1990-08-17', 'No Restrictions', 'Eggs', '2024-01-21', TRUE),
(36, 'Miguel', 'Singh', 'miguel.singh@gmail.com', '(408) 555-3698', '123 Technology Park, San Jose, CA 95134', 475, '2022-12-22', '1981-01-09', 'Gluten-Free', 'Peanuts', '2024-02-03', FALSE),
(37, 'Olivia', 'Brown', 'olivia.brown@email.com', '(949) 555-9514', '456 Fashion Island Boulevard, Newport Beach, CA 92660', 250, '2023-04-01', '1988-06-23', 'Pescatarian', 'Shellfish', '2024-01-17', TRUE),
(38, 'Cameron', 'Wilson', 'cameron.wilson@outlook.com', '(530) 555-6347', '789 Lake Tahoe Boulevard, South Lake Tahoe, CA 96150', 400, '2022-02-25', '1979-09-08', 'Vegetarian', 'Tree Nuts', '2024-02-11', TRUE),
(39, 'Zoe', 'Chen', 'zoe.chen@yahoo.com', '(510) 555-8023', '234 Park Street, Oakland, CA 94610', 525, '2021-10-05', '1994-12-12', 'No Restrictions', 'Dairy', '2024-01-28', FALSE),
(40, 'Luis', 'Jackson', 'luis.jackson@icloud.com', '(619) 555-5791', '567 Coronado Avenue, Coronado, CA 92118', 300, '2023-01-20', '1986-07-16', 'Vegan', 'Soy', '2024-02-06', TRUE),
(41, 'Emma', 'Khan', 'emma.khan@gmail.com', '(925) 555-2469', '890 Dublin Boulevard, Dublin, CA 94568', 375, '2022-05-12', '1991-02-28', 'Gluten-Free', 'Eggs', '2024-01-19', TRUE),
(42, 'Derek', 'Garcia', 'derek.garcia@email.com', '(415) 555-7890', '123 Lombard Street, San Francisco, CA 94109', 450, '2022-11-30', '1983-05-07', 'No Restrictions', 'Peanuts', '2024-02-10', FALSE),
(43, 'Nina', 'Patel', 'nina.patel@outlook.com', '(408) 555-1234', '456 Saratoga Avenue, Saratoga, CA 95070', 275, '2023-03-10', '1989-10-20', 'Pescatarian', 'Shellfish', '2024-01-26', TRUE),
(44, 'Jordan', 'Miller', 'jordan.miller@yahoo.com', '(707) 555-6543', '789 Wine Country Road, Sonoma, CA 95476', 500, '2022-07-08', '1980-04-15', 'Vegetarian', 'Tree Nuts', '2024-02-07', TRUE);


-----------------------------------------------------------
-- SAMPLE DATA INSERTS AND VIEWS FOR ADDITIONAL REPORTS
-----------------------------------------------------------

-- 1. Sample Data for Staff
INSERT INTO Staff (employee_id, first_name, last_name, position, hourly_rate, hire_date, email, phone, emergency_contact, address, social_security, tax_withholding)
VALUES
(1, 'Marco', 'Rossi', 'Executive Chef', 42.50, '2022-03-15', 'marco.rossi@cucinaristorante.com', '(415) 555-1234', 'Sofia Rossi (Wife) - (415) 888-9999', '1245 Lombard Street, San Francisco, CA 94109', '123-45-6789', 0.24),
(2, 'Elena', 'Conti', 'Sous Chef', 35.75, '2022-05-22', 'elena.conti@cucinaristorante.com', '(650) 555-4567', 'Antonio Conti (Brother) - (650) 777-2222', '892 California Avenue, Palo Alto, CA 94301', '234-56-7890', 0.22),
(3, 'Giovanni', 'Bianchi', 'Head Waiter', 28.00, '2021-11-01', 'giovanni.bianchi@cucinaristorante.com', '(510) 555-7890', 'Maria Bianchi (Mother) - (510) 666-3333', '456 Oak Street, Berkeley, CA 94702', '345-67-8901', 0.20),
(4, 'Sophia', 'Romano', 'Pastry Chef', 32.50, '2023-01-10', 'sophia.romano@cucinaristorante.com', '(707) 555-2345', 'Luigi Romano (Father) - (707) 999-4444', '789 Vine Road, Napa, CA 94558', '456-78-9012', 0.21),
(5, 'Antonio', 'Moretti', 'Line Cook', 24.50, '2022-07-18', 'antonio.moretti@cucinaristorante.com', '(408) 555-6789', 'Laura Moretti (Wife) - (408) 555-5555', '234 Santa Clara Street, San Jose, CA 95113', '567-89-0123', 0.18),
(6, 'Isabella', 'Ferrari', 'Sommelier', 30.00, '2022-09-05', 'isabella.ferrari@cucinaristorante.com', '(925) 555-3456', 'Paolo Ferrari (Brother) - (925) 777-6666', '567 Olive Lane, Walnut Creek, CA 94597', '678-90-1234', 0.20),
(7, 'Lorenzo', 'Esposito', 'Bartender', 26.50, '2022-04-12', 'lorenzo.esposito@cucinaristorante.com', '(619) 555-8901', 'Francesca Esposito (Sister) - (619) 888-7777', '123 Harbor Drive, San Diego, CA 92101', '789-01-2345', 0.19),
(8, 'Valentina', 'Ricci', 'Server', 22.75, '2023-02-20', 'valentina.ricci@cucinaristorante.com', '(213) 555-4567', 'Roberto Ricci (Father) - (213) 666-9999', '456 Sunset Boulevard, Los Angeles, CA 90028', '890-12-3456', 0.17),
(9, 'Francesco', 'Colombo', 'Prep Cook', 22.00, '2022-06-30', 'francesco.colombo@cucinaristorante.com', '(805) 555-5678', 'Teresa Colombo (Mother) - (805) 555-4444', '789 Vineyard Road, Santa Barbara, CA 93101', '901-23-4567', 0.16),
(10, 'Alessandra', 'Marino', 'Host', 21.50, '2022-10-15', 'alessandra.marino@cucinaristorante.com', '(562) 555-6789', 'Marco Marino (Brother) - (562) 999-3333', '234 Palm Avenue, Long Beach, CA 90802', '012-34-5678', 0.16),
(11, 'Roberto', 'Greco', 'Kitchen Manager', 38.25, '2021-12-08', 'roberto.greco@cucinaristorante.com', '(760) 555-2345', 'Lucia Greco (Wife) - (760) 888-2222', '567 Desert Road, Palm Springs, CA 92262', '123-45-6789', 0.23),
(12, 'Lucia', 'Rinaldi', 'Server', 22.75, '2023-03-01', 'lucia.rinaldi@cucinaristorante.com', '(916) 555-7890', 'Andrea Rinaldi (Father) - (916) 777-5555', '890 Capitol Street, Sacramento, CA 95814', '234-56-7890', 0.17),
(13, 'Matteo', 'Santini', 'Dishwasher', 19.50, '2022-08-22', 'matteo.santini@cucinaristorante.com', '(949) 555-3456', 'Elena Santini (Sister) - (949) 666-7777', '345 Newport Boulevard, Newport Beach, CA 92663', '345-67-8901', 0.15),
(14, 'Chiara', 'Lazzari', 'Server Assistant', 20.75, '2023-04-05', 'chiara.lazzari@cucinaristorante.com', '(858) 555-8901', 'Giuseppe Lazzari (Uncle) - (858) 555-6666', '678 La Jolla Drive, San Diego, CA 92037', '456-78-9012', 0.16),
(15, 'Nicola', 'Palermo', 'Line Cook', 24.50, '2022-05-17', 'nicola.palermo@cucinaristorante.com', '(530) 555-4567', 'Rita Palermo (Mother) - (530) 888-8888', '901 Mountain View Road, Tahoe City, CA 96145', '567-89-0123', 0.18),
(16, 'Daniela', 'Bruno', 'Bar Manager', 32.00, '2021-10-20', 'daniela.bruno@cucinaristorante.com', '(415) 555-5678', 'Marco Bruno (Husband) - (415) 999-1111', '234 Marina Boulevard, San Francisco, CA 94123', '678-90-1234', 0.21),
(17, 'Andrea', 'Monti', 'Expediter', 25.50, '2022-11-12', 'andrea.monti@cucinaristorante.com', '(925) 555-6789', 'Sophia Monti (Wife) - (925) 777-4444', '567 Orchard Street, Pleasanton, CA 94566', '789-01-2345', 0.19),
(18, 'Serena', 'Pagano', 'Wine Steward', 28.50, '2023-01-25', 'serena.pagano@cucinaristorante.com', '(650) 555-7890', 'Carlo Pagano (Father) - (650) 666-6666', '123 Stanford Avenue, Menlo Park, CA 94025', '890-12-3456', 0.20),
(19, 'Vincenzo', 'De Luca', 'Sous Chef', 35.75, '2022-02-14', 'vincenzo.deluca@cucinaristorante.com', '(510) 555-2345', 'Anna De Luca (Mother) - (510) 888-3333', '456 Piedmont Road, Oakland, CA 94611', '901-23-4567', 0.22),
(20, 'Rita', 'Morelli', 'Hostess', 21.50, '2022-12-05', 'rita.morelli@cucinaristorante.com', '(408) 555-3456', 'Giovanni Morelli (Brother) - (408) 999-2222', '789 Almaden Boulevard, San Jose, CA 95113', '012-34-5678', 0.16),
(21, 'Giuseppe', 'Russo', 'Head Dishwasher', 20.25, '2022-01-30', 'giuseppe.russo@cucinaristorante.com', '(619) 555-4567', 'Maria Russo (Wife) - (619) 777-5555', '234 Harbor Street, San Diego, CA 92101', '123-45-6789', 0.16),
(22, 'Francesca', 'Colombo', 'Server', 22.75, '2023-05-10', 'francesca.colombo@cucinaristorante.com', '(707) 555-5678', 'Paolo Colombo (Father) - (707) 666-7777', '567 Wine Country Road, Healdsburg, CA 95448', '234-56-7890', 0.17),
(23, 'Alessandro', 'Romano', 'Prep Cook', 22.00, '2022-09-15', 'alessandro.romano@cucinaristorante.com', '(805) 555-6789', 'Isabella Romano (Sister) - (805) 888-9999', '890 Mission Street, Santa Maria, CA 93454', '345-67-8901', 0.16),
(24, 'Maria', 'Ferrari', 'Pantry Chef', 30.50, '2021-08-07', 'maria.ferrari@cucinaristorante.com', '(530) 555-7890', 'Luca Ferrari (Husband) - (530) 999-4444', '123 Lakeside Drive, South Lake Tahoe, CA 96150', '456-78-9012', 0.20),
(25, 'Luca', 'Bernardi', 'Kitchen Porter', 19.75, '2023-02-14', 'luca.bernardi@cucinaristorante.com', '(562) 555-8901', 'Sofia Bernardi (Mother) - (562) 777-6666', '456 Seaside Boulevard, Long Beach, CA 90802', '567-89-0123', 0.15),
(26, 'Silvia', 'Gentile', 'Catering Coordinator', 27.50, '2022-06-20', 'silvia.gentile@cucinaristorante.com', '(949) 555-2345', 'Matteo Gentile (Brother) - (949) 888-7777', '789 Coast Highway, Laguna Beach, CA 92651', '678-90-1234', 0.19),
(27, 'Riccardo', 'Gallo', 'Night Shift Cook', 25.00, '2022-04-01', 'riccardo.gallo@cucinaristorante.com', '(916) 555-3456', 'Clara Gallo (Wife) - (916) 666-8888', '234 River Road, Sacramento, CA 95814', '789-01-2345', 0.18),
(28, 'Beatrice', 'Marchetti', 'Bookkeeper', 33.00, '2021-09-12', 'beatrice.marchetti@cucinaristorante.com', '(408) 555-4567', 'Giorgio Marchetti (Husband) - (408) 999-5555', '567 Technology Drive, Santa Clara, CA 95054', '890-12-3456', 0.21),
(29, 'Paolo', 'Ferrero', 'Sous Chef', 35.75, '2022-07-05', 'paolo.ferrero@cucinaristorante.com', '(925) 555-5678', 'Giulia Ferrero (Sister) - (925) 888-2222', '890 Vineyard Road, Pleasanton, CA 94566', '901-23-4567', 0.22),
(30, 'Emma', 'Santoro', 'Server', 22.75, '2023-03-20', 'emma.santoro@cucinaristorante.com', '(213) 555-6789', 'Antonio Santoro (Father) - (213) 777-3333', '123 Hollywood Boulevard, Los Angeles, CA 90028', '012-34-5678', 0.17),
(31, 'Marco', 'Vitale', 'Bar Back', 21.25, '2022-10-01', 'marco.vitale@cucinaristorante.com', '(858) 555-7890', 'Lucia Vitale (Mother) - (858) 666-9999', '456 La Jolla Boulevard, San Diego, CA 92037', '123-45-6789', 0.16),
(32, 'Valentina', 'Barbieri', 'Server', 22.75, '2023-01-15', 'valentina.barbieri@cucinaristorante.com', '(650) 555-8901', 'Roberto Barbieri (Brother) - (650) 888-4444', '789 University Avenue, Palo Alto, CA 94301', '234-56-7890', 0.17),
(33, 'Leonardo', 'Cattaneo', 'Butcher', 29.50, '2022-02-28', 'leonardo.cattaneo@cucinaristorante.com', '(707) 555-2345', 'Elena Cattaneo (Wife) - (707) 999-5555', '234 Grape Lane, Napa, CA 94558', '345-67-8901', 0.20),
(34, 'Sofia', 'Pellegrini', 'Pastry Assistant', 21.75, '2023-04-15', 'sofia.pellegrini@cucinaristorante.com', '(510) 555-3456', 'Enzo Pellegrini (Father) - (510) 777-7777', '567 Piedmont Street, Berkeley, CA 94702', '456-78-9012', 0.17),
(35, 'Enzo', 'Caruso', 'Line Cook', 24.50, '2022-05-10', 'enzo.caruso@cucinaristorante.com', '(562) 555-4567', 'Rosa Caruso (Mother) - (562) 888-6666', '890 Atlantic Avenue, Long Beach, CA 90813', '567-89-0123', 0.18),
(36, 'Laura', 'Lombardi', 'Host Manager', 26.00, '2021-11-15', 'laura.lombardi@cucinaristorante.com', '(415) 555-5678', 'Andrea Lombardi (Husband) - (415) 999-2222', '123 Russian Hill Place, San Francisco, CA 94109', '678-90-1234', 0.19);




-- 2. Sample Data for Orders and Payments (to simulate staff productivity)
-- Order 1 for Staff 1
INSERT INTO Orders (order_id, table_id, customer_id, server_id, order_date, order_time, status, special_instructions, total_amount, discount_amount, tax_amount, final_amount)
VALUES
(1, 5, 1, 3, '2025-03-15', '18:45:00', 'Completed', 'Extra olive oil on side', 87.50, 0, 7.88, 95.38),
(2, 2, 2, 7, '2025-03-15', '19:15:00', 'Completed', 'Gluten-free pasta', 65.25, 0, 5.87, 71.12),
(3, 9, 3, 11, '2025-03-15', '20:30:00', 'Completed', 'High chair needed', 124.75, 10.00, 11.28, 126.03),
(4, 7, 4, 15, '2025-03-16', '18:00:00', 'Completed', 'Vegan options', 92.35, 0, 8.31, 100.66),
(5, 12, 5, 6, '2025-03-16', '19:45:00', 'Completed', 'Allergy alert - no nuts', 76.90, 0, 6.92, 83.82),
(6, 3, 6, 9, '2025-03-16', '20:15:00', 'Completed', 'Anniversary dessert', 108.50, 15.00, 9.77, 103.27),
(7, 8, 7, 12, '2025-03-17', '18:30:00', 'Completed', 'Wheelchair accessible seating', 63.75, 0, 5.74, 69.49),
(8, 15, 8, 2, '2025-03-17', '19:00:00', 'Completed', 'Large group, split checks', 245.60, 25.00, 22.10, 242.70),
(9, 6, 9, 14, '2025-03-17', '20:45:00', 'Completed', 'Birthday celebration', 98.25, 0, 8.84, 107.09),
(10, 1, 10, 5, '2025-03-18', '18:15:00', 'Completed', 'Romantic dinner', 112.50, 0, 10.13, 122.63),
(11, 10, 11, 8, '2025-03-18', '19:30:00', 'Completed', 'No onions', 79.90, 0, 7.19, 87.09),
(12, 4, 12, 16, '2025-03-18', '20:00:00', 'Completed', 'Extra bread', 67.35, 0, 6.06, 73.41),
(13, 14, 13, 1, '2025-03-19', '18:45:00', 'Completed', 'Corporate dinner', 203.75, 20.00, 18.34, 202.09),
(14, 5, 14, 10, '2025-03-19', '19:15:00', 'Completed', 'First date', 89.60, 0, 8.06, 97.66),
(15, 11, 15, 13, '2025-03-19', '20:30:00', 'Completed', 'Family reunion', 156.25, 15.00, 14.06, 155.31),
(16, 16, 16, 4, '2025-03-20', '18:00:00', 'Completed', 'Business meeting', 185.40, 25.00, 16.69, 177.09),
(17, 7, 17, 15, '2025-03-20', '19:45:00', 'Completed', 'Engagement celebration', 98.75, 0, 8.89, 107.64),
(18, 3, 18, 7, '2025-03-20', '20:15:00', 'Completed', 'Quiet table', 72.50, 0, 6.53, 79.03),
(19, 9, 19, 11, '2025-03-21', '18:30:00', 'Completed', 'Vegetarian options', 84.90, 0, 7.64, 92.54),
(20, 8, 20, 12, '2025-03-21', '19:00:00', 'Completed', 'Business dinner', 132.75, 10.00, 11.95, 134.70),
(21, 6, 21, 14, '2025-03-21', '20:45:00', 'Completed', 'Retirement party', 167.35, 20.00, 15.06, 162.41),
(22, 1, 22, 5, '2025-03-22', '18:15:00', 'Completed', 'Romantic evening', 95.60, 0, 8.60, 104.20),
(23, 12, 23, 6, '2025-03-22', '19:30:00', 'Completed', 'Surprise party', 215.50, 25.00, 19.40, 209.90),
(24, 4, 24, 16, '2025-03-22', '20:00:00', 'Completed', 'Graduation dinner', 103.25, 0, 9.29, 112.54),
(25, 15, 25, 2, '2025-03-23', '18:45:00', 'Completed', 'Large family gathering', 187.90, 20.00, 16.91, 184.81),
(26, 10, 26, 8, '2025-03-23', '19:15:00', 'Completed', 'Bachelor party', 142.35, 15.00, 12.81, 140.16),
(27, 5, 27, 10, '2025-03-23', '20:30:00', 'Completed', 'Belated birthday', 76.50, 0, 6.89, 83.39),
(28, 14, 28, 1, '2025-03-24', '18:00:00', 'Completed', 'Team dinner', 229.75, 25.00, 20.68, 225.43),
(29, 7, 29, 15, '2025-03-24', '19:45:00', 'Completed', 'Date night', 87.25, 0, 7.85, 95.10),
(30, 2, 30, 7, '2025-03-24', '20:15:00', 'Completed', 'Farewell dinner', 98.60, 0, 8.87, 107.47);


INSERT INTO Payments (payment_id, order_id, payment_date, payment_time, amount, tip_amount, payment_method, card_last_four, is_split, transaction_id, receipt_number)
VALUES
(1, 1, '2025-03-15', '19:15:00', 95.38, 15.50, 'Credit', '4532', FALSE, 'TXN-A12345', 'RCP-001'),
(2, 2, '2025-03-15', '19:45:00', 71.12, 12.00, 'Debit', '5421', FALSE, 'TXN-B23456', 'RCP-002'),
(3, 3, '2025-03-15', '21:00:00', 126.03, 20.25, 'Credit', '3210', TRUE, 'TXN-C34567', 'RCP-003'),
(4, 4, '2025-03-16', '18:30:00', 100.66, 16.75, 'Credit', '6543', FALSE, 'TXN-D45678', 'RCP-004'),
(5, 5, '2025-03-16', '20:15:00', 83.82, 14.50, 'Debit', '7654', FALSE, 'TXN-E56789', 'RCP-005'),
(6, 6, '2025-03-16', '20:45:00', 103.27, 17.25, 'Credit', '8765', FALSE, 'TXN-F67890', 'RCP-006'),
(7, 7, '2025-03-17', '19:00:00', 69.49, 11.75, 'Debit', '9876', FALSE, 'TXN-G78901', 'RCP-007'),
(8, 8, '2025-03-17', '19:30:00', 242.70, 35.50, 'Credit', '2109', TRUE, 'TXN-H89012', 'RCP-008'),
(9, 9, '2025-03-17', '21:15:00', 107.09, 18.00, 'Credit', '3456', FALSE, 'TX-I90123', 'RCP-009'),
(10, 10, '2025-03-18', '18:45:00', 122.63, 20.75, 'Debit', '4567', FALSE, 'TXN-J01234', 'RCP-010'),
(11, 11, '2025-03-18', '20:00:00', 87.09, 14.25, 'Credit', '5678', FALSE, 'TXN-K12345', 'RCP-011'),
(12, 12, '2025-03-18', '20:30:00', 73.41, 12.50, 'Debit', '6789', FALSE, 'TXN-L23456', 'RCP-012'),
(13, 13, '2025-03-19', '19:15:00', 202.09, 30.50, 'Credit', '7890', TRUE, 'TXN-M34567', 'RCP-013'),
(14, 14, '2025-03-19', '19:45:00', 97.66, 16.25, 'Credit', '8901', FALSE, 'TXN-N45678', 'RCP-014'),
(15, 15, '2025-03-19', '21:00:00', 155.31, 22.75, 'Debit', '9012', TRUE, 'TXN-O56789', 'RCP-015'),
(16, 16, '2025-03-20', '18:30:00', 177.09, 26.50, 'Credit', '0123', TRUE, 'TXN-P67890', 'RCP-016'),
(17, 17, '2025-03-20', '20:15:00', 107.64, 18.25, 'Debit', '1234', FALSE, 'TXN-Q78901', 'RCP-017'),
(18, 18, '2025-03-20', '20:45:00', 79.03, 13.00, 'Credit', '2345', FALSE, 'TXN-R89012', 'RCP-018'),
(19, 19, '2025-03-21', '19:00:00', 92.54, 15.75, 'Credit', '3456', FALSE, 'TXN-S90123', 'RCP-019'),
(20, 20, '2025-03-21', '19:30:00', 134.70, 20.25, 'Debit', '4567', TRUE, 'TXN-T01234', 'RCP-020'),
(21, 21, '2025-03-21', '21:15:00', 162.41, 24.50, 'Credit', '5678', FALSE, 'TXN-U12345', 'RCP-021'),
(22, 22, '2025-03-22', '18:45:00', 104.20, 17.50, 'Debit', '6789', FALSE, 'TXN-V23456', 'RCP-022'),
(23, 23, '2025-03-22', '20:00:00', 209.90, 31.50, 'Credit', '7890', TRUE, 'TXN-W34567', 'RCP-023'),
(24, 24, '2025-03-22', '20:30:00', 112.54, 19.00, 'Credit', '8901', FALSE, 'TXN-X45678', 'RCP-024'),
(25, 25, '2025-03-23', '19:15:00', 184.81, 27.75, 'Debit', '9012', TRUE, 'TXN-Y56789', 'RCP-025'),
(26, 26, '2025-03-23', '19:45:00', 140.16, 21.25, 'Credit', '0123', FALSE, 'TXN-Z67890', 'RCP-026'),
(27, 27, '2025-03-23', '21:00:00', 83.39, 14.00, 'Debit', '1234', FALSE, 'TXN-AA78901', 'RCP-027'),
(28, 28, '2025-03-24', '18:30:00', 225.43, 33.75, 'Credit', '2345', TRUE, 'TXN-BB89012', 'RCP-028'),
(29, 29, '2025-03-24', '20:15:00', 95.10, 16.00, 'Credit', '3456', FALSE, 'TXN-CC90123', 'RCP-029'),
(30, 30, '2025-03-24', '20:45:00', 107.47, 18.25, 'Debit', '4567', FALSE, 'TXN-DD01234', 'RCP-030');


-- 3. Sample Data for Reservations on a Specific Future Date (March 15, 2025)
INSERT INTO Reservations (reservation_id, customer_id, reservation_date, reservation_time, party_size, table_id, special_requests, status, reserved_by, contact_phone)
VALUES
  (101, 1, '2025-03-15', '18:30:00', 4, 5, 'Window seat preferred', 'Confirmed', 'Online', '555-123-4567'),
  (102, 2, '2025-03-15', '19:00:00', 2, 2, 'Quiet corner', 'Confirmed', 'Phone', '555-234-5678'),
  (103, 3, '2025-03-15', '20:00:00', 6, 9, 'High chair required', 'Confirmed', 'Online', '555-345-6789'),
  (104, 4, '2025-03-16', '17:45:00', 3, 7, 'Vegan options needed', 'Confirmed', 'Email', '415-555-1234'),
  (105, 5, '2025-03-16', '18:15:00', 5, 12, 'Gluten-free meal', 'Confirmed', 'Phone', '650-555-2345'),
  (106, 6, '2025-03-16', '19:30:00', 2, 3, 'Anniversary celebration', 'Confirmed', 'Online', '510-555-3456'),
  (107, 7, '2025-03-16', '20:45:00', 4, 8, 'Wheelchair accessible', 'Confirmed', 'Phone', '408-555-4567'),
  (108, 8, '2025-03-17', '17:30:00', 6, 15, 'Large group, multiple tables', 'Confirmed', 'Email', '925-555-5678'),
  (109, 9, '2025-03-17', '18:00:00', 3, 6, 'Birthday celebration', 'Confirmed', 'Online', '619-555-6789'),
  (110, 10, '2025-03-17', '19:15:00', 2, 1, 'Romantic dinner', 'Confirmed', 'Phone', '707-555-7890'),
  (111, 11, '2025-03-17', '20:30:00', 4, 10, 'Allergic to shellfish', 'Confirmed', 'Email', '805-555-8901'),
  (112, 12, '2025-03-18', '17:45:00', 5, 14, 'Corporate dinner', 'Confirmed', 'Online', '916-555-9012'),
  (113, 13, '2025-03-18', '18:30:00', 3, 4, 'Near fireplace', 'Confirmed', 'Phone', '562-555-0123'),
  (114, 14, '2025-03-18', '19:45:00', 2, 2, 'First date', 'Confirmed', 'Email', '858-555-1234'),
  (115, 15, '2025-03-18', '20:15:00', 4, 11, 'Family reunion', 'Confirmed', 'Online', '530-555-2345'),
  (116, 16, '2025-03-19', '17:30:00', 6, 16, 'Large group', 'Confirmed', 'Phone', '415-555-3456'),
  (117, 17, '2025-03-19', '18:45:00', 3, 5, 'Vegetarian options', 'Confirmed', 'Email', '650-555-4567'),
  (118, 18, '2025-03-19', '19:30:00', 2, 3, 'Quiet table', 'Confirmed', 'Online', '510-555-5678'),
  (119, 19, '2025-03-19', '20:45:00', 4, 9, 'Graduation dinner', 'Confirmed', 'Phone', '408-555-6789'),
  (120, 20, '2025-03-20', '17:15:00', 5, 13, 'Business meeting', 'Confirmed', 'Email', '925-555-7890'),
  (121, 21, '2025-03-20', '18:30:00', 3, 7, 'Engagement celebration', 'Confirmed', 'Online', '619-555-8901'),
  (122, 22, '2025-03-20', '19:45:00', 2, 1, 'Romantic evening', 'Confirmed', 'Phone', '707-555-9012'),
  (123, 23, '2025-03-20', '20:15:00', 4, 8, 'Surprise party', 'Confirmed', 'Email', '805-555-0123'),
  (124, 24, '2025-03-21', '17:45:00', 6, 15, 'Large family gathering', 'Confirmed', 'Online', '916-555-1234'),
  (125, 25, '2025-03-21', '18:00:00', 3, 6, 'Retirement party', 'Confirmed', 'Phone', '562-555-2345'),
  (126, 26, '2025-03-21', '19:30:00', 2, 4, 'Intimate dinner', 'Confirmed', 'Email', '858-555-3456'),
  (127, 27, '2025-03-21', '20:45:00', 4, 12, 'Bachelor party', 'Confirmed', 'Online', '530-555-4567'),
  (128, 28, '2025-03-22', '17:30:00', 5, 14, 'Team dinner', 'Confirmed', 'Phone', '415-555-5678'),
  (129, 29, '2025-03-22', '18:45:00', 3, 5, 'Belated birthday', 'Confirmed', 'Email', '650-555-6789'),
  (130, 30, '2025-03-22', '19:15:00', 2, 2, 'Date night', 'Confirmed', 'Online', '510-555-7890'),
  (131, 31, '2025-03-22', '20:30:00', 4, 10, 'Farewell dinner', 'Confirmed', 'Phone', '408-555-8901'),
  (132, 32, '2025-03-23', '17:15:00', 6, 16, 'Large reunion', 'Confirmed', 'Email', '925-555-9012');

-- 4. Sample Data for a range of shifts for our Shifts table.
insert into Shifts (shift_id, employee_id, shift_date, start_time, end_time, role, section_assigned, status) 
values
(1, 3, '2025-03-01', '10:00:00', '18:00:00', 'Head Waiter', 'Main', 'Scheduled'),
(2, 8, '2025-03-01', '12:00:00', '20:00:00', 'Server', 'Window', 'Scheduled'),
(3, 12, '2025-03-02', '16:00:00', '00:00:00', 'Server', 'Bar', 'Completed'),
(4, 5, '2025-03-02', '08:00:00', '16:00:00', 'Line Cook', 'Kitchen', 'Absent'),
(5, 10, '2025-03-03', '17:00:00', '23:00:00', 'Host', 'Entrance', 'Scheduled'),
(6, 2, '2025-03-03', '10:00:00', '18:00:00', 'Sous Chef', 'Kitchen', 'Completed'),
(7, 7, '2025-03-04', '18:00:00', '02:00:00', 'Bartender', 'Bar', 'Late'),
(8, 1, '2025-03-04', '09:00:00', '17:00:00', 'Executive Chef', 'Kitchen', 'Scheduled'),
(9, 6, '2025-03-05', '14:00:00', '22:00:00', 'Sommelier', 'Wine Section', 'Completed'),
(10, 9, '2025-03-05', '11:00:00', '19:00:00', 'Prep Cook', 'Kitchen', 'Scheduled'),
(11, 4, '2025-03-06', '15:00:00', '23:00:00', 'Pastry Chef', 'Dessert Station', 'Completed'),
(12, 11, '2025-03-06', '07:00:00', '15:00:00', 'Kitchen Manager', 'Kitchen', 'Scheduled'),
(13, 13, '2025-03-07', '08:00:00', '16:00:00', 'Dishwasher', 'Back Kitchen', 'Absent'),
(14, 15, '2025-03-07', '10:00:00', '18:00:00', 'Line Cook', 'Grill Station', 'Scheduled'),
(15, 16, '2025-03-08', '17:00:00', '01:00:00', 'Bar Manager', 'Bar', 'Completed'),
(16, 18, '2025-03-08', '13:00:00', '21:00:00', 'Wine Steward', 'Wine Section', 'Scheduled'),
(17, 19, '2025-03-09', '09:00:00', '17:00:00', 'Sous Chef', 'Kitchen', 'Late'),
(18, 22, '2025-03-09', '16:00:00', '00:00:00', 'Server', 'Lounge', 'Completed'),
(19, 25, '2025-03-10', '08:00:00', '16:00:00', 'Kitchen Porter', 'Back Kitchen', 'Scheduled'),
(20, 20, '2025-03-10', '15:00:00', '23:00:00', 'Hostess', 'Entrance', 'Scheduled'),
(21, 21, '2025-03-11', '18:00:00', '02:00:00', 'Head Dishwasher', 'Back Kitchen', 'Completed'),
(22, 23, '2025-03-11', '12:00:00', '20:00:00', 'Prep Cook', 'Kitchen', 'Scheduled'),
(23, 24, '2025-03-12', '14:00:00', '22:00:00', 'Pantry Chef', 'Cold Prep', 'Absent'),
(24, 27, '2025-03-12', '19:00:00', '03:00:00', 'Night Shift Cook', 'Kitchen', 'Scheduled'),
(25, 28, '2025-03-13', '08:00:00', '16:00:00', 'Bookkeeper', 'Office', 'Completed'),
(26, 30, '2025-03-13', '11:00:00', '19:00:00', 'Server', 'Patio', 'Scheduled'),
(27, 31, '2025-03-14', '17:00:00', '01:00:00', 'Bar Back', 'Bar', 'Scheduled'),
(28, 32, '2025-03-14', '14:00:00', '22:00:00', 'Server', 'Lounge', 'Completed'),
(29, 33, '2025-03-15', '07:00:00', '15:00:00', 'Butcher', 'Meat Station', 'Scheduled'),
(30, 35, '2025-03-15', '15:00:00', '23:00:00', 'Line Cook', 'Kitchen', 'Scheduled'),
(31, 36, '2025-03-16', '09:00:00', '17:00:00', 'Host Manager', 'Entrance', 'Scheduled'),
(32, 34, '2025-03-16', '12:00:00', '20:00:00', 'Pastry Assistant', 'Dessert Station', 'Completed'),
(33, 29, '2025-03-17', '08:00:00', '16:00:00', 'Sous Chef', 'Kitchen', 'Absent'),
(34, 26, '2025-03-17', '14:00:00', '22:00:00', 'Catering Coordinator', 'Kitchen', 'Scheduled'),
(35, 17, '2025-03-18', '15:00:00', '23:00:00', 'Expediter', 'Kitchen', 'Late'),
(36, 9, '2025-03-18', '10:00:00', '18:00:00', 'Prep Cook', 'Kitchen', 'Scheduled'),
(37, 12, '2025-03-19', '16:00:00', '00:00:00', 'Server', 'Window', 'Scheduled'),
(38, 8, '2025-03-19', '12:00:00', '20:00:00', 'Server', 'Main', 'Completed'),
(39, 5, '2025-03-20', '11:00:00', '19:00:00', 'Line Cook', 'Grill Station', 'Scheduled'),
(40, 14, '2025-03-20', '18:00:00', '02:00:00', 'Server Assistant', 'Patio', 'Absent'),
(41, 21, '2025-03-21', '17:00:00', '01:00:00', 'Head Dishwasher', 'Back Kitchen', 'Scheduled'),
(42, 30, '2025-03-21', '09:00:00', '17:00:00', 'Server', 'Patio', 'Completed'),
(43, 7, '2025-03-22', '14:00:00', '22:00:00', 'Bartender', 'Bar', 'Late'),
(44, 22, '2025-03-22', '11:00:00', '19:00:00', 'Server', 'Lounge', 'Scheduled'),
(45, 18, '2025-03-23', '10:00:00', '18:00:00', 'Wine Steward', 'Wine Section', 'Completed');






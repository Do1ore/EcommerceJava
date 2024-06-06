use keyist;

INSERT INTO product_category (id, name)
VALUES (10, 'Продовольственные товары');

INSERT INTO product_category (name) VALUES
                                        ('Смартфоны'),
                                        ('Ноутбуки');

INSERT INTO color (id, name, hex)
VALUES (10, 'Зеленый', '#00FF00'),
       (11, 'Красный', '#FF0000'),
       (12, 'Желтый', '#FFFF00'),
       (13, 'Оранжевый', '#FFA500');

INSERT INTO product (id, category_id, sku, name, url, long_desc, unlimited)
VALUES (101, 10, 'SKU001', 'Огурец 1кг', 'ogurets', 'Насладитесь хрустящими, сочными огурцами, выращенными с любовью и заботой на сертифицированной органической ферме.
Наши огурцы:
Чистая природа: Выращены без применения химикатов, пестицидов и искусственных удобрений.
Витаминная бомба: Богаты витаминами C, K, калием и другими жизненно важными минералами.
Свежесть с грядки: Собираем огурцы на пике спелости, чтобы сохранить их максимальную свежесть и хрустящую текстуру.
Универсальный продукт: Идеально подходят для салатов, смузи, маринадов, закусок и множества других блюд.
Попробуйте наши свежие огурцы с органической фермы и почувствуйте разницу!
Источник здоровья: Богаты антиоксидантами, которые борются со свободными радикалами и укрепляют иммунитет.
Помощник в похудении: Низкокалорийны и богаты клетчаткой, что способствует снижению веса и улучшению работы ЖКТ.
Гарантия свежего дыхания: Содержат вещества, которые освежают дыхание и дарят ощущение чистоты.
Закажите свежие огурцы с органической фермы уже сегодня!
Не забудьте добавить к своему заказу:
Свежие помидоры: Идеальное дополнение к салатам и нарезкам.
Свежую зелень: Добавьте аромата и вкуса вашим блюдам.
Оливковое масло: Незаменимый ингредиент для заправки салатов и маринования овощей.', 1),
       (102, 10, 'SKU002', 'Помидор 1кг', 'pomidor', 'Сочный красный помидор, богатый витаминами.', 1),
       (103, 10, 'SKU003', 'Банан 1кг', 'banan', 'Спелый банан, идеальный для перекуса.', 1),
       (104, 10, 'SKU004', 'Апельсин 1кг', 'apelsin', 'Сладкий и сочный апельсин, богатый витамином C.', 1);

INSERT INTO product_variant (product_id, color_id, width, height, price, composition, cargo_price, tax_percent, sell_count, stock, live, image, thumb) VALUES
-- Варианты для огурца
(101, 10, '10 см', '3 см', 50.00, 'Огурец, вода', 10.00, 10, 0, 100, 1, 'https://lenta.servicecdn.ru/globalassets/1/-/16/82/10/246179_4.png?preset=fulllossywhite', 'https://lenta.servicecdn.ru/globalassets/1/-/16/82/10/246179_4.png?preset=fulllossywhite'),
(101, 10, '10 см', '3 см', 50.00, 'Огурец', 10.00, 10, 0, 100, 1, 'https://avatars.dzeninfra.ru/get-zen_doc/9856080/pub_64abcce9a0b07216288e2bd8_64abd04b6ece572f1619d6cf/scale_1200', 'https://avatars.dzeninfra.ru/get-zen_doc/9856080/pub_64abcce9a0b07216288e2bd8_64abd04b6ece572f1619d6cf/scale_1200'),
-- Варианты для помидора
(102, 11, '8 см', '7 см', 60.00, 'Помидор, вода', 12.00, 10, 0, 100, 1, 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcThdtogrPsOcQeuKm62SJPEtDkgK6_WNZ02ppcOec5gepVlso_J', 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcThdtogrPsOcQeuKm62SJPEtDkgK6_WNZ02ppcOec5gepVlso_J'),
-- Варианты для банана
(103, 12, '20 см', '4 см', 40.00, 'Банан, вода', 8.00, 10, 0, 100, 1, 'https://cdn.tveda.ru/thumbs/a52/a52a6e9f0e86f9c6ab0e026182a45350/ec53e12f3a2269480f32cf9e46b5ee68.jpg', 'https://cdn.tveda.ru/thumbs/a52/a52a6e9f0e86f9c6ab0e026182a45350/ec53e12f3a2269480f32cf9e46b5ee68.jpg'),
-- Варианты для апельсина
(104, 13, '10 см', '10 см', 70.00, 'Апельсин, вода', 15.00, 10, 0, 100, 1, 'https://foodcity.ru/storage/products/October2018/6XZSr6ddCl6cxfo0UchP.jpg', 'https://foodcity.ru/storage/products/October2018/6XZSr6ddCl6cxfo0UchP.jpg');


-- Заполнение таблицы color
INSERT INTO color (name, hex) VALUES
                                  ('Черный', '#000000'),
                                  ('Белый', '#FFFFFF'),
                                  ('Синий', '#0000FF'),
                                  ('Красный', '#FF0000'),
                                  ('Зеленый', '#008000'),
                                  ('Серебристый', '#C0C0C0');

INSERT INTO product (category_id, sku, name, url, long_desc, unlimited)
VALUES
    (1, 'SM123', 'iPhone 13', 'iphone-13', 'Смартфон Apple iPhone 13', 1),
    (1, 'SM124', 'Samsung Galaxy S21', 'samsung-galaxy-s21', 'Смартфон Samsung Galaxy S21', 1),
    (1, 'SM125', 'Google Pixel 6', 'google-pixel-6', 'Смартфон Google Pixel 6', 1),
    (1, 'SM126', 'OnePlus 9', 'oneplus-9', 'Смартфон OnePlus 9', 1),
    (1, 'SM127', 'Xiaomi Mi 11', 'xiaomi-mi-11', 'Смартфон Xiaomi Mi 11', 1),
    (2, 'NB123', 'MacBook Pro 13', 'macbook-pro-13', 'Ноутбук Apple MacBook Pro 13', 1),
    (2, 'NB124', 'Dell XPS 13', 'dell-xps-13', 'Ноутбук Dell XPS 13', 1),
    (2, 'NB125', 'HP Spectre x360', 'hp-spectre-x360', 'Ноутбук HP Spectre x360', 1),
    (2, 'NB126', 'Lenovo ThinkPad X1', 'lenovo-thinkpad-x1', 'Ноутбук Lenovo ThinkPad X1', 1),
    (2, 'NB127', 'Asus ZenBook 14', 'asus-zenbook-14', 'Ноутбук Asus ZenBook 14', 1);

INSERT INTO product_variant (product_id, color_id, width, height, price, composition, cargo_price, tax_percent, sell_count, stock, live, image, thumb)
VALUES
    (11, 1, '71.5mm', '146.7mm', 799.99, 'Aluminum, Glass', 10.00, 20, 100, 50, 1, 'https://i5.walmartimages.com/seo/Apple-iPhone-13-A2482-128GB-Black-US-Model-Factory-Unlocked-Cell-Phone-Very-Good-Condition_d7888b62-02e3-41ef-8169-c659ee03e8e5.8ff0a39f8b3386047856de61db7d3c7f.jpeg?odnBg=FFFFFF&odnHeight=768&odnWidth=768', 'https://i5.walmartimages.com/seo/Apple-iPhone-13-A2482-128GB-Black-US-Model-Factory-Unlocked-Cell-Phone-Very-Good-Condition_d7888b62-02e3-41ef-8169-c659ee03e8e5.8ff0a39f8b3386047856de61db7d3c7f.jpeg?odnBg=FFFFFF&odnHeight=768&odnWidth=768'),
    (11, 2, '71.5mm', '146.7mm', 799.99, 'Aluminum, Glass', 10.00, 20, 100, 50, 1, 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-13-finish-select-202207-starlight_AV1_GEO_US?.v=WGQwVDZoTWdLODlMWERUbVY5M013ZzNTNXU4cmFuZHdJd3pGZ3kzaE93dHNoZDZwL3dhNDVzOWkzcUl3MW1UVXBEMkNjSmNYL1pjNDlZSXc4aEpWbFRDNlBJczZRQmxyM2ZhZjVKT0RIMFJBRllRWm81a1U0amRLZVZqL29XTzNCM3hxS3ljQlFiN1pDdk9mdjRTemJ3PT0%3D&fmt=p-jpg&hei=2880&qlt=80&traceId=1&wid=5120', 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-13-finish-select-202207-starlight_AV1_GEO_US?.v=WGQwVDZoTWdLODlMWERUbVY5M013ZzNTNXU4cmFuZHdJd3pGZ3kzaE93dHNoZDZwL3dhNDVzOWkzcUl3MW1UVXBEMkNjSmNYL1pjNDlZSXc4aEpWbFRDNlBJczZRQmxyM2ZhZjVKT0RIMFJBRllRWm81a1U0amRLZVZqL29XTzNCM3hxS3ljQlFiN1pDdk9mdjRTemJ3PT0%3D&fmt=p-jpg&hei=2880&qlt=80&traceId=1&wid=5120'),
    (2, 1, '71.2mm', '151.7mm', 699.99, 'Plastic, Glass', 10.00, 20, 150, 75, 1, 'https://blackbullshop.com/wp-content/uploads/2022/02/BS418-BL-4N.jpg', 'https://blackbullshop.com/wp-content/uploads/2022/02/BS418-BL-4N.jpg'),
    (2, 3, '71.2mm', '151.7mm', 699.99, 'Plastic, Glass', 10.00, 20, 150, 75, 1, 'https://m.media-amazon.com/images/I/61-QMCHyUES._AC_UF894,1000_QL80_DpWeblab_.jpg', 'https://m.media-amazon.com/images/I/61-QMCHyUES._AC_UF894,1000_QL80_DpWeblab_.jpg'),
    (3, 2, '74.8mm', '158.6mm', 599.99, 'Plastic, Glass', 10.00, 20, 50, 25, 1, 'https://m.media-amazon.com/images/I/71wXLVaeAgL.jpg', 'https://m.media-amazon.com/images/I/71wXLVaeAgL.jpg'),
    (3, 4, '74.8mm', '158.6mm', 599.99, 'Plastic, Glass', 10.00, 20, 50, 25, 1, 'https://i.ebayimg.com/images/g/glsAAOSwIIdjAb6w/s-l1200.jpg', 'https://i.ebayimg.com/images/g/glsAAOSwIIdjAb6w/s-l1200.jpg'),
    (4, 1, '73.9mm', '160.7mm', 729.99, 'Aluminum, Glass', 10.00, 20, 80, 40, 1, 'https://m.media-amazon.com/images/I/61VuVU94RnL.jpg', 'https://m.media-amazon.com/images/I/61VuVU94RnL.jpg'),
    (4, 5, '73.9mm', '160.7mm', 729.99, 'Aluminum, Glass', 10.00, 20, 80, 40, 1, 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MM283?.v=1629924958000&fmt=jpeg&hei=1144&qlt=90&wid=1144', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MM283?.v=1629924958000&fmt=jpeg&hei=1144&qlt=90&wid=1144'),
    (5, 1, '74.6mm', '164.3mm', 649.99, 'Plastic, Glass', 10.00, 20, 200, 100, 1, 'https://m.media-amazon.com/images/I/61dlAm9BpqL._AC_UF894,1000_QL80_.jpg', 'https://m.media-amazon.com/images/I/61dlAm9BpqL._AC_UF894,1000_QL80_.jpg'),
    (5, 6, '74.6mm', '164.3mm', 649.99, 'Plastic, Glass', 10.00, 20, 200, 100, 1, 'https://i5.walmartimages.com/asr/6abb9976-ff57-4e7b-be17-ccf792612d0c.73ec8a2420fac06bc49dd2424a3dcd7c.jpeg?odnBg=FFFFFF&odnHeight=768&odnWidth=768', 'https://i5.walmartimages.com/asr/6abb9976-ff57-4e7b-be17-ccf792612d0c.73ec8a2420fac06bc49dd2424a3dcd7c.jpeg?odnBg=FFFFFF&odnHeight=768&odnWidth=768'),
    (6, 2, '304.1mm', '212.4mm', 1299.99, 'Aluminum', 20.00, 20, 50, 25, 1, 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MM2X3?.v=1630622653000&fmt=jpeg&hei=1144&qlt=90&wid=1144', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MM2X3?.v=1630622653000&fmt=jpeg&hei=1144&qlt=90&wid=1144'),
    (6, 6, '304.1mm', '212.4mm', 1299.99, 'Aluminum', 20.00, 20, 50, 25, 1, 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MM283?.v=1629924958000&fmt=jpeg&hei=1144&qlt=90&wid=1144', 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MM283?.v=1629924958000&fmt=jpeg&hei=1144&qlt=90&wid=1144'),
    (7, 1, '295.7mm', '198.7mm', 1099.99, 'Aluminum', 20.00, 20, 80, 40, 1, 'https://m.media-amazon.com/images/I/61VuVU94RnL.jpg', 'https://m.media-amazon.com/images/I/61VuVU94RnL.jpg'),
    (7, 3, '295.7mm', '198.7mm', 1099.99, 'Aluminum', 20.00, 20, 80, 40, 1, 'https://m.media-amazon.com/images/I/61-QMCHyUES._AC_UF894,1000_QL80_DpWeblab_.jpg', 'https://m.media-amazon.com/images/I/61-QMCHyUES._AC_UF894,1000_QL80_DpWeblab_.jpg'),
    (8, 1, '308.4mm', '220.5mm', 1199.99, 'Aluminum', 20.00, 20, 70, 35, 1, 'https://m.media-amazon.com/images/I/61dlAm9BpqL._AC_UF894,1000_QL80_.jpg', 'https://m.media-amazon.com/images/I/61dlAm9BpqL._AC_UF894,1000_QL80_.jpg'),
    (8, 6, '308.4mm', '220.5mm', 1199.99, 'Aluminum', 20.00, 20, 70, 35, 1, 'https://i5.walmartimages.com/asr/6abb9976-ff57-4e7b-be17-ccf792612d0c.73ec8a2420fac06bc49dd2424a3dcd7c.jpeg?odnBg=FFFFFF&odnHeight=768&odnWidth=768', 'https://i5.walmartimages.com/asr/6abb9976-ff57-4e7b-be17-ccf792612d0c.73ec8a2420fac06bc49dd2424a3dcd7c.jpeg?odnBg=FFFFFF&odnHeight=768&odnWidth=768'),
    (9, 2, '323.5mm', '217.0mm', 1399.99, 'Carbon Fiber', 20.00, 20, 60, 30, 1, 'https://m.media-amazon.com/images/I/71wXLVaeAgL.jpg', 'https://m.media-amazon.com/images/I/71wXLVaeAgL.jpg'),
    (9, 6, '323.5mm', '217.0mm', 1399.99, 'Carbon Fiber', 20.00, 20, 60, 30, 1, 'https://i.ebayimg.com/images/g/glsAAOSwIIdjAb6w/s-l1200.jpg', 'https://i.ebayimg.com/images/g/glsAAOSwIIdjAb6w/s-l1200.jpg'),
    (10, 1, '319.5mm', '210.0mm', 899.99, 'Aluminum', 20.00, 20, 90, 45, 1, 'https://m.media-amazon.com/images/I/61VuVU94RnL.jpg', 'https://m.media-amazon.com/images/I/61VuVU94RnL.jpg'),
    (10, 2, '319.5mm', '210.0mm', 899.99, 'Aluminum', 20.00, 20, 90, 45, 1, 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-13-finish-select-202207-starlight_AV1_GEO_US?.v=WGQwVDZoTWdLODlMWERUbVY5M013ZzNTNXU4cmFuZHdJd3pGZ3kzaE93dHNoZDZwL3dhNDVzOWkzcUl3MW1UVXBEMkNjSmNYL1pjNDlZSXc4aEpWbFRDNlBJczZRQmxyM2ZhZjVKT0RIMFJBRllRWm81a1U0amRLZVZqL29XTzNCM3hxS3ljQlFiN1pDdk9mdjRTemJ3PT0%3D&fmt=p-jpg&hei=2880&qlt=80&traceId=1&wid=5120', 'https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-13-finish-select-202207-starlight_AV1_GEO_US?.v=WGQwVDZoTWdLODlMWERUbVY5M013ZzNTNXU4cmFuZHdJd3pGZ3kzaE93dHNoZDZwL3dhNDVzOWkzcUl3MW1UVXBEMkNjSmNYL1pjNDlZSXc4aEpWbFRDNlBJczZRQmxyM2ZhZjVKT0RIMFJBRllRWm81a1U0amRLZVZqL29XTzNCM3hxS3ljQlFiN1pDdk9mdjRTemJ3PT0%3D&fmt=p-jpg&hei=2880&qlt=80&traceId=1&wid=5120');
#!/bin/bash

# Создаем базу данных web_site
sudo -u postgres psql -c "CREATE DATABASE web_site;"

# Создаем таблицы и заполняем их данными
sudo -u postgres psql web_site << EOF
CREATE TABLE site_1 (
    ID SERIAL PRIMARY KEY,
    City VARCHAR(50),
    Street VARCHAR(50),
    Number INT
);

CREATE TABLE site_2 (
    ID SERIAL PRIMARY KEY,
    ISP VARCHAR(50),
    City VARCHAR(50),
    Connect VARCHAR(3)
);

INSERT INTO site_1 (ID, City, Street, Number) VALUES
(1, 'Азов', 'Заоблачная', 30),
(2, 'Ростов', 'Доступная', 4),
(3, 'Батайск', 'Тихая', 9),
(4, 'Шахты', 'Чистая', 33);

INSERT INTO site_2 (ID, ISP, City, Connect) VALUES
(1, 'Ростелеком', 'Азов', 'Yes'),
(2, 'Ростелеком', 'Шахты', 'Yes'),
(3, 'Билайн', 'Батайск', 'Yes'),
(4, 'МТС', 'Ростов', 'No'),
(5, 'ТТК', 'Шахты', 'Yes'),
(6, 'Билайн', 'Ростов', 'No');
EOF
USE test;
DROP TABLE IF EXISTS part; 
CREATE TABLE part (
  partid INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(500) NOT NULL COMMENT 'Наименование',
  necessity TINYINT NOT NULL DEFAULT 0 COMMENT 'Необходимость',
  amount INT NOT NULL DEFAULT 0 COMMENT 'Количество',
  PRIMARY KEY (partid),
  UNIQUE INDEX name_UNIQUE (name ASC))
ENGINE = InnoDB;

INSERT INTO part(name,necessity,amount) VALUES('материнская плата', 1, 3);
INSERT INTO part(name,necessity,amount) VALUES('звуковая карта', 0, 2);
INSERT INTO part(name,necessity,amount) VALUES('процессор', 1, 2);
INSERT INTO part(name,necessity,amount) VALUES('подсветка корпуса', 0, 0);
INSERT INTO part(name,necessity,amount) VALUES('HDD диск', 0, 1);
INSERT INTO part(name,necessity,amount) VALUES('корпус', 1, 10);
INSERT INTO part(name,necessity,amount) VALUES('память', 1, 10);
INSERT INTO part(name,necessity,amount) VALUES('SSD диск', 1, 15);
INSERT INTO part(name,necessity,amount) VALUES('видеокарта', 0, 7);
INSERT INTO part(name,necessity,amount) VALUES('USB порты', 1, 20);
INSERT INTO part(name,necessity,amount) VALUES('блок питания', 1, 10);
INSERT INTO part(name,necessity,amount) VALUES('оптический привод', 0, 5);
INSERT INTO part(name,necessity,amount) VALUES('светодиодная лента', 0, 20);
INSERT INTO part(name,necessity,amount) VALUES('платы видеозахвата', 0, 7);
INSERT INTO part(name,necessity,amount) VALUES('контроллеры', 0, 20);
INSERT INTO part(name,necessity,amount) VALUES('моддинг', 0, 7);
INSERT INTO part(name,necessity,amount) VALUES('решетка вентилятора', 0, 4);
INSERT INTO part(name,necessity,amount) VALUES('антипылевой фильтр', 0, 100);
INSERT INTO part(name,necessity,amount) VALUES('набор крепежей', 0, 1000);
INSERT INTO part(name,necessity,amount) VALUES('светильник usb', 0, 20);
INSERT INTO part(name,necessity,amount) VALUES('разветвитель питания', 0, 20);
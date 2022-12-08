use my;
SELECT * FROM data1;

CREATE TABLE TAG (
    TAG_ID int NOT NULL AUTO_INCREMENT,
    TAG_NAME varchar(255) NOT NULL,
    USE_CHECK int NOT NULL,
    IMG_ID int,
	PRIMARY KEY (TAG_ID),
    FOREIGN KEY (IMG_ID) REFERENCES IMAGE_ID(IMAGE_ID)
);

INSERT INTO TAG (TAG_NAME, USE_CHECK, IMG_ID)
VALUES ('Munherdene', 1, 1),
       ('Bodisaihan', 1, 1),
       ('Bob', 1, 1),
       ('Sugar', 0, 1)
	   ,('Sapp', 0, 1);



CREATE TABLE IMAGE_ID (
	IMAGE_ID int NOT NULL auto_increment,
    IMAGE_LINK varchar(255),
    PRIMARY KEY (IMAGE_ID)
);

INSERT INTO IMAGE_ID (IMAGE_LINK)
VALUES ("https://lh3.googleusercontent.com/pw/AL9nZEXVdpTq9heASAVpJ4ebrPw5wHJ31FKT9gIC56v8nhc-DQEgzH7uxJ5ljiJ8gpT8xmqvQypgV6I4DbJ2z_crlkW2bdvjr6YzAPzbdOQt7cZbt70-__KmT5bwCv6CYdCDpcZPETMF-fIAsLAj6CJvsxl2=s24-no?authuser=0");
       
       
SELECT * FROM IMAGE_ID;





SELECT * FROM TAG;

SELECT * FROM data1;

DROP TABLE TAG;


CREATE TABLE Location (
    Id int NOT NULL AUTO_INCREMENT,
    X float NOT NULL,
    Y float NOT NULL,
    T_id int NOT NULL,
	Delivered_At TIME NOT NULL,
    Delivered_On DATE NOT NULL,
	PRIMARY KEY (Id),
	FOREIGN KEY (T_id) REFERENCES TAG(TAG_ID)
);

DROP TABLE Location;




INSERT INTO Location (X, Y, T_id, Delivered_At, Delivered_On)
VALUES (130, 65, 5, "15:00:32", "2022-12-07"),
(130, 50, 4, "15:00:32", "2022-12-07"),
(135, 13.04, 3, "15:00:32", "2022-12-07"),
(135, 93.67, 2, "15:00:32", "2022-12-07"),
(135, 134.0, 1, "15:00:32", "2022-12-07"),
(100, 66.0, 5, "15:00:30", "2022-12-07"),
(134, 50.0, 4, "15:00:30", "2022-12-07"),
(134, 14.36, 3, "15:00:30", "2022-12-07"),
(134, 94.04, 2, "15:00:30", "2022-12-07"),
(134, 133.0, 1, "15:00:30", "2022-12-07"),
(134, 67.0, 5, "15:00:28", "2022-12-07"),
(100, 50.0, 4, "15:00:28", "2022-12-07"),
(133, 15.89, 3, "15:00:28", "2022-12-07"),
(100, 94.4, 2, "15:00:28", "2022-12-07"),
(132, 132.0, 1, "15:00:28", "2022-12-07"),
(132, 68.0, 5, "15:00:26", "2022-12-07"),
(132, 50.0, 4, "15:00:26", "2022-12-07"),
(132, 17.64, 3, "15:00:26", "2022-12-07"),
(132, 94.74, 2, "15:00:26", "2022-12-07"),
(132, 94.74, 2, "15:00:26", "2022-12-07");
       
SELECT * FROM Location INNER JOIN TAG ON Location.T_id = Tag.TAG_ID;




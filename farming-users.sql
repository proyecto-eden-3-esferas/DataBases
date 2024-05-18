-- CREATE USER farming-reader@localhost        IDENTIFIED BY 'skyblue';
CREATE ROLE 'farming-reader';
-- GRANT SHOW DATABASES, SELECT ON farming.* TO farming-reader@localhost;
GRANT SELECT ON farming.* TO 'farming-reader';
CREATE USER francisco@localhost             IDENTIFIED BY 'skyblue';
-- login: mysql farming --user=francisco -pskyblue
GRANT SELECT ON farming.* TO francisco@localhost;
-- GRANT 'farming-reader' TO francisco@localhost;
-- SET   DEFAULT ROLE ALL TO francisco@localhost;

CREATE ROLE 'farming-reader-writer';
GRANT SELECT, INSERT, CREATE, REFERENCES, INDEX ON farming.* TO 'farming-reader-writer';
CREATE USER 'super-francisco'@localhost IDENTIFIED BY 'skyblue';
-- login: mysql farming --user=super-francisco -pskyblue
GRANT SELECT, INSERT, CREATE, REFERENCES, INDEX ON farming.* TO 'super-francisco'@localhost;
-- GRANT 'farming-reader-writer' TO 'super-francisco'@localhost;
-- SET   DEFAULT ROLE ALL        TO 'super-francisco'@localhost;

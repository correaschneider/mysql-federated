CREATE SERVER remote_server
FOREIGN DATA WRAPPER mysql
OPTIONS (
    HOST 'mysql1',
    PORT 3306,
    USER 'user',
    PASSWORD 'password',
    DATABASE 'mydb1'
);

CREATE TABLE test (
    id INT,
    name VARCHAR(255)
) ENGINE=FEDERATED
CONNECTION 'remote_server';

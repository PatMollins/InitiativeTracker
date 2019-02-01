CREATE TABLE IF NOT EXISTS users(
    username    VARCHAR(255)    NOT NULL,
    pwdhash     BINARY(32)      NOT NULL,
    salt        BINARY(64)      NOT NULL,
    email       VARCHAR(255),
    PRIMARY KEY(username)
);

CREATE TABLE IF NOT EXISTS characters(
    user    VARCHAR(255)    NOT NULL,
    name    VARCHAR(255)    NOT NULL,
    player  VARCHAR(255),
    initiative  INT         NOT NULL,
    id      INT             NOT NULL    AUTO_INCREMENT,
    PRIMARY KEY(id),
    FOREIGN KEY(user) REFERENCES users(username)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE IF NOT EXISTS monsters(

);
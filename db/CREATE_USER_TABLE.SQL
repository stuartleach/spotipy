CREATE TABLE spotify_user
(
    country         VARCHAR(200) NOT NULL PRIMARY KEY,
    display_name    VARCHAR(200) NOT NULL,
    email           VARCHAR(200) NOT NULL,
    followers_total INTEGER      NOT NULL,
    href            VARCHAR(200) NOT NULL,
    id              VARCHAR(200) NOT NULL,
    image_url       VARCHAR(65)  NOT NULL,
    product         VARCHAR(200) NOT NULL,
    type            VARCHAR(200) NOT NULL,
    uri             VARCHAR(200) NOT NULL
);
INSERT INTO spotify_user(country, display_name, email, followers_total, href, id, image_url, product, type, uri)
VALUES ('string', 'string', 'string', 0, 'string', 'string',
        'https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228', 'string', 'string', 'string');


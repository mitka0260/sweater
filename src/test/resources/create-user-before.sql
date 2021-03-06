DELETE FROM user_role;
DELETE FROM usr;

INSERT INTO usr(id, active, password, username)
    VALUES (1, true, '$2a$08$0uNsIfQr71RM5hNSwE/5cuZs1W/xkKLCcBYe6Lgl6wmSR7/ndDHFm', 'admin'),
           (2, true, '$2a$08$a6sX8Q3k06rJ.0eshWeMKO/CUoiJombIWhKpqgh0LnpTexifnKdd6', 'u');

INSERT INTO user_role(user_id, roles)
    VALUES (1, 'USER'),
           (1, 'ADMIN'),
           (2, 'USER');
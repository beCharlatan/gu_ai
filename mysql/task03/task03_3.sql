/* пример таблицы комментариев (в данном лучае, например, под постами), которая ссылается на таблицу юзеров и на таблицу постов, считая (наподобие твиттера), что 255 символов нам будет достаточно */
CREATE TABLE comments (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    comment_text VARCHAR(255) NOT NULL,
    post_id INTEGER NOT NULL,
    user_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(post_id) REFERENCES posts(id),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

/* пример таблицы лайков, где первичный ключ задан как объединения user_id и post_id, для того, например, чтобы пользователь не мог ставить лайк под один пост больше одного раза */
CREATE TABLE likes (
    user_id INTEGER NOT NULL,
    post_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(user_id) REFERENCES users(id),
    FOREIGN KEY(post_id) REFERENCES posts(id),
    PRIMARY KEY(user_id, post_id)
);

/* пример таблицы подписчиков (вконтакте можно быть не только другом, но и подписчиком), тут та же история с первичным ключом, что и в примере выше */
CREATE TABLE follows (
    follower_id INTEGER NOT NULL,
    followee_id INTEGER NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    FOREIGN KEY(follower_id) REFERENCES users(id),
    FOREIGN KEY(followee_id) REFERENCES users(id),
    PRIMARY KEY(follower_id, followee_id)
);

/* пример, какой-нибудь конфигурационной таблицы (в данном случае, main menu) с полем относительного пути (для реального браузерного роутера или условного роутера в мобильном приложении, например) */
CREATE TABLE menu_items (
    id INTEGER AUTO_INCREMENT NOT NULL,
    title VARCHAR(100) NOT NULL,
    relative_path VARCHAR(100),
);
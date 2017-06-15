SET NAMES 'utf8';
DROP DATABASE IF EXISTS xiaoccate;
CREATE DATABASE xiaoccate CHARSET=UTF8;
USE xiaoccate;

CREATE TABLE xc_dish(
    did INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64),
    price FLOAT(6,2),
    img_sm VARCHAR(64),
    img_lg VARCHAR(64),
    detail VARCHAR(2048),
    material VARCHAR(2048)
);
INSERT INTO xc_dish(did,img_sm,img_lg,name,price,material,detail) VALUES
(   null,
    'cai01.jpg',
    'cai01_lg.jpg',
    '炖瘦牛肉',
    36,
    '鲜牛肉、葱、姜、蒜、生抽',
    '我总是毫不避讳地称自己为吃货，对于我来说，度假中缺少美食是万万不可以的。忙着赶紧完成手头的工作，算起来有一个星期没有更新了，和孩子一起开启度假模式。'
),
(   null,
    'cai02.jpg',
    'cai02_lg.jpg',
    '美味牛排',
    48.5,
    '鲜牛排、鸡蛋、玉米、绿豆、胡萝卜、油菜',
    '生活总是这样，时不时的有一些小惊喜，才会更加精彩不是嘛~'
),
(   null,
    'cai03.jpg',
    'cai03_lg.jpg',
    '鸡腿薯条',
    32,
    '鸡腿、薯条、番茄酱、花椒、大料',
    ''
),
(   null,
    'cai04.jpg',
    'cai04_lg.jpg',
    '酱香茄子',
    28,
    '茄子、豆瓣酱、香菜、葱、大蒜、油',
    '茄子、豆瓣酱、香菜、葱、大蒜、油'
),
(   null,
    'cai05.jpg',
    'cai05_lg.jpg',
    '美味羊排',
    58,
    '羊排、绵白糖、低筋粉、橄榄油、油',
    '自前一次做了带去单位分享后，吃到的同事都说好吃，连不爱吃羊肉的我都忍不住吃了。'
),
(   null,
    'cai06.jpg',
    'cai06_lg.jpg',
    '牛腩西红柿',
    38,
    '牛腩、番茄、洋葱、蒜泥、肉糜、盐、土豆',
    '阿里健康的返回就快点撒恢复健康的萨芬考虑到是咖啡和工具条人员及呕吐容量规划来开会了放到了几公里的数据库看'
),
(   null,
    'cai07.jpg',
    'cai07_lg.jpg',
    '芝士牛排',
    30,
    '牛排、甜酱、温水、植物油。',
    ''
),
(   null,
    'cai08.jpg',
    'cai08_lg.jpg',
    '泡椒凤爪',
    32,
    '泡椒、鸡爪、盐、植物油、水。',
    ''
),
(   null,
    'cai09.jpg',
    'cai09_lg.jpg',
    '披萨',
    36,
    '面粉、葱、姜、蒜、白糖',
    '我总是毫不避讳地称自己为吃货，对于我来说，度假中缺少美食是万万不可以的。忙着赶紧完成手头的工作，算起来有一个星期没有更新了，和孩子一起开启度假模式。'
),
(   null,
    'cai10.jpg',
    'cai10_lg.jpg',
    '西芹腰果',
    48.5,
    '西芹、腰果、花生、红椒、胡萝卜',
    '生活总是这样，时不时的有一些小惊喜，才会更加精彩不是嘛~'
),
(   null,
    'cai11.jpg',
    'cai11_lg.jpg',
    '虾仁爆菜',
    32,
    '虾仁、香菇、圆白菜、油、胡椒',
    ''
),
(   null,
    'cai12.jpg',
    'cai12_lg.jpg',
    '香辣花蛤',
    28,
    '花蛤、辣椒、胡椒、香菜、大蒜、油',
    ''
),
(   null,
    'cai13.jpg',
    'cai13_lg.jpg',
    '香辣螃蟹',
    58,
    '螃蟹、辣椒、油、花椒、胡椒',
    '自前一次做了带去单位分享后，吃到的同事都说好吃，连不爱吃螃蟹的我都忍不住吃了。'
),
(   null,
    'cai14.jpg',
    'cai14_lg.jpg',
    '肉松螃蟹',
    38,
    '螃蟹、肉松、洋葱、蒜泥、盐',
    '阿里健康的返回就快点撒恢复健康的萨芬考虑到是咖啡和工具条人员及呕吐容量规划来开会了放到了几公里的数据库看'
),
(   null,
    'tian01.jpg',
    'tian01_lg.jpg',
    '蛋糕冰淇淋',
    30,
    '蛋糕、冰淇淋。',
    ''
),
(   null,
    'tian02.jpg',
    'tian02_lg.jpg',
    '水果拼盘',
    32,
    '葡萄、草莓、橙子、苹果、猕猴桃。',
    ''
);

##SELECT * FROM xc_dish;

CREATE TABLE xc_order(
    oid INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    phone VARCHAR(16),
    user_name VARCHAR(16),
    order_time BIGINT,
    addr VARCHAR(256),
    totalprice DOUBLE(8,2)
);
INSERT INTO xc_order VALUES(NULL,1,'13501234567','婷婷',1445154859209,'呼和浩特新城区',88.5);
INSERT INTO xc_order VALUES(NULL,1,'13501234567','婷婷',1445254959209,'呼和浩特新城区',99.6);
INSERT INTO xc_order VALUES(NULL,1,'13501234567','婷婷',1445354959209,'呼和浩特新城区',89.8);

##SELECT * FROM xc_order;

/*创建一个评价表*/
CREATE TABLE xc_eval(
    eid INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(16),
    user_head VARCHAR(50),
    dish_name VARCHAR(20),
    eContent VARCHAR(200),
    eTime BIGINT
);
/*向评价表添加几条记录*/
INSERT INTO xc_eval VALUES
(NULL,'婷婷','user06.jpg','香辣螃蟹','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'凯凯','user05.jpg','西芹腰果','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'强强','user04.jpg','芝士牛排','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'小凯','user03.jpg','酱香茄子','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'小强','user02.jpg','鸡腿薯条','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'婷婷','user06.jpg','肉松螃蟹','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'凯凯','user05.jpg','美味羊排','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'强强','user04.jpg','泡椒凤爪','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'小凯','user03.jpg','牛腩西红柿','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'小强','user02.jpg','炖瘦牛肉','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'婷婷','user06.jpg','香辣花蛤','很好吃！送餐很快，又经济实惠，好评！','1450123456789'),
(NULL,'凯凯','user05.jpg','美味牛排','很好吃！送餐很快，又经济实惠，好评！','1450123456789');

/*创建一个用户信息表*/
CREATE TABLE xc_users(
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(20),
    user_pwd VARCHAR(32),
    phone VARCHAR(16)
);

/*向用户表中添加几条记录*/
INSERT INTO xc_users VALUES
(null,'婷婷','123456','13501234567'),
(null,'凯凯','123456','13601234567'),
(null,'强强','123456','13701234567'),
(null,'小凯','123456','13801234567'),
(null,'小强','123456','13901234567');

/**购物车表**/
CREATE TABLE xc_cart(
    ctid INT PRIMARY KEY AUTO_INCREMENT, /*购物车编号*/
    userid INT,                          /*用户编号：假定有用户id为 1 和 3 的两个用户有数据*/
    did INT,                             /*产品编号*/
    dishCount INT                      /*数量*/
);
INSERT INTO xc_cart VALUES (1,1,1,1),
(2,1,2,4),
(3,1,5,2),
(4,3,2,10),
(5,3,6,1);
##SELECT * FROM xc_order;
/**订单详情表**/
CREATE TABLE xc_orderdetails(
    oid INT ,                            /*订单编号*/
    did INT,                             /*产品id*/
    dishCount INT,                     /*购买数量*/
    price FLOAT(8,2)                     /*产品单价：需要记载，因为产品价格可能波动*/
);
INSERT INTO xc_orderdetails VALUES (1,1,2,5),
(1,2,1,10.5),
(2,3,1,12.5),
(3,1,3,5),
(3,2,4,10),
(4,4,7,5),
(5,5,5,4),
(5,6,2,12.5);

TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `InsertCartItem` BEFORE INSERT ON `cartitem` FOR EACH ROW BEGIN\n    DECLARE sl_co INT;\n    \n    SELECT number\n    INTO sl_co\n    FROM product WHERE id=new.product_id;\n    \n    IF sl_co < new.qty THEN\n		SIGNAL SQLSTATE \'45000\'\n  		SET MESSAGE_TEXT = \'You can not insert record\';\n    ELSE\n        UPDATE product\n         SET number=number-new.qty\n         WHERE id=new.product_id; \n    END IF; \n \nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `UpdateCartItems` BEFORE UPDATE ON `cartitem` FOR EACH ROW BEGIN\n    DECLARE sl_co INT;\n    SELECT number INTO sl_co FROM product WHERE id=new.product_id;\n    IF sl_co < (new.qty-old.qty) THEN SIGNAL SQLSTATE \'45000\'\n    SET MESSAGE_TEXT = \'You can not insert record\';\n    ELSE UPDATE product SET number=number-(new.qty-old.qty) WHERE id=new.product_id;\n    END IF;\nEND' 'CREATE DEFINER=`root`@`localhost` TRIGGER `DeleteCartItem` BEFORE DELETE ON `cartitem` FOR EACH ROW UPDATE product\nSET number = number + old.qty'
sql_modes=1098907648 1098907648 1098907648
definers='root@localhost' 'root@localhost' 'root@localhost'
client_cs_names='utf8mb4' 'utf8mb4' 'utf8mb4'
connection_cl_names='utf8mb4_unicode_ci' 'utf8mb4_unicode_ci' 'utf8mb4_unicode_ci'
db_cl_names='utf8mb4_general_ci' 'utf8mb4_general_ci' 'utf8mb4_general_ci'
created=157855692658 157856088655 157855745035

BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "customers" (
	"customer_id"	INTEGER,
	"customer_name"	TEXT,
	"customer_cell"	TEXT,
	"customer_email"	TEXT,
	"customer_address"	TEXT,
	PRIMARY KEY("customer_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "suppliers" (
	"suppliers_id"	INTEGER,
	"suppliers_name"	TEXT,
	"suppliers_contact_person"	TEXT,
	"suppliers_cell"	TEXT,
	"suppliers_email"	TEXT,
	"suppliers_address"	TEXT,
	PRIMARY KEY("suppliers_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "product_category" (
	"category_id"	INTEGER,
	"category_name"	TEXT,
	PRIMARY KEY("category_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "product_weight" (
	"weight_id"	INTEGER,
	"weight_unit"	TEXT,
	PRIMARY KEY("weight_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "products" (
	"product_id"	INTEGER,
	"product_name"	TEXT,
	"product_code"	TEXT,
	"product_category"	TEXT,
	"product_description"	TEXT,
	"product_buy_price"	TEXT,
	"product_sell_price"	TEXT,
	"product_supplier"	TEXT,
	"product_image"	TEXT,
	"product_stock"	TEXT,
	"product_weight_unit_id"	TEXT,
	"product_weight"	TEXT,
	PRIMARY KEY("product_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "expense" (
	"expense_id"	INTEGER,
	"expense_name"	TEXT,
	"expense_note"	TEXT,
	"expense_amount"	TEXT,
	"expense_date"	TEXT,
	"expense_time"	TEXT,
	PRIMARY KEY("expense_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "payment_method" (
	"payment_method_id"	INTEGER,
	"payment_method_name"	TEXT,
	PRIMARY KEY("payment_method_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "order_type" (
	"order_type_id"	INTEGER,
	"order_type_name"	TEXT,
	PRIMARY KEY("order_type_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "shop" (
	"shop_id"	INTEGER,
	"shop_name"	TEXT,
	"shop_contact"	TEXT,
	"shop_email"	TEXT,
	"shop_address"	TEXT,
	"shop_currency"	TEXT,
	"tax"	TEXT,
	PRIMARY KEY("shop_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "product_cart" (
	"cart_id"	INTEGER,
	"product_id"	TEXT,
	"product_weight"	TEXT,
	"product_weight_unit"	TEXT,
	"product_price"	TEXT,
	"product_qty"	INTEGER,
	"stock"	TEXT,
	PRIMARY KEY("cart_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "order_list" (
	"order_id"	INTEGER,
	"invoice_id"	TEXT,
	"order_date"	TEXT,
	"order_time"	TEXT,
	"order_type"	TEXT,
	"order_payment_method"	TEXT,
	"customer_name"	TEXT,
	"tax"	TEXT,
	"discount"	TEXT,
	"order_status"	TEXT,
	PRIMARY KEY("order_id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "order_details" (
	"order_details_id"	INTEGER,
	"invoice_id"	TEXT,
	"product_name"	TEXT,
	"product_weight"	TEXT,
	"product_qty"	TEXT,
	"product_price"	TEXT,
	"product_image"	TEXT,
	"product_order_date"	TEXT,
	"order_status"	TEXT,
	PRIMARY KEY("order_details_id" AUTOINCREMENT)
);
INSERT INTO "customers" VALUES (1,'Walk in Customer','N/A','N/A','N/A');
INSERT INTO "suppliers" VALUES (1,'Asian Supplier','N/A','N/A','N/A','N/A');
INSERT INTO "product_category" VALUES (1,'Foods');
INSERT INTO "product_category" VALUES (2,'Drinks');
INSERT INTO "product_category" VALUES (3,'Vegetables');
INSERT INTO "product_category" VALUES (10,'Electronics');
INSERT INTO "product_category" VALUES (11,'Hand Sets');
INSERT INTO "product_category" VALUES (12,'Mobile');
INSERT INTO "product_category" VALUES (13,'Furniture');
INSERT INTO "product_category" VALUES (14,'Leather');
INSERT INTO "product_category" VALUES (15,'Dress');
INSERT INTO "product_category" VALUES (16,'Sports');
INSERT INTO "product_category" VALUES (17,'Bag');
INSERT INTO "product_category" VALUES (18,'Book');
INSERT INTO "product_category" VALUES (19,'Grocery');
INSERT INTO "product_category" VALUES (20,'Watch');
INSERT INTO "product_category" VALUES (21,'Toys');
INSERT INTO "product_category" VALUES (22,'Glasses');
INSERT INTO "product_category" VALUES (23,'Others');
INSERT INTO "product_weight" VALUES (1,'kg');
INSERT INTO "product_weight" VALUES (2,'g');
INSERT INTO "product_weight" VALUES (3,'L');
INSERT INTO "product_weight" VALUES (4,'Pics');
INSERT INTO "product_weight" VALUES (5,'dag');
INSERT INTO "product_weight" VALUES (6,'mm');
INSERT INTO "product_weight" VALUES (7,'cm');
INSERT INTO "product_weight" VALUES (8,'dm');
INSERT INTO "product_weight" VALUES (9,'m');
INSERT INTO "product_weight" VALUES (10,'ft');
INSERT INTO "product_weight" VALUES (11,'in');
INSERT INTO "product_weight" VALUES (12,'mm2');
INSERT INTO "product_weight" VALUES (13,'cm2');
INSERT INTO "product_weight" VALUES (14,'dm2');
INSERT INTO "product_weight" VALUES (15,'m2');
INSERT INTO "product_weight" VALUES (16,'in2');
INSERT INTO "product_weight" VALUES (17,'cm3');
INSERT INTO "product_weight" VALUES (18,'m3');
INSERT INTO "product_weight" VALUES (19,'ft3');
INSERT INTO "product_weight" VALUES (20,'in3');
INSERT INTO "product_weight" VALUES (21,'oz');
INSERT INTO "product_weight" VALUES (22,'gal');
INSERT INTO "product_weight" VALUES (23,'T');
INSERT INTO "product_weight" VALUES (24,'lb');
INSERT INTO "products" VALUES (1,'Headphone','h11212','2','Good headphone','2000','2500','1','N/A','10','4','1');
INSERT INTO "products" VALUES (2,'Adata Pendrive','p-1212','3','32 gb pendrive','400','600','2','N/A','5','4','1');
INSERT INTO "products" VALUES (3,'Adata SSD','adata-11','4','Adata SSD 256 GB','2000','2100','1','N/A','10','2','1');
INSERT INTO "expense" VALUES (1,'Employee Salary','Salary','10000','2023-05-23','07:55 AM');
INSERT INTO "payment_method" VALUES (1,'CASH');
INSERT INTO "payment_method" VALUES (2,'Esewa');
INSERT INTO "payment_method" VALUES (3,'Khalti');
INSERT INTO "order_type" VALUES (1,'PICK UP');
INSERT INTO "order_type" VALUES (2,'HOME DELIVERY');
INSERT INTO "order_type" VALUES (3,'COURIER');
INSERT INTO "shop" VALUES (1,'NepShop','+977','nepshop@gmail.com','Kathmandu, Nepal','Nrs','0');
COMMIT;

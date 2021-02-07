CREATE DATABASE "habitsdb";
\c "habitsdb"


CREATE TABLE "users" (
	"login_id" serial NOT NULL,
	"nickname" TEXT NOT NULL UNIQUE,
	"password" TEXT NOT NULL,
	"email" TEXT NOT NULL UNIQUE,
	"points" FLOAT NOT NULL,
	CONSTRAINT "users_pk" PRIMARY KEY ("login_id")
);



CREATE TABLE "user_tasks" (
	"login_id" integer NOT NULL,
	"task_id" integer NOT NULL,
	"significance" FLOAT NOT NULL,
	"completed" BOOLEAN NOT NULL
);



CREATE TABLE "user_inventory" (
	"login_id" integer NOT NULL,
	"item_id" integer NOT NULL
);



CREATE TABLE "items" (
	"item_id" integer NOT NULL,
	"name" TEXT NOT NULL UNIQUE,
	"description" TEXT,
	"type" TEXT NOT NULL,
	"cost" FLOAT NOT NULL,
	"img_source" TEXT NOT NULL,
	CONSTRAINT "items_pk" PRIMARY KEY ("item_id")
);



CREATE TABLE "tasks" (
	"task_id" serial NOT NULL,
	"name" TEXT NOT NULL UNIQUE,
	"description" TEXT,
	"category" TEXT NOT NULL,
	"points" FLOAT NOT NULL,
	CONSTRAINT "tasks_pk" PRIMARY KEY ("task_id")
);



CREATE TABLE "item_types" (
	"type" TEXT NOT NULL,
	CONSTRAINT "item_types_pk" PRIMARY KEY ("type")
);



CREATE TABLE "categories" (
	"category" TEXT NOT NULL,
	CONSTRAINT "categories_pk" PRIMARY KEY ("category")
);



CREATE TABLE "form_questions" (
	"question_id" serial NOT NULL,
	"task_id" integer NOT NULL,
	"question" TEXT NOT NULL,
	"negative" BOOLEAN NOT NULL,
	CONSTRAINT "form_questions_pk" PRIMARY KEY ("question_id")
);




ALTER TABLE "user_tasks" ADD CONSTRAINT "user_tasks_fk0" FOREIGN KEY ("login_id") REFERENCES "users"("login_id") ON DELETE CASCADE;
ALTER TABLE "user_tasks" ADD CONSTRAINT "user_tasks_fk1" FOREIGN KEY ("task_id") REFERENCES "tasks"("task_id") ON DELETE CASCADE;

ALTER TABLE "user_inventory" ADD CONSTRAINT "user_inventory_fk0" FOREIGN KEY ("login_id") REFERENCES "users"("login_id") ON DELETE CASCADE;
ALTER TABLE "user_inventory" ADD CONSTRAINT "user_inventory_fk1" FOREIGN KEY ("item_id") REFERENCES "items"("item_id") ON DELETE CASCADE;

ALTER TABLE "items" ADD CONSTRAINT "items_fk0" FOREIGN KEY ("type") REFERENCES "item_types"("type");

ALTER TABLE "tasks" ADD CONSTRAINT "tasks_fk0" FOREIGN KEY ("category") REFERENCES "categories"("category");



ALTER TABLE "form_questions" ADD CONSTRAINT "form_questions_fk0" FOREIGN KEY ("task_id") REFERENCES "tasks"("task_id") ON DELETE CASCADE;;






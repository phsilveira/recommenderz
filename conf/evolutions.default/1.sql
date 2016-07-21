# --- !Ups

CREATE TABLE "user" (
  "id" VARCHAR(255) NOT NULL,
  "name" VARCHAR(255),
  "email" VARCHAR(255) NOT NULL,
  "skilss" VARCHAR(255)
--  "telephone" VARCHAR(255),
--  "ext" VARCHAR(255),
--  "mobile" VARCHAR(255),
--  "company" VARCHAR(255),
--  "jobRole" VARCHAR(255),
--  "language" VARCHAR(255),
--  "avatarURL" VARCHAR(255),
  CONSTRAINT user_key PRIMARY KEY ("id")
);

CREATE TABLE "company" (
  "id" VARCHAR(255) NOT NULL,
  "name" VARCHAR(255) NOT NULL,
  "description" VARCHAR(255),
  "logo" VARCHAR(255)
--  "telephone" VARCHAR(255),
--  "ext" VARCHAR(255),
--  "mobile" VARCHAR(255),
--  "company" VARCHAR(255),
--  "jobRole" VARCHAR(255),
--  "language" VARCHAR(255),
--  "avatarURL" VARCHAR(255),
  CONSTRAINT company_key PRIMARY KEY ("id")
);

CREATE TABLE "jobPosition" (
    "id" VARCHAR(255) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    "description" VARCHAR(255),
    "company_id" VARCHAR(255),
    "tags" VARCHAR(255)
    "date_created" DATE,
    "date_closed" DATE,
    CONSTRAINT jobPosition_key PRIMARY KEY ("id"),
    ADD CONSTRAINT company_id_fk FOREIGN KEY ("company_id") REFERENCES "company"("id");
);

# --- !Downs

DROP TABLE "user";
DROP TABLE "company";
DROP TABLE "jobPosition";
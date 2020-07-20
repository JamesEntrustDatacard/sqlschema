--
-- Copyright 2004-2017 Entrust. All rights reserved.
--
-- This file defines the database schema used to upgrade Entrust IdentityGuard 
-- from 11.0 to 12.0.

-- Add the following statement to place the Entrust IdentityGuard tables in
-- your sql server database. Substitute your database name for <DBNAME>.
--
-- USE <DBNAME>; 
--
-- e.g., 
-- USE igdb;
--

  CREATE TABLE anonymous_challenges
  (
    anon_challenge_data image,
    create_date DATETIME NOT NULL,
    sernum DECIMAL(12, 0) NOT NULL,
    group_id integer DEFAULT 0 NOT NULL,
    transaction_id VARCHAR(255),
    CONSTRAINT anon_challenge_pkey PRIMARY KEY (sernum)
  );

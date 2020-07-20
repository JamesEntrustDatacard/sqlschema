--
-- Copyright 2004-2017 Entrust. All rights reserved.
--
-- This file defines the database schema used to upgrade Entrust IdentityGuard
-- from 11.0 to 12.0

-- Prerequisite:
--   must run commands as schema owner
--   e.g.,
--   connect to dbname user username using userpassword;
--   set schema schemaname;

  CREATE TABLE anonymous_challenges
  (
    anon_challenge_data blob,
    create_date TIMESTAMP NOT NULL,
    sernum DECIMAL(12, 0) NOT NULL,
    group_id integer DEFAULT 0 NOT NULL,
    transaction_id VARCHAR(255),
    CONSTRAINT anon_challenge_pkey PRIMARY KEY (sernum)
  );

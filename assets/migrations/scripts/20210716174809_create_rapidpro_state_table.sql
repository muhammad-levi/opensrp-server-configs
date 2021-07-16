--
--    Copyright 2010-2016 the original author or authors.
--
--    Licensed under the Apache License, Version 2.0 (the "License");
--    you may not use this file except in compliance with the License.
--    You may obtain a copy of the License at
--
--       http://www.apache.org/licenses/LICENSE-2.0
--
--    Unless required by applicable law or agreed to in writing, software
--    distributed under the License is distributed on an "AS IS" BASIS,
--    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
--    See the License for the specific language governing permissions and
--    limitations under the License.
--

-- // create_rapidpro_state_table
-- Migration SQL that makes the change goes here.
CREATE TABLE core.rapidpro_state
(
    id             bigserial NOT NULL,
    uuid           varchar   NOT NULL,
    entity         varchar   NOT NULL,
    property       varchar   NOT NULL,
    property_key   varchar   NOT NULL,
    property_value text      NOT NULL,
    sync_status    varchar,
    PRIMARY KEY (id)
    ) WITH (OIDS = FALSE )
    TABLESPACE ${core_tablespace};

CREATE INDEX rapidpro_state_id_index ON core.rapidpro_state (id);
CREATE INDEX rapidpro_state_uuid_index ON core.rapidpro_state (uuid);
CREATE INDEX rapidpro_state_property_key_index ON core.rapidpro_state (property_key);


-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE IF EXISTS core.rapidpro_state;


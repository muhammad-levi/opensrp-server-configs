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

-- // create mutli_media table
-- Migration SQL that makes the change goes here.

CREATE TABLE core.multi_media
(
  	id bigserial NOT NULL,
  	document_id character varying UNIQUE NOT NULL,
  	case_id character varying  NOT NULL,
    provider_id character varying,
    content_type character varying,
    file_path character varying,
    file_category character varying,
    PRIMARY KEY (id)
)
WITH (
    OIDS = FALSE
) TABLESPACE core_space;

CREATE INDEX multi_media_case_id_index ON core.multi_media (case_id);
CREATE INDEX multi_media_provider_id_index ON core.multi_media (provider_id);

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE core.multi_media;


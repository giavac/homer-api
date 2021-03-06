GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO homer_user;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public  TO homer_user;

CREATE TABLE IF NOT EXISTS logs_capture (
  id BIGSERIAL NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  micro_ts bigint NOT NULL DEFAULT '0',
  correlation_id varchar(256) NOT NULL DEFAULT '',
  source_ip varchar(60) NOT NULL DEFAULT '',
  source_port integer NOT NULL DEFAULT 0,
  destination_ip varchar(60) NOT NULL DEFAULT '',
  destination_port integer NOT NULL DEFAULT 0,
  proto integer NOT NULL DEFAULT 0,
  family smallint DEFAULT NULL,
  type integer NOT NULL DEFAULT 0,
  node varchar(125) NOT NULL DEFAULT '',
  msg varchar(1500) NOT NULL DEFAULT '',
  PRIMARY KEY (id,date)
);

CREATE INDEX logs_capture_date ON "logs_capture" (date);
CREATE INDEX logs_capture_correlation ON "logs_capture" (correlation_id);
CREATE TABLE logs_capture_p2013082901() INHERITS (logs_capture);
ALTER TABLE logs_capture_p2013082901 ADD CONSTRAINT chk_logs_capture_p2013082901 CHECK (date < to_timestamp(1377734400));

CREATE TABLE IF NOT EXISTS report_capture (
  id BIGSERIAL NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  micro_ts bigint NOT NULL DEFAULT '0',
  correlation_id varchar(256) NOT NULL DEFAULT '',
  source_ip varchar(60) NOT NULL DEFAULT '',
  source_port integer NOT NULL DEFAULT 0,
  destination_ip varchar(60) NOT NULL DEFAULT '',
  destination_port integer NOT NULL DEFAULT 0,
  proto integer NOT NULL DEFAULT 0,
  family smallint DEFAULT NULL,
  type integer NOT NULL DEFAULT 0,
  node varchar(125) NOT NULL DEFAULT '',
  msg varchar(1500) NOT NULL DEFAULT '',
  PRIMARY KEY (id,date)
);

CREATE INDEX report_capture_date ON "report_capture" (date);
CREATE INDEX report_capture_correlation ON "report_capture" (correlation_id);
CREATE TABLE report_capture_p2013082901() INHERITS (report_capture);
ALTER TABLE report_capture_p2013082901 ADD CONSTRAINT chk_report_capture_p2013082901 CHECK (date < to_timestamp(1377734400)); 


CREATE TABLE IF NOT EXISTS webrtc_capture (
  id BIGSERIAL NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  micro_ts bigint NOT NULL DEFAULT '0',
  correlation_id varchar(256) NOT NULL DEFAULT '',
  source_ip varchar(60) NOT NULL DEFAULT '',
  source_port integer NOT NULL DEFAULT 0,
  destination_ip varchar(60) NOT NULL DEFAULT '',
  destination_port integer NOT NULL DEFAULT 0,
  proto integer NOT NULL DEFAULT 0,
  family smallint DEFAULT NULL,
  type integer NOT NULL DEFAULT 0,
  node varchar(125) NOT NULL DEFAULT '',
  msg varchar(1500) NOT NULL DEFAULT '',
  PRIMARY KEY (id,date)
);

CREATE INDEX webrtc_capture_date ON "webrtc_capture" (date);
CREATE INDEX webrtc_capture_correlation ON "webrtc_capture" (correlation_id);
CREATE TABLE webrtc_capture_p2013082901() INHERITS (webrtc_capture);
ALTER TABLE webrtc_capture_p2013082901 ADD CONSTRAINT chk_webrtc_capture_p2013082901 CHECK (date < to_timestamp(1377734400)); 


CREATE TABLE IF NOT EXISTS rtcp_capture (
  id BIGSERIAL NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  micro_ts bigint NOT NULL DEFAULT '0',
  correlation_id varchar(256) NOT NULL DEFAULT '',
  source_ip varchar(60) NOT NULL DEFAULT '',
  source_port integer NOT NULL DEFAULT 0,
  destination_ip varchar(60) NOT NULL DEFAULT '',
  destination_port integer NOT NULL DEFAULT 0,
  proto integer NOT NULL DEFAULT 0,
  family smallint DEFAULT NULL,
  type integer NOT NULL DEFAULT 0,
  node varchar(125) NOT NULL DEFAULT '',
  msg varchar(1500) NOT NULL DEFAULT '',
  PRIMARY KEY (id,date)
);

CREATE INDEX rtcp_capture_date ON "rtcp_capture" (date);
CREATE INDEX rtcp_capture_correlation ON "rtcp_capture" (correlation_id);
CREATE TABLE rtcp_capture_p2013082901() INHERITS (rtcp_capture);
ALTER TABLE rtcp_capture_p2013082901 ADD CONSTRAINT chk_rtcp_capture_p2013082901 CHECK (date < to_timestamp(1377734400)); 


CREATE TABLE IF NOT EXISTS sip_capture_call_20150407 (
  id BIGSERIAL NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  micro_ts bigint NOT NULL DEFAULT '0',
  method varchar(50) NOT NULL DEFAULT '',
  reply_reason varchar(100) NOT NULL DEFAULT '',
  ruri varchar(200) NOT NULL DEFAULT '',
  ruri_user varchar(100) NOT NULL DEFAULT '',
  ruri_domain varchar(150) NOT NULL DEFAULT '',
  from_user varchar(100) NOT NULL DEFAULT '',
  from_domain varchar(150) NOT NULL DEFAULT '',
  from_tag varchar(64) NOT NULL DEFAULT '',
  to_user varchar(100) NOT NULL DEFAULT '',
  to_domain varchar(150) NOT NULL DEFAULT '',
  to_tag varchar(64) NOT NULL DEFAULT '',
  pid_user varchar(100) NOT NULL DEFAULT '',
  contact_user varchar(120) NOT NULL DEFAULT '',
  auth_user varchar(120) NOT NULL DEFAULT '',
  callid varchar(120) NOT NULL DEFAULT '',
  callid_aleg varchar(120) NOT NULL DEFAULT '',
  via_1 varchar(256) NOT NULL DEFAULT '',
  via_1_branch varchar(80) NOT NULL DEFAULT '',
  cseq varchar(25) NOT NULL DEFAULT '',
  diversion varchar(256) NOT NULL DEFAULT '',
  reason varchar(200) NOT NULL DEFAULT '',
  content_type varchar(256) NOT NULL DEFAULT '',
  auth varchar(256) NOT NULL DEFAULT '',
  user_agent varchar(256) NOT NULL DEFAULT '',
  source_ip varchar(60) NOT NULL DEFAULT '',
  source_port integer NOT NULL DEFAULT 0,
  destination_ip varchar(60) NOT NULL DEFAULT '',
  destination_port integer NOT NULL DEFAULT 0,
  contact_ip varchar(60) NOT NULL DEFAULT '',
  contact_port integer NOT NULL DEFAULT 0,
  originator_ip varchar(60) NOT NULL DEFAULT '',
  originator_port integer NOT NULL DEFAULT 0,
  correlation_id varchar(256) NOT NULL DEFAULT '',
  custom_field1 varchar(120) NOT NULL DEFAULT '',
  custom_field2 varchar(120) NOT NULL DEFAULT '',
  custom_field3 varchar(120) NOT NULL DEFAULT '',
  proto integer NOT NULL DEFAULT 0,
  family smallint DEFAULT NULL,
  rtp_stat varchar(256) NOT NULL DEFAULT '',
  type integer NOT NULL DEFAULT 0,
  node varchar(125) NOT NULL DEFAULT '',
  msg bytea NOT NULL DEFAULT '',
  PRIMARY KEY (id,date)
);

CREATE INDEX sip_capture_call_20150407_ruri_user ON "sip_capture_call_20150407" (ruri_user);
CREATE INDEX sip_capture_call_20150407_from_user ON "sip_capture_call_20150407" (from_user);
CREATE INDEX sip_capture_call_20150407_to_user ON "sip_capture_call_20150407" (to_user);
CREATE INDEX sip_capture_call_20150407_pid_user ON "sip_capture_call_20150407" (pid_user);
CREATE INDEX sip_capture_call_20150407_auth_user ON "sip_capture_call_20150407" (auth_user);
CREATE INDEX sip_capture_call_20150407_callid_aleg ON "sip_capture_call_20150407" (callid_aleg);
CREATE INDEX sip_capture_call_20150407_date ON "sip_capture_call_20150407" (date);
CREATE INDEX sip_capture_call_20150407_callid ON "sip_capture_call_20150407" (callid);

CREATE TABLE sip_capture_call_20150407_p2013082901() INHERITS (sip_capture_call_20150407);
ALTER TABLE sip_capture_call_20150407_p2013082901 ADD CONSTRAINT chk_sip_capture_call_20150407_p2013082901 CHECK (date < to_timestamp(1377734400)); 

CREATE TABLE IF NOT EXISTS sip_capture_registration_20150407 (
  id BIGSERIAL NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  micro_ts bigint NOT NULL DEFAULT '0',
  method varchar(50) NOT NULL DEFAULT '',
  reply_reason varchar(100) NOT NULL DEFAULT '',
  ruri varchar(200) NOT NULL DEFAULT '',
  ruri_user varchar(100) NOT NULL DEFAULT '',
  ruri_domain varchar(150) NOT NULL DEFAULT '',
  from_user varchar(100) NOT NULL DEFAULT '',
  from_domain varchar(150) NOT NULL DEFAULT '',
  from_tag varchar(64) NOT NULL DEFAULT '',
  to_user varchar(100) NOT NULL DEFAULT '',
  to_domain varchar(150) NOT NULL DEFAULT '',
  to_tag varchar(64) NOT NULL DEFAULT '',
  pid_user varchar(100) NOT NULL DEFAULT '',
  contact_user varchar(120) NOT NULL DEFAULT '',
  auth_user varchar(120) NOT NULL DEFAULT '',
  callid varchar(120) NOT NULL DEFAULT '',
  callid_aleg varchar(120) NOT NULL DEFAULT '',
  via_1 varchar(256) NOT NULL DEFAULT '',
  via_1_branch varchar(80) NOT NULL DEFAULT '',
  cseq varchar(25) NOT NULL DEFAULT '',
  diversion varchar(256) NOT NULL DEFAULT '',
  reason varchar(200) NOT NULL DEFAULT '',
  content_type varchar(256) NOT NULL DEFAULT '',
  auth varchar(256) NOT NULL DEFAULT '',
  user_agent varchar(256) NOT NULL DEFAULT '',
  source_ip varchar(60) NOT NULL DEFAULT '',
  source_port integer NOT NULL DEFAULT 0,
  destination_ip varchar(60) NOT NULL DEFAULT '',
  destination_port integer NOT NULL DEFAULT 0,
  contact_ip varchar(60) NOT NULL DEFAULT '',
  contact_port integer NOT NULL DEFAULT 0,
  originator_ip varchar(60) NOT NULL DEFAULT '',
  originator_port integer NOT NULL DEFAULT 0,
  correlation_id varchar(256) NOT NULL DEFAULT '',
  custom_field1 varchar(120) NOT NULL DEFAULT '',
  custom_field2 varchar(120) NOT NULL DEFAULT '',
  custom_field3 varchar(120) NOT NULL DEFAULT '',
  proto integer NOT NULL DEFAULT 0,
  family smallint DEFAULT NULL,
  rtp_stat varchar(256) NOT NULL DEFAULT '',
  type integer NOT NULL DEFAULT 0,
  node varchar(125) NOT NULL DEFAULT '',
  msg varchar(1500) NOT NULL DEFAULT '',
  PRIMARY KEY (id,date)
);

CREATE INDEX sip_capture_registration_20150407_ruri_user ON "sip_capture_registration_20150407" (ruri_user);
CREATE INDEX sip_capture_registration_20150407_from_user ON "sip_capture_registration_20150407" (from_user);
CREATE INDEX sip_capture_registration_20150407_to_user ON "sip_capture_registration_20150407" (to_user);
CREATE INDEX sip_capture_registration_20150407_pid_user ON "sip_capture_registration_20150407" (pid_user);
CREATE INDEX sip_capture_registration_20150407_auth_user ON "sip_capture_registration_20150407" (auth_user);
CREATE INDEX sip_capture_registration_20150407_callid_aleg ON "sip_capture_registration_20150407" (callid_aleg);
CREATE INDEX sip_capture_registration_20150407_date ON "sip_capture_registration_20150407" (date);
CREATE INDEX sip_capture_registration_20150407_callid ON "sip_capture_registration_20150407" (callid);

CREATE TABLE sip_capture_registration_20150407_p2013082901() INHERITS (sip_capture_registration_20150407);
ALTER TABLE sip_capture_registration_20150407_p2013082901 ADD CONSTRAINT chk_sip_capture_registration_20150407_p2013082901 CHECK (date < to_timestamp(1377734400)); 


-- --------------------------------------------------------

--
-- Table structure for table sip_capture_rest_20150407
--

CREATE TABLE IF NOT EXISTS sip_capture_rest_20150407 (
  id BIGSERIAL NOT NULL,
  date timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  micro_ts bigint NOT NULL DEFAULT '0',
  method varchar(50) NOT NULL DEFAULT '',
  reply_reason varchar(100) NOT NULL DEFAULT '',
  ruri varchar(200) NOT NULL DEFAULT '',
  ruri_user varchar(100) NOT NULL DEFAULT '',
  ruri_domain varchar(150) NOT NULL DEFAULT '',
  from_user varchar(100) NOT NULL DEFAULT '',
  from_domain varchar(150) NOT NULL DEFAULT '',
  from_tag varchar(64) NOT NULL DEFAULT '',
  to_user varchar(100) NOT NULL DEFAULT '',
  to_domain varchar(150) NOT NULL DEFAULT '',
  to_tag varchar(64) NOT NULL DEFAULT '',
  pid_user varchar(100) NOT NULL DEFAULT '',
  contact_user varchar(120) NOT NULL DEFAULT '',
  auth_user varchar(120) NOT NULL DEFAULT '',
  callid varchar(120) NOT NULL DEFAULT '',
  callid_aleg varchar(120) NOT NULL DEFAULT '',
  via_1 varchar(256) NOT NULL DEFAULT '',
  via_1_branch varchar(80) NOT NULL DEFAULT '',
  cseq varchar(25) NOT NULL DEFAULT '',
  diversion varchar(256) NOT NULL DEFAULT '',
  reason varchar(200) NOT NULL DEFAULT '',
  content_type varchar(256) NOT NULL DEFAULT '',
  auth varchar(256) NOT NULL DEFAULT '',
  user_agent varchar(256) NOT NULL DEFAULT '',
  source_ip varchar(60) NOT NULL DEFAULT '',
  source_port integer NOT NULL DEFAULT 0,
  destination_ip varchar(60) NOT NULL DEFAULT '',
  destination_port integer NOT NULL DEFAULT 0,
  contact_ip varchar(60) NOT NULL DEFAULT '',
  contact_port integer NOT NULL DEFAULT 0,
  originator_ip varchar(60) NOT NULL DEFAULT '',
  originator_port integer NOT NULL DEFAULT 0,
  correlation_id varchar(256) NOT NULL DEFAULT '',
  custom_field1 varchar(120) NOT NULL DEFAULT '',
  custom_field2 varchar(120) NOT NULL DEFAULT '',
  custom_field3 varchar(120) NOT NULL DEFAULT '',
  proto integer NOT NULL DEFAULT 0,
  family smallint DEFAULT NULL,
  rtp_stat varchar(256) NOT NULL DEFAULT '',
  type integer NOT NULL DEFAULT 0,
  node varchar(125) NOT NULL DEFAULT '',
  msg varchar(1500) NOT NULL DEFAULT '',
  PRIMARY KEY (id,date)
);

CREATE INDEX sip_capture_rest_20150407_ruri_user ON "sip_capture_rest_20150407" (ruri_user);
CREATE INDEX sip_capture_rest_20150407_from_user ON "sip_capture_rest_20150407" (from_user);
CREATE INDEX sip_capture_rest_20150407_to_user ON "sip_capture_rest_20150407" (to_user);
CREATE INDEX sip_capture_rest_20150407_pid_user ON "sip_capture_rest_20150407" (pid_user);
CREATE INDEX sip_capture_rest_20150407_auth_user ON "sip_capture_rest_20150407" (auth_user);
CREATE INDEX sip_capture_rest_20150407_callid_aleg ON "sip_capture_rest_20150407" (callid_aleg);
CREATE INDEX sip_capture_rest_20150407_date ON "sip_capture_rest_20150407" (date);
CREATE INDEX sip_capture_rest_20150407_callid ON "sip_capture_rest_20150407" (callid);

CREATE TABLE sip_capture_rest_20150407_p2013082901() INHERITS (sip_capture_rest_20150407);
ALTER TABLE sip_capture_rest_20150407_p2013082901 ADD CONSTRAINT chk_sip_capture_rest_20150407_p2013082901 CHECK (date < to_timestamp(1377734400)); 

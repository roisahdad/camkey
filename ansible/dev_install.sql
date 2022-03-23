USE extcamkey;


GRANT CREATE ON extcamkey.* TO 'eckuser'@'localhost';
GRANT DROP ON extcamkey.* TO 'eckuser'@'localhost';
GRANT DELETE ON extcamkey.* TO 'eckuser'@'localhost';
GRANT INSERT ON extcamkey.* TO 'eckuser'@'localhost';
GRANT SELECT ON extcamkey.* TO 'eckuser'@'localhost';
GRANT UPDATE ON extcamkey.* TO 'eckuser'@'localhost';

GRANT SELECT ON extcamkey.* TO 'roeckuser'@'localhost';

CREATE TABLE IF NOT EXISTS project (
    id BIGINT NOT NULL,
    project_name VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_project UNIQUE(project_name)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;


INSERT INTO project (id, project_name) VALUES ( 0, 'CAMKEY');

CREATE TABLE IF NOT EXISTS namespace_vv (
    id BIGINT NOT NULL,
    namespace VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_namespace UNIQUE(namespace)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS state_vv (
    id BIGINT NOT NULL,
    state VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_state UNIQUE(state)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS maf_vv (
    id BIGINT NOT NULL,
    maf VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_maf UNIQUE(maf)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS system_status_values(
    id BIGINT AUTO_INCREMENT NOT NULL,
    status_name VARCHAR(256) NOT NULL,
    status_value VARCHAR(256),
    PRIMARY KEY (id),
    CONSTRAINT unique_status_name UNIQUE(status_name)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

INSERT INTO maf_vv (id, maf) VALUES ( 0, 'INFO');
INSERT INTO maf_vv (id, maf) VALUES ( 1, 'SIGINT');

CREATE TABLE IF NOT EXISTS eci_vv (
    id BIGINT NOT NULL,
    eci VARCHAR(256) NOT NULL,
    status VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_eci UNIQUE(eci)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS lac_vv (
    id BIGINT AUTO_INCREMENT NOT NULL,
    lac VARCHAR(512) NOT NULL,
    status VARCHAR(128) NOT NULL,
    maf VARCHAR(512),
    fisa_flag BOOLEAN,
    ragtime VARCHAR(32),
    PRIMARY KEY (id),
    CONSTRAINT unique_lac UNIQUE(lac)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS coi_vv (
    id BIGINT AUTO_INCREMENT NOT NULL,
    coi VARCHAR(512) NOT NULL,
    status VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_coi UNIQUE(coi)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS gvorg_vv (
    id BIGINT AUTO_INCREMENT NOT NULL,
    gvorg VARCHAR(512) NOT NULL,
    status VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_gvorg UNIQUE(gvorg)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS region_vv (
    id BIGINT AUTO_INCREMENT NOT NULL,
    region VARCHAR(512) NOT NULL,
    label VARCHAR(512),
    status VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_region UNIQUE(region)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS topic_vv (
    id BIGINT AUTO_INCREMENT NOT NULL,
    topic VARCHAR(512) NOT NULL,
    label VARCHAR(512),
    status VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_topic UNIQUE(topic)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS ctry_vv (
    id BIGINT AUTO_INCREMENT NOT NULL,
    ctry VARCHAR(512) NOT NULL,
    label VARCHAR(512),
    status VARCHAR(128) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_ctry UNIQUE(ctry)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS admin_activity (
    id BIGINT AUTO_INCREMENT NOT NULL,
    user_id VARCHAR(512) NOT NULL,
    operation VARCHAR(512),
    description VARCHAR(512),
    activity_date DATETIME NOT NULL,    
    PRIMARY KEY (id)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;


CREATE TABLE IF NOT EXISTS ticketwindow_vv (
    id BIGINT NOT NULL,
    ticketwindow VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT unique_ticketwindow UNIQUE(ticketwindow)
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

INSERT INTO ticketwindow_vv (id, ticketwindow) VALUES (0, 'NO');
INSERT INTO ticketwindow_vv (id, ticketwindow) VALUES (1, 'MASKED');
INSERT INTO ticketwindow_vv (id, ticketwindow) VALUES (2, 'UNMASKED');

CREATE TABLE IF NOT EXISTS camkey (
    id BIGINT AUTO_INCREMENT NOT NULL,
    camkey VARCHAR(256) NOT NULL,
    state_id BIGINT NOT NULL,
    originator VARCHAR(1024) NOT NULL,
    custodian VARCHAR(1024) NOT NULL,
    comments VARCHAR(1024),
    start_date DATETIME NOT NULL,
    stop_date  DATETIME,
    classification VARCHAR(1024) NOT NULL,
    ticketwindow_id BIGINT NOT NULL,
    category VARCHAR(1024),
    project_id BIGINT NOT NULL,
    control_set VARCHAR(2048),
    normalized_control_set VARCHAR(2048),
    mafs VARCHAR(1024),
    collection_authority VARCHAR(1024),
    legal_authority VARCHAR(1024),
    access_rules VARCHAR(1024),
    requestor VARCHAR(256),
    request_date DATETIME,
    approver VARCHAR(256),
    approval_date DATETIME,
    modification_owner VARCHAR(256),
    modification_date DATETIME,
    admin_notes VARCHAR(8192),
    replacement_camkey VARCHAR(256),
    PRIMARY KEY (id),
    CONSTRAINT fk_camkey_ticketwindow_id
        FOREIGN KEY(ticketwindow_id) REFERENCES ticketwindow_vv(id)        
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_camkey_project_id
        FOREIGN KEY(project_id) REFERENCES project(id)        
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_camkey_state_id
        FOREIGN KEY(state_id) REFERENCES state_vv(id)        
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;

CREATE TABLE IF NOT EXISTS camkey_history (
    id BIGINT NOT NULL,
    camkey VARCHAR(256) NOT NULL,
    state_id BIGINT NOT NULL,
    originator VARCHAR(1024) NOT NULL,
    custodian VARCHAR(1024) NOT NULL,
    comments VARCHAR(1024),
    start_date DATETIME NOT NULL,
    stop_date  DATETIME,
    classification VARCHAR(1024) NOT NULL,
    ticketwindow_id BIGINT NOT NULL,
    category VARCHAR(1024),
    project_id BIGINT NOT NULL,
    control_set VARCHAR(2048),
    normalized_control_set VARCHAR(2048),
    mafs VARCHAR(1024),
    collection_authority VARCHAR(1024),
    legal_authority VARCHAR(1024),
    access_rules VARCHAR(1024),
    requestor VARCHAR(256),
    request_date DATETIME,
    approver VARCHAR(256),
    approval_date DATETIME,
    modification_owner VARCHAR(256),
    modification_date DATETIME,
    admin_notes VARCHAR(8192),
    replacement_camkey VARCHAR(256),
    mod_type VARCHAR(256) NOT NULL,
    mod_date DATETIME NOT NULL,
    mod_notes VARCHAR(8192) NOT NULL,
    CONSTRAINT fk_camkey_history_ticketwindow_id
        FOREIGN KEY(ticketwindow_id) REFERENCES ticketwindow_vv(id)        
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_camkey_history_project_id
        FOREIGN KEY(project_id) REFERENCES project(id)        
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_camkey_history_state_id
        FOREIGN KEY(state_id) REFERENCES state_vv(id)        
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;


CREATE TABLE IF NOT EXISTS controlset_values (
    id BIGINT AUTO_INCREMENT NOT NULL,
    camkey_id BIGINT NOT NULL,
    namespace_id BIGINT NOT NULL,
    cs_value VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT fk_controlset_values_camkey_id
        FOREIGN KEY(camkey_id) REFERENCES camkey(id)        
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_controlset_values_namespace_id
        FOREIGN KEY(namespace_id) REFERENCES namespace_vv(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
) ENGINE=INNODB CHARACTER SET latin1 COLLATE latin1_bin;




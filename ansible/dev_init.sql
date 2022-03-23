use extcamkey;

INSERT INTO ctry_vv (ctry, label, status) VALUES ('USA', 'United States', 'Final');
INSERT INTO ctry_vv (ctry, label, status) VALUES ('GBR', 'Great Britain', 'Final');
INSERT INTO ctry_vv (ctry, label, status) VALUES ('CAN', 'Canada', 'Final');
INSERT INTO ctry_vv (ctry, label, status) VALUES ('AUS', 'Australia', 'Final');
INSERT INTO ctry_vv (ctry, label, status) VALUES ('NZL', 'New Zealand', 'Final');
INSERT INTO ctry_vv (ctry, label, status) VALUES ('MEX', 'Mexico', 'Final');
INSERT INTO ctry_vv (ctry, label, status) VALUES ('VAT', 'Vatican', 'Final');


INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_0', 'USE', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_1', 'USE', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_2', 'USE', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_3', 'USE', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_4', 'USE', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_5', 'USE', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_6', 'USE', 'INFO', true, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_7', 'USE', 'INFO', true, 'RAGTIME');
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_8', 'USE', 'INFO', true, 'RAGTIME-C');
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_9', 'USE', 'INFO', true, 'RAGTIME-A');
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_LEGACY', 'LEGACY-AVOID', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_PROHIBITED', 'PROHIBITED', 'INFO', false, null);
INSERT INTO lac_vv (lac, status, maf, fisa_flag, ragtime) VALUES ('LAC_EMERGING', 'EMERGING', 'INFO', false, null);


INSERT INTO eci_vv (id, eci, status) VALUES (0, 'ABC', 'USE');
INSERT INTO eci_vv (id, eci, status) VALUES (1, 'DEF', 'USE');
INSERT INTO eci_vv (id, eci, status) VALUES (2, 'GHI', 'USE');
INSERT INTO eci_vv (id, eci, status) VALUES (3, 'JKL', 'USE');
INSERT INTO eci_vv (id, eci, status) VALUES (4, 'MNO', 'EXPIRED');
INSERT INTO eci_vv (id, eci, status) VALUES (5, 'PQR', 'EXPIRED');

INSERT INTO gvorg_vv (gvorg, status) VALUES ('USA.NSA', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('CAN.CSE', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('GBR.GCHQ', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('AUS.ASD', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('NZL.GCSB', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('USA.ORG1', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('CAN.ORG1', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('GBR.ORG1', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('AUS.ORG1', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('NZL.ORG1', 'Final');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('USA.ORG2', 'Deprecated');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('CAN.ORG2', 'Deprecated');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('GBR.ORG2', 'Deprecated');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('AUS.ORG2', 'Deprecated');
INSERT INTO gvorg_vv (gvorg, status) VALUES ('NZL.ORG2', 'Deprecated');

INSERT INTO region_vv (region, label, status) VALUES ('REG0', 'Region Zero', 'Final');
INSERT INTO region_vv (region, label, status) VALUES ('REG1', 'Region One', 'Final');
INSERT INTO region_vv (region, label, status) VALUES ('REG2', 'Region Two', 'Final');
INSERT INTO region_vv (region, label, status) VALUES ('REG3', 'Region Three', 'Final');
INSERT INTO region_vv (region, label, status) VALUES ('REG4', 'Region Four', 'Final');

INSERT INTO topic_vv (topic, label, status) VALUES ('TOP0', 'Topic Zero', 'Final');
INSERT INTO topic_vv (topic, label, status) VALUES ('TOP1', 'Topic One', 'Final');
INSERT INTO topic_vv (topic, label, status) VALUES ('TOP2', 'Topic Two', 'Final');
INSERT INTO topic_vv (topic, label, status) VALUES ('TOP3', 'Topic Three', 'Final');
INSERT INTO topic_vv (topic, label, status) VALUES ('TOP4', 'Topic Four', 'Final');



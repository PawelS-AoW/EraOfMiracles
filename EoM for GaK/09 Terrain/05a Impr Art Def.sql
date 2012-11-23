-- CAMP (no resource)

INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","UnderConstruction","1.5","ART_DEF_IMPROVEMENT_CAMP","SNAPSHOT","ART_DEF_RESOURCE_NONE","hb_eom_camp.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Constructed",      "1.5","ART_DEF_IMPROVEMENT_CAMP","SNAPSHOT","ART_DEF_RESOURCE_NONE",   "eom_camp.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Pillaged",         "1.5","ART_DEF_IMPROVEMENT_CAMP","SNAPSHOT","ART_DEF_RESOURCE_NONE","pl_eom_camp.fxsxml","1",null);

-- FARM (avoiding the crash)

INSERT INTO "ArtDefine_LandmarkTypes" VALUES ("ART_DEF_IMPROVEMENT_EOMFARM","Improvement","EoMFarm");

INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","UnderConstruction","0.6","ART_DEF_IMPROVEMENT_EOMFARM","SNAPSHOT","ART_DEF_RESOURCE_ALL","HB_IND_Polder.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","UnderConstruction","0.6","ART_DEF_IMPROVEMENT_EOMFARM","ANIMATED","ART_DEF_RESOURCE_ALL",   "IND_Polder.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Constructed",      "0.6","ART_DEF_IMPROVEMENT_EOMFARM","SNAPSHOT","ART_DEF_RESOURCE_ALL", "Polder_Blank.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Constructed",      "0.6","ART_DEF_IMPROVEMENT_EOMFARM","ANIMATED","ART_DEF_RESOURCE_ALL",   "IND_Polder.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Pillaged",         "0.6","ART_DEF_IMPROVEMENT_EOMFARM","SNAPSHOT","ART_DEF_RESOURCE_ALL","PL_IND_Polder.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Pillaged",         "0.6","ART_DEF_IMPROVEMENT_EOMFARM","ANIMATED","ART_DEF_RESOURCE_ALL",   "IND_Polder.fxsxml","1",null);

INSERT INTO "ArtDefine_StrategicView" VALUES ("ART_DEF_IMPROVEMENT_EOMFARM","Improvement","SV_Farm.dds");

-- FISHING VILLAGE

INSERT INTO "ArtDefine_LandmarkTypes" VALUES ("ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","Improvement","EoM Fishing Village");

INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","UnderConstruction","1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","HB_MOD_old_Trading_Post1.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Constructed",      "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL",   "MOD_old_Trading_Post1.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Pillaged",         "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","PL_MOD_old_Trading_Post1.fxsxml","1",null);

INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","UnderConstruction","1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","HB_MOD_old_Trading_Post2.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Constructed",      "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL",   "MOD_old_Trading_Post2.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Pillaged",         "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","PL_MOD_old_Trading_Post2.fxsxml","1",null);

INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","UnderConstruction","1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","HB_MOD_old_Trading_Post3.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Constructed",      "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL",   "MOD_old_Trading_Post3.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Pillaged",         "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","PL_MOD_old_Trading_Post3.fxsxml","1",null);

INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","UnderConstruction","1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","HB_MOD_old_Trading_Post4.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Constructed",      "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL",   "MOD_old_Trading_Post4.fxsxml","1",null);
INSERT INTO "ArtDefine_Landmarks" VALUES ("Any","Pillaged",         "1","ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","RANDOM","ART_DEF_RESOURCE_ALL","PL_MOD_old_Trading_Post4.fxsxml","1",null);

INSERT INTO "ArtDefine_StrategicView" VALUES ("ART_DEF_IMPROVEMENT_EOM_FISHING_VILLAGE","Improvement","SV_FishingBoats.dds");

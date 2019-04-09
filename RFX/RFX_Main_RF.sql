--------------------------------------------------------------
-- Real Fixes
-- Author: Infixo
-- 2018-12-09: Separate file for R&F
--------------------------------------------------------------

-- 2018-03-25 Rise & Fall only (moved from the main file)
INSERT OR REPLACE INTO Types (Type, Kind) VALUES ('PSEUDOYIELD_GOLDENAGE_POINT', 'KIND_PSEUDOYIELD');
UPDATE AiFavoredItems SET Item = 'TECH_SAILING' WHERE Item = 'TECH_SALING'; -- GenghisTechs
DELETE FROM AiFavoredItems WHERE ListType = 'WilhelminaEmergencyAllianceList' AND Item = 'DIPLOACTION_ALLIANCE_MILITARY_EMERGENCY(NOT_IN_YET)'; -- WilhelminaEmergencyAllianceList, REMOVE IF IMPLEMENTED PROPERLY!
DELETE FROM AiFavoredItems WHERE ListType = 'IronConfederacyDiplomacy' AND Item = 'DIPLOACTION_ALLIANCE_TEAMUP'; -- IronConfederacyDiplomacy, does not exists in Diplo Actions, REMOVE IF IMPLEMENTED PROPERLY!

-- 2019-04-09 Gathering Storm
UPDATE AiFavoredItems SET Item = 'TECH_REPLACEABLE_PARTS' WHERE Item = 'TECH_REPLACABLE_PARTS'; -- PachacutiTechs
UPDATE AiFavoredItems SET Item = 'TECH_GUNPOWDER' WHERE Item = 'TECH_GUNPOWER'; -- SuliemanTechs

-- below are used by Poundmaker Iron Confederacy; why robert bruce (taken from AGENDA_FLOWER_OF_SCOTLAND_WAR_NEIGHBORS)
--AGENDA_IRON_CONFEDERACY_FEW_ALLIANCES	StatementKey	ARGTYPE_IDENTITY	LOC_DIPLO_WARNING_LEADER_ROBERT_THE_BRUCE_REASON_ANY
--AGENDA_IRON_CONFEDERACY_MANY_ALLIANCES	StatementKey	ARGTYPE_IDENTITY	LOC_DIPLO_WARNING_LEADER_ROBERT_THE_BRUCE_REASON_ANY


-- 2019-01-01: based on mod "Hill Start Bias for Georgia" (lower number, stronger bias)
--DELETE FROM StartBiasTerrains WHERE CivilizationType = 'CIVILIZATION_GEORGIA';
--INSERT INTO StartBiasTerrains (CivilizationType, TerrainType, Tier) VALUES
--('CIVILIZATION_GEORGIA', 'TERRAIN_DESERT_HILLS', 3),
--('CIVILIZATION_GEORGIA', 'TERRAIN_GRASS_HILLS',  3),
--('CIVILIZATION_GEORGIA', 'TERRAIN_PLAINS_HILLS', 3);


--------------------------------------------------------------
-- BALANCE SECTION

-- Game pace (Eras)
UPDATE Eras_XP1 SET GameEraMinimumTurns = 60, GameEraMaximumTurns = 90 WHERE EraType = 'ERA_ANCIENT';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 50, GameEraMaximumTurns = 70 WHERE EraType = 'ERA_CLASSICAL';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 50, GameEraMaximumTurns = 70 WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 50, GameEraMaximumTurns = 70 WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 50, GameEraMaximumTurns = 70 WHERE EraType = 'ERA_INDUSTRIAL';


--------------------------------------------------------------
-- AI
/*
INSERT INTO AiFavoredItems (ListType, Item, Favored, Value, StringVal) VALUES
('StandardSettlePlot', 'Cultural Pressure', 0, 2, NULL); -- +1, other record removed as NOT WORKING
*/

-- test
-- Fixed with Gathering Storm Patch
--DELETE FROM GovernmentModifiers WHERE GovernmentType = 'GOVERNMENT_FASCISM' AND ModifierId = 'FASCISM_UNIT_PRODUCTION'; -- FASCISM_WAR_WEARINESS


-- test
--UPDATE Resolutions SET AILuaTargetChooser = 'WC_Choose_BorderControl' WHERE ResolutionType = 'WC_RES_BORDER_CONTROL';
--UPDATE Resolutions SET AILuaTargetChooser = 'WC_Choose_YieldBan'      WHERE ResolutionType = 'WC_RES_MERCENARY_COMPANIES';

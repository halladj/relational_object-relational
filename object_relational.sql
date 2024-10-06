--  Object Types:
---------------------------------------------------------
-- object Type: city_type
CREATE OR REPLACE TYPE city_type as OBJECT (
    id              INTEGER,
    nom             CHAR(50),
    postal_code     INTEGER
)

-- Object Type: team_type
CREATE OR REPLACE TYPE team_type AS OBJECT (
    id              INTEGER,
    nom             VARCHAR2(40),
    refManager      REF player_type,
    refChamp        REF championship_type,
    refCity         REF city_type
);
/

-- Object Type: championship_type
CREATE OR REPLACE TYPE championship_type AS OBJECT (
    id         INTEGER,
    date_debut DATE,
    date_fin   DATE,
    refTeam    REF team_type
)
/

-- Object Type: event_type
CREATE OR REPLACE TYPE event_type AS OBJECT (
    id        INTEGER,
    min       DATE,
    half      INTEGER,
    refPlayer    REF player_type,
    refMatch     REF match_type,
    kind      VARCHAR2(40)
);
/


-- Object Type: player_type
CREATE OR REPLACE TYPE player_type AS OBJECT (
    id         INTEGER,
    first_name VARCHAR2(50),
    last_name  VARCHAR2(50),
    nickname   CHAR(20),
    birthday   DATE,
    position   VARCHAR2(30),
    manager    CHAR(1),
    coach      BOOLEAN,
    refTeam    REF team_type
);
/

CREATE OR REPLACE TYPE refree_type AS OBJECT (
    id        INTEGER,
    name      VARCHAR2(50),
    role      VARCHAR2(40)
);
/

-- Object Type: match_type
CREATE OR REPLACE TYPE match_type AS OBJECT (
    id         INTEGER,
    date_match DATE,
    home_score INTEGER,
    away_score INTEGER,
    refHome    REF team_type,
    refAaway   REF team_type,
    dirige     refree_nested_table

);
/

CREATE OR REPLACE TYPE match_day_type AS OBJECT (
    refPlayer REF player_type,
    refMatch  REF match_type,
    refTeam   REF team_type,
    situation CHAR(30)

);
/


CREATE OR REPLACE TYPE match_championship_type AS OBJECT (
    refMatch   REF match_type,
    refChamp   REF championship_type
);
/






___________________________________________________________________
__ Nested Tables

CREATE OR REPLACE TYPE refree_nested_table AS TABLE OF refree_type;
/
----------------------------------------------------------------------



-- Table: championship


CREATE TABLE city OF city_type(
    CONSTRAINT pk_city PRIMARY KEY(id)
);


CREATE TABLE team OF team_type(
    CONSTRAINT pk_team PRIMARY KEY(id)
);


create table event of event_type(
    constraint pk_event primary key(id)
);

create table championship of championship_type(
    constraint pk_champ primary key(id)
);


create table player of player_type(
    constraint pk_player primary key(id)
);

create table match of match_type(
    constraint pk_match primary key(id)
);


create table match_day of match_day_type(
    constraint pk_match_day primary key(refPlayer, refMatch)
);

create table match_championship of match_championship_type(
    constraint pk_match_champ primary key(refMatch, refChamp)
);


--

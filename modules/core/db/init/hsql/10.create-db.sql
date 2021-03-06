-- begin KUKAZUE_TIER
create table KUKAZUE_TIER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ZUECHTERNUMMER varchar(255) not null,
    NAME varchar(255),
    GESCHLECHT varchar(50),
    GEBURTSTDATUM date not null,
    VATER_ID varchar(36),
    MUTTER_ID varchar(36),
    --
    primary key (ID)
)^
-- end KUKAZUE_TIER
-- begin KUKAZUE_TIER_FILE_DESCRIPTOR_LINK
create table KUKAZUE_TIER_FILE_DESCRIPTOR_LINK (
    TIER_ID varchar(36) not null,
    FILE_DESCRIPTOR_ID varchar(36) not null,
    primary key (TIER_ID, FILE_DESCRIPTOR_ID)
)^
-- end KUKAZUE_TIER_FILE_DESCRIPTOR_LINK
-- begin KUKAZUE_SHOW
create table KUKAZUE_SHOW (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITEL varchar(255),
    SHOW_DATUM date not null,
    --
    primary key (ID)
)^
-- end KUKAZUE_SHOW
-- begin KUKAZUE_SHOW_ERGEBNIS
create table KUKAZUE_SHOW_ERGEBNIS (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TIER_ID varchar(36) not null,
    PLATZIERUNG integer,
    TITEL varchar(255),
    SHOW_ID varchar(36) not null,
    --
    primary key (ID)
)^
-- end KUKAZUE_SHOW_ERGEBNIS

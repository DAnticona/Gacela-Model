/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     17/06/2019 06:01:05 PM                       */
/*==============================================================*/


IF EXISTS (SELECT 1
          FROM SYSOBJECTS
          WHERE ID = OBJECT_ID('TR_AUDIT_ASIG_PERF_SUB_MENU')
          AND TYPE = 'TR')
   DROP TRIGGER TR_AUDIT_ASIG_PERF_SUB_MENU
go

IF EXISTS (SELECT 1
          FROM SYSOBJECTS
          WHERE ID = OBJECT_ID('TR_AUDIT_ASIG_USUA_PERF')
          AND TYPE = 'TR')
   DROP TRIGGER TR_AUDIT_ASIG_USUA_PERF
go

IF EXISTS (SELECT 1
          FROM SYSOBJECTS
          WHERE ID = OBJECT_ID('TR_AUDIT_MENU')
          AND TYPE = 'TR')
   DROP TRIGGER TR_AUDIT_MENU
go

IF EXISTS (SELECT 1
          FROM SYSOBJECTS
          WHERE ID = OBJECT_ID('TR_AUDIT_PERF')
          AND TYPE = 'TR')
   DROP TRIGGER TR_AUDIT_PERF
go

IF EXISTS (SELECT 1
          FROM SYSOBJECTS
          WHERE ID = OBJECT_ID('TR_AUDIT_PERS')
          AND TYPE = 'TR')
   DROP TRIGGER TR_AUDIT_PERS
go

IF EXISTS (SELECT 1
          FROM SYSOBJECTS
          WHERE ID = OBJECT_ID('TR_AUDIT_SUB_MENU')
          AND TYPE = 'TR')
   DROP TRIGGER TR_AUDIT_SUB_MENU
go

IF EXISTS (SELECT 1
          FROM SYSOBJECTS
          WHERE ID = OBJECT_ID('TR_AUDIT_USUA')
          AND TYPE = 'TR')
   DROP TRIGGER TR_AUDIT_USUA
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('ASIG_PERF_SUB_MENU') AND O.NAME = 'FK_ASIG_PER_ASSOCIATI_PERF')
ALTER TABLE ASIG_PERF_SUB_MENU
   DROP CONSTRAINT FK_ASIG_PER_ASSOCIATI_PERF
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('ASIG_PERF_SUB_MENU') AND O.NAME = 'FK_ASIG_PER_ASSOCIATI_SUB_MENU')
ALTER TABLE ASIG_PERF_SUB_MENU
   DROP CONSTRAINT FK_ASIG_PER_ASSOCIATI_SUB_MENU
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('ASIG_USUA_PERF') AND O.NAME = 'FK_ASIG_USU_ASSOCIATI_PERF')
ALTER TABLE ASIG_USUA_PERF
   DROP CONSTRAINT FK_ASIG_USU_ASSOCIATI_PERF
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('ASIG_USUA_PERF') AND O.NAME = 'FK_ASIG_USU_ASSOCIATI_USUA')
ALTER TABLE ASIG_USUA_PERF
   DROP CONSTRAINT FK_ASIG_USU_ASSOCIATI_USUA
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('SUB_MENU') AND O.NAME = 'FK_SUB_MENU_ASSOCIATI_MENU')
ALTER TABLE SUB_MENU
   DROP CONSTRAINT FK_SUB_MENU_ASSOCIATI_MENU
go

IF EXISTS (SELECT 1
   FROM SYS.SYSREFERENCES R JOIN SYS.SYSOBJECTS O ON (O.ID = R.CONSTID AND O.TYPE = 'F')
   WHERE R.FKEYID = OBJECT_ID('USUA') AND O.NAME = 'FK_USUA_GENERALIZ_PERS')
ALTER TABLE USUA
   DROP CONSTRAINT FK_USUA_GENERALIZ_PERS
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('ASIG_PERF_SUB_MENU')
            AND   NAME  = 'PERF_CO_PERF_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX ASIG_PERF_SUB_MENU.PERF_CO_PERF_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('ASIG_PERF_SUB_MENU')
            AND   NAME  = 'SUB_MENU_CO_SUB_MENU_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX ASIG_PERF_SUB_MENU.SUB_MENU_CO_SUB_MENU_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('ASIG_PERF_SUB_MENU')
            AND   TYPE = 'U')
   DROP TABLE ASIG_PERF_SUB_MENU
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('ASIG_USUA_PERF')
            AND   NAME  = 'PERF_CO_PERF_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX ASIG_USUA_PERF.PERF_CO_PERF_FK
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('ASIG_USUA_PERF')
            AND   NAME  = 'USUA_CO_USUA_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX ASIG_USUA_PERF.USUA_CO_USUA_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('ASIG_USUA_PERF')
            AND   TYPE = 'U')
   DROP TABLE ASIG_USUA_PERF
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('MENU')
            AND   NAME  = 'MENU_U_CO_MENU'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX MENU.MENU_U_CO_MENU
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('MENU')
            AND   TYPE = 'U')
   DROP TABLE MENU
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PERF')
            AND   NAME  = 'PERF_U_NO_PERF'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PERF.PERF_U_NO_PERF
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PERF')
            AND   TYPE = 'U')
   DROP TABLE PERF
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('PERS')
            AND   NAME  = 'PERS_U_NU_DOCU'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX PERS.PERS_U_NU_DOCU
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('PERS')
            AND   TYPE = 'U')
   DROP TABLE PERS
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('SUB_MENU')
            AND   NAME  = 'SUBMENU_U_NO_SUBMENU'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX SUB_MENU.SUBMENU_U_NO_SUBMENU
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('SUB_MENU')
            AND   NAME  = 'MENU_CO_MENU_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX SUB_MENU.MENU_CO_MENU_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('SUB_MENU')
            AND   TYPE = 'U')
   DROP TABLE SUB_MENU
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('USUA')
            AND   NAME  = 'USUA_U_NO_USUA'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX USUA.USUA_U_NO_USUA
go

IF EXISTS (SELECT 1
            FROM  SYSINDEXES
           WHERE  ID    = OBJECT_ID('USUA')
            AND   NAME  = 'PERS_CO_PERS_FK'
            AND   INDID > 0
            AND   INDID < 255)
   DROP INDEX USUA.PERS_CO_PERS_FK
go

IF EXISTS (SELECT 1
            FROM  SYSOBJECTS
           WHERE  ID = OBJECT_ID('USUA')
            AND   TYPE = 'U')
   DROP TABLE USUA
go

/*==============================================================*/
/* Table: ASIG_PERF_SUB_MENU                                    */
/*==============================================================*/
CREATE TABLE ASIG_PERF_SUB_MENU (
   CO_MENU              CHAR(6)              NOT NULL,
   CO_SUB_MENU          CHAR(6)              NOT NULL,
   CO_PERF              CHAR(6)              NOT NULL,
   FG_ASIG              CHAR(1)              NULL DEFAULT 'N'
      CONSTRAINT CKC_FG_ASIG_ASIG_PER CHECK (FG_ASIG IS NULL OR (FG_ASIG = UPPER(FG_ASIG))),
   US_CREA              VARCHAR(20)          NULL
      CONSTRAINT CKC_US_CREA_ASIG_PER CHECK (US_CREA IS NULL OR (US_CREA = UPPER(US_CREA))),
   US_MODI              VARCHAR(20)          NULL
      CONSTRAINT CKC_US_MODI_ASIG_PER CHECK (US_MODI IS NULL OR (US_MODI = UPPER(US_MODI))),
   FE_CREA              DATETIME             NULL,
   FE_MODI              DATETIME             NULL,
   CONSTRAINT PK_ASIG_PERF_SUB_MENU PRIMARY KEY (CO_SUB_MENU, CO_MENU, CO_PERF)
)
go

/*==============================================================*/
/* Index: SUB_MENU_CO_SUB_MENU_FK                               */
/*==============================================================*/
CREATE INDEX SUB_MENU_CO_SUB_MENU_FK ON ASIG_PERF_SUB_MENU (
CO_SUB_MENU ASC,
CO_MENU ASC
)
go

/*==============================================================*/
/* Index: PERF_CO_PERF_FK                                       */
/*==============================================================*/
CREATE INDEX PERF_CO_PERF_FK ON ASIG_PERF_SUB_MENU (
CO_PERF ASC
)
go

/*==============================================================*/
/* Table: ASIG_USUA_PERF                                        */
/*==============================================================*/
CREATE TABLE ASIG_USUA_PERF (
   CO_USUA              CHAR(6)              NOT NULL,
   CO_PERF              CHAR(6)              NOT NULL,
   US_CREA              VARCHAR(20)          NULL,
   US_MODI              VARCHAR(20)          NULL,
   FE_CREA              DATETIME             NULL,
   FE_MODI              DATETIME             NULL,
   CONSTRAINT PK_ASIG_USUA_PERF PRIMARY KEY (CO_USUA, CO_PERF)
)
go

/*==============================================================*/
/* Index: USUA_CO_USUA_FK                                       */
/*==============================================================*/
CREATE INDEX USUA_CO_USUA_FK ON ASIG_USUA_PERF (
CO_USUA ASC
)
go

/*==============================================================*/
/* Index: PERF_CO_PERF_FK                                       */
/*==============================================================*/
CREATE INDEX PERF_CO_PERF_FK ON ASIG_USUA_PERF (
CO_PERF ASC
)
go

/*==============================================================*/
/* Table: MENU                                                  */
/*==============================================================*/
CREATE TABLE MENU (
   CO_MENU              CHAR(6)              NOT NULL,
   NO_MENU              VARCHAR(20)          NULL,
   ALIAS                VARCHAR(50)          NULL,
   RUTA                 VARCHAR(254)         NULL,
   US_CREA              VARCHAR(20)          NULL,
   US_MODI              VARCHAR(20)          NULL,
   FE_CREA              DATETIME             NULL,
   FE_MODI              DATETIME             NULL,
   CONSTRAINT PK_MENU PRIMARY KEY NONCLUSTERED (CO_MENU)
)
go

/*==============================================================*/
/* Index: MENU_U_CO_MENU                                        */
/*==============================================================*/
CREATE UNIQUE INDEX MENU_U_CO_MENU ON MENU (
NO_MENU ASC
)
go

/*==============================================================*/
/* Table: PERF                                                  */
/*==============================================================*/
CREATE TABLE PERF (
   CO_PERF              CHAR(6)              NOT NULL,
   NO_PERF              VARCHAR(20)          NOT NULL,
   US_CREA              VARCHAR(20)          NULL,
   US_MODI              VARCHAR(20)          NULL,
   FE_CREA              DATETIME             NULL,
   FE_MODI              DATETIME             NULL,
   CONSTRAINT PK_PERF PRIMARY KEY NONCLUSTERED (CO_PERF)
)
go

/*==============================================================*/
/* Index: PERF_U_NO_PERF                                        */
/*==============================================================*/
CREATE UNIQUE INDEX PERF_U_NO_PERF ON PERF (
NO_PERF ASC
)
go

/*==============================================================*/
/* Table: PERS                                                  */
/*==============================================================*/
CREATE TABLE PERS (
   CO_PERS              CHAR(6)              NOT NULL,
   NU_DOCU              VARCHAR(50)          NOT NULL
      CONSTRAINT CKC_NU_DOCU_PERS CHECK (NU_DOCU = UPPER(NU_DOCU)),
   NO_PERS              VARCHAR(254)         NOT NULL
      CONSTRAINT CKC_NO_PERS_PERS CHECK (NO_PERS = UPPER(NO_PERS)),
   AP_PATE              VARCHAR(254)         NOT NULL
      CONSTRAINT CKC_AP_PATE_PERS CHECK (AP_PATE = UPPER(AP_PATE)),
   AP_MATE              VARCHAR(254)         NULL
      CONSTRAINT CKC_AP_MATE_PERS CHECK (AP_MATE IS NULL OR (AP_MATE = UPPER(AP_MATE))),
   SEXO                 CHAR(1)              NOT NULL DEFAULT 'M'
      CONSTRAINT CKC_SEXO_PERS CHECK (SEXO = UPPER(SEXO)),
   FE_NACI              DATETIME             NULL,
   US_CREA              VARCHAR(20)          NULL DEFAULT SYSTEM_USER
      CONSTRAINT CKC_US_CREA_PERS CHECK (US_CREA IS NULL OR (US_CREA = UPPER(US_CREA))),
   US_MODI              VARCHAR(20)          NULL DEFAULT SYSTEM_USER
      CONSTRAINT CKC_US_MODI_PERS CHECK (US_MODI IS NULL OR (US_MODI = UPPER(US_MODI))),
   FE_CREA              DATETIME             NULL DEFAULT GETDATE(),
   FE_MODI              DATETIME             NULL DEFAULT GETDATE(),
   CONSTRAINT PK_PERS PRIMARY KEY NONCLUSTERED (CO_PERS)
)
go

/*==============================================================*/
/* Index: PERS_U_NU_DOCU                                        */
/*==============================================================*/
CREATE UNIQUE INDEX PERS_U_NU_DOCU ON PERS (
NU_DOCU ASC
)
go

/*==============================================================*/
/* Table: SUB_MENU                                              */
/*==============================================================*/
CREATE TABLE SUB_MENU (
   CO_MENU              CHAR(6)              NOT NULL,
   CO_SUB_MENU          CHAR(6)              NOT NULL,
   NO_SUB_MENU          VARCHAR(20)          NULL,
   AL_SUB_MENU          VARCHAR(50)          NULL,
   RUTA                 VARCHAR(254)         NULL,
   US_CREA              VARCHAR(20)          NULL,
   US_MODI              VARCHAR(20)          NULL,
   FE_CREA              DATETIME             NULL,
   FE_MODI              DATETIME             NULL,
   CONSTRAINT PK_SUB_MENU PRIMARY KEY NONCLUSTERED (CO_SUB_MENU, CO_MENU)
)
go

/*==============================================================*/
/* Index: MENU_CO_MENU_FK                                       */
/*==============================================================*/
CREATE INDEX MENU_CO_MENU_FK ON SUB_MENU (
CO_MENU ASC
)
go

/*==============================================================*/
/* Index: SUBMENU_U_NO_SUBMENU                                  */
/*==============================================================*/
CREATE UNIQUE INDEX SUBMENU_U_NO_SUBMENU ON SUB_MENU (
NO_SUB_MENU ASC
)
go

/*==============================================================*/
/* Table: USUA                                                  */
/*==============================================================*/
CREATE TABLE USUA (
   CO_USUA              CHAR(6)              NOT NULL,
   CO_PERS              CHAR(6)              NULL,
   NO_USUA              VARCHAR(20)          NOT NULL,
   FE_ULT_SES           DATETIME             NULL DEFAULT GETDATE(),
   US_CREA              VARCHAR(20)          NULL DEFAULT SYSTEM_USER
      CONSTRAINT CKC_US_CREA_USUA CHECK (US_CREA IS NULL OR (US_CREA = UPPER(US_CREA))),
   US_MODI              VARCHAR(20)          NULL DEFAULT SYSTEM_USER
      CONSTRAINT CKC_US_MODI_USUA CHECK (US_MODI IS NULL OR (US_MODI = UPPER(US_MODI))),
   FE_CREA              DATETIME             NULL DEFAULT GETDATE(),
   FE_MODI              DATETIME             NULL DEFAULT GETDATE(),
   CONSTRAINT PK_USUA PRIMARY KEY NONCLUSTERED (CO_USUA)
)
go

/*==============================================================*/
/* Index: PERS_CO_PERS_FK                                       */
/*==============================================================*/
CREATE INDEX PERS_CO_PERS_FK ON USUA (
CO_PERS ASC
)
go

/*==============================================================*/
/* Index: USUA_U_NO_USUA                                        */
/*==============================================================*/
CREATE UNIQUE INDEX USUA_U_NO_USUA ON USUA (
NO_USUA ASC
)
go

ALTER TABLE ASIG_PERF_SUB_MENU
   ADD CONSTRAINT FK_ASIG_PER_ASSOCIATI_PERF FOREIGN KEY (CO_PERF)
      REFERENCES PERF (CO_PERF)
go

ALTER TABLE ASIG_PERF_SUB_MENU
   ADD CONSTRAINT FK_ASIG_PER_ASSOCIATI_SUB_MENU FOREIGN KEY (CO_SUB_MENU, CO_MENU)
      REFERENCES SUB_MENU (CO_SUB_MENU, CO_MENU)
go

ALTER TABLE ASIG_USUA_PERF
   ADD CONSTRAINT FK_ASIG_USU_ASSOCIATI_PERF FOREIGN KEY (CO_PERF)
      REFERENCES PERF (CO_PERF)
go

ALTER TABLE ASIG_USUA_PERF
   ADD CONSTRAINT FK_ASIG_USU_ASSOCIATI_USUA FOREIGN KEY (CO_USUA)
      REFERENCES USUA (CO_USUA)
go

ALTER TABLE SUB_MENU
   ADD CONSTRAINT FK_SUB_MENU_ASSOCIATI_MENU FOREIGN KEY (CO_MENU)
      REFERENCES MENU (CO_MENU)
go

ALTER TABLE USUA
   ADD CONSTRAINT FK_USUA_GENERALIZ_PERS FOREIGN KEY (CO_PERS)
      REFERENCES PERS (CO_PERS)
go


CREATE TRIGGER TR_AUDIT_ASIG_PERF_SUB_MENU ON ASIG_PERF_SUB_MENU
AFTER INSERT, UPDATE AS
BEGIN
      
   DECLARE @INSERTFLAG TINYINT
   
    SELECT @INSERTFLAG = CASE
                            WHEN EXISTS ( SELECT 1 FROM DELETED )
                                THEN 0 
                            ELSE 1 
                         END
                         
    IF @INSERTFLAG = 0 
    BEGIN 
     
       UPDATE ASIG_PERF_SUB_MENU
           SET    US_MODI = (SELECT SYSTEM_USER),
                  FE_MODI = (SELECT GETDATE())
           FROM   INSERTED II,  
                  ASIG_PERF_SUB_MENU TAB  
           WHERE  II.CO_SUB_MENU = TAB.CO_SUB_MENU
            AND II.CO_PERF = TAB.CO_PERF; 
       
    END   
     
    ELSE 
    BEGIN 
     
       UPDATE ASIG_PERF_SUB_MENU
       SET    US_CREA = (SELECT SYSTEM_USER),
              US_MODI = (SELECT SYSTEM_USER), 
              FE_CREA = (SELECT GETDATE()), 
              FE_MODI = (SELECT GETDATE()) 
       FROM   INSERTED II,  
              ASIG_PERF_SUB_MENU TAB  
       WHERE  II.CO_SUB_MENU = TAB.CO_SUB_MENU
            AND II.CO_PERF = TAB.CO_PERF; 
       
    END 
   
END
go


CREATE TRIGGER TR_AUDIT_ASIG_USUA_PERF ON ASIG_USUA_PERF
AFTER INSERT, UPDATE AS
BEGIN
   
   DECLARE @INSERTFLAG TINYINT
   
    SELECT @INSERTFLAG = CASE
                            WHEN EXISTS ( SELECT 1 FROM DELETED )
                                THEN 0 
                            ELSE 1 
                         END
                         
    IF @INSERTFLAG = 0 
    BEGIN 
     
       UPDATE ASIG_USUA_PERF 
           SET    US_MODI = (SELECT SYSTEM_USER),
                  FE_MODI = (SELECT GETDATE())
           FROM   INSERTED II,  
                  ASIG_USUA_PERF TAB  
           WHERE  II.CO_USUA = TAB.CO_USUA
            AND II.CO_PERF = TAB.CO_PERF; 
       
    END   
     
    ELSE 
    BEGIN 
     
       UPDATE ASIG_USUA_PERF
       SET    US_CREA = (SELECT SYSTEM_USER),
              US_MODI = (SELECT SYSTEM_USER), 
              FE_CREA = (SELECT GETDATE()), 
              FE_MODI = (SELECT GETDATE()) 
       FROM   INSERTED II,  
              ASIG_USUA_PERF TAB  
       WHERE  II.CO_USUA = TAB.CO_USUA
        AND II.CO_PERF = TAB.CO_PERF; 
       
    END 
   
END
go


CREATE TRIGGER TR_AUDIT_MENU ON MENU
AFTER INSERT, UPDATE AS
BEGIN
      
   DECLARE @INSERTFLAG TINYINT
   
    SELECT @INSERTFLAG = CASE
                            WHEN EXISTS ( SELECT 1 FROM DELETED )
                                THEN 0 
                            ELSE 1 
                         END
                         
    IF @INSERTFLAG = 0 
    BEGIN 
     
       UPDATE MENU 
           SET    US_MODI = (SELECT SYSTEM_USER),
                  FE_MODI = (SELECT GETDATE())
           FROM   INSERTED II,  
                  MENU TAB  
           WHERE  II.CO_MENU = TAB.CO_MENU; 
       
    END   
     
    ELSE 
    BEGIN 
     
       UPDATE MENU
       SET    US_CREA = (SELECT SYSTEM_USER),
              US_MODI = (SELECT SYSTEM_USER), 
              FE_CREA = (SELECT GETDATE()), 
              FE_MODI = (SELECT GETDATE()) 
       FROM   INSERTED II,  
              MENU TAB  
       WHERE  II.CO_MENU = TAB.CO_MENU; 
       
    END 
   
END
go


CREATE TRIGGER TR_AUDIT_PERF ON PERF
AFTER INSERT, UPDATE AS
BEGIN
   
   DECLARE @INSERTFLAG TINYINT
   
    SELECT @INSERTFLAG = CASE
                            WHEN EXISTS ( SELECT 1 FROM DELETED )
                                THEN 0 
                            ELSE 1 
                         END
                         
    IF @INSERTFLAG = 0 
    BEGIN 
     
       UPDATE PERF 
           SET    US_MODI = (SELECT SYSTEM_USER),
                  FE_MODI = (SELECT GETDATE())
           FROM   INSERTED II,  
                  PERF TAB  
           WHERE  II.CO_PERF = TAB.CO_PERF; 
       
    END   
     
    ELSE 
    BEGIN 
     
       UPDATE PERF
       SET    US_CREA = (SELECT SYSTEM_USER),
              US_MODI = (SELECT SYSTEM_USER), 
              FE_CREA = (SELECT GETDATE()), 
              FE_MODI = (SELECT GETDATE()) 
       FROM   INSERTED II,  
              PERF TAB  
       WHERE  II.CO_PERF = TAB.CO_PERF; 
       
    END 
   
END
go


CREATE TRIGGER TR_AUDIT_PERS ON PERS
AFTER INSERT, UPDATE AS
BEGIN
   
   DECLARE @INSERTFLAG TINYINT
   
    SELECT @INSERTFLAG = CASE
                            WHEN EXISTS ( SELECT 1 FROM DELETED )
                                THEN 0 
                            ELSE 1 
                         END
                         
    IF @INSERTFLAG = 0 
    BEGIN 
     
       UPDATE PERS 
           SET    US_MODI = (SELECT SYSTEM_USER),
                  FE_MODI = (SELECT GETDATE())
           FROM   INSERTED II,  
                  PERS TAB  
           WHERE  II.CO_PERS = TAB.CO_PERS; 
       
    END   
     
    ELSE 
    BEGIN 
     
       UPDATE PERS
       SET    US_CREA = (SELECT SYSTEM_USER),
              US_MODI = (SELECT SYSTEM_USER), 
              FE_CREA = (SELECT GETDATE()), 
              FE_MODI = (SELECT GETDATE()) 
       FROM   INSERTED II,  
              PERS TAB  
       WHERE  II.CO_PERS = TAB.CO_PERS; 
       
    END 
   
END
go


CREATE TRIGGER TR_AUDIT_SUB_MENU ON SUB_MENU
AFTER INSERT, UPDATE AS
BEGIN
      
   DECLARE @INSERTFLAG TINYINT
   
    SELECT @INSERTFLAG = CASE
                            WHEN EXISTS ( SELECT 1 FROM DELETED )
                                THEN 0 
                            ELSE 1 
                         END
                         
    IF @INSERTFLAG = 0 
    BEGIN 
     
       UPDATE SUB_MENU 
           SET    US_MODI = (SELECT SYSTEM_USER),
                  FE_MODI = (SELECT GETDATE())
           FROM   INSERTED II,  
                  SUB_MENU TAB  
           WHERE  II.CO_SUB_MENU = TAB.CO_SUB_MENU; 
       
    END   
     
    ELSE 
    BEGIN 
     
       UPDATE SUB_MENU
       SET    US_CREA = (SELECT SYSTEM_USER),
              US_MODI = (SELECT SYSTEM_USER), 
              FE_CREA = (SELECT GETDATE()), 
              FE_MODI = (SELECT GETDATE()) 
       FROM   INSERTED II,  
              SUB_MENU TAB  
       WHERE  II.CO_SUB_MENU = TAB.CO_SUB_MENU; 
       
    END 
   
END
go


CREATE TRIGGER TR_AUDIT_USUA ON USUA
AFTER INSERT, UPDATE AS
BEGIN
   
   DECLARE @INSERTFLAG TINYINT
   
    SELECT @INSERTFLAG = CASE
                            WHEN EXISTS ( SELECT 1 FROM DELETED )
                                THEN 0 
                            ELSE 1 
                         END
                         
    IF @INSERTFLAG = 0 
    BEGIN 
     
       UPDATE USUA 
           SET    US_MODI = (SELECT SYSTEM_USER),
                  FE_MODI = (SELECT GETDATE())
           FROM   INSERTED II,  
                  USUA TAB  
           WHERE  II.CO_USUA = TAB.CO_USUA; 
       
    END   
     
    ELSE 
    BEGIN 
     
       UPDATE PERS
       SET    US_CREA = (SELECT SYSTEM_USER),
              US_MODI = (SELECT SYSTEM_USER), 
              FE_CREA = (SELECT GETDATE()), 
              FE_MODI = (SELECT GETDATE()) 
       FROM   INSERTED II,  
              USUA TAB  
       WHERE  II.CO_USUA = TAB.CO_USUA; 
       
    END 
   
END
go


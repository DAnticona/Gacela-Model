USE [GACELA]
--INSERTA PERSONA SUPERVISOR
INSERT INTO PERS (CO_PERS, NO_PERS, AP_PATE, NU_DOCU)
VALUES ('999999','SUPERVISOR','SUPERVISOR','99999999'
)
GO
--INSERTA USUARIO SUPERVISOR
INSERT INTO USUA (CO_USUA, NO_USUA, CO_PERS)
VALUES ('999999','SUPERVISOR','999999')
GO
--INSERTA MENU
INSERT INTO MENU (CO_MENU, ALIAS, NO_MENU)
VALUES ('000001','ADMINISTRACION DEL SISTEMA', 'ADMSYS')
GO
--INSERTA SUBMENU
INSERT INTO SUB_MENU (CO_MENU, CO_SUB_MENU, NO_SUB_MENU)
VALUES ('000001','000001', 'ACCESOS')
GO
--INSERTA PERFILES
INSERT INTO PERF(CO_PERF, NO_PERF)
VALUES ('000001', 'ADMINISTRADOR')
GO
INSERT INTO PERF(CO_PERF, NO_PERF)
VALUES ('999999','SUPERADMIN')
GO
--INSERTA ASIGNACION DE PERFIL A USUARIO SUPERVISOR - SUPERADMIN
INSERT INTO ASIG_USUA_PERF(CO_USUA, CO_PERF)
VALUES ('999999','999999')
GO
--INSERTA ASIGNACION DE SUBMENU CON PERFIL
INSERT INTO ASIG_PERF_SUB_MENU(CO_MENU, CO_SUB_MENU, CO_PERF)
VALUES('000001','000001','999999')
GO
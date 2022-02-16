--------------------------------------------------------
--  파일이 생성됨 - 일요일-6월-20-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOOK
--------------------------------------------------------

  CREATE TABLE "HR"."BOOK" 
   (	"REGISTRAITON_NUMBER" VARCHAR2(20 BYTE), 
	"LIBRARY_NUMBER" VARCHAR2(20 BYTE), 
	"ISBN" VARCHAR2(20 BYTE), 
	"BOOK_STATUS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BOOKINFORMATION
--------------------------------------------------------

  CREATE TABLE "HR"."BOOKINFORMATION" 
   (	"AUTHOR" VARCHAR2(20 BYTE), 
	"TITLE" VARCHAR2(20 BYTE), 
	"PUBLISHER" VARCHAR2(20 BYTE), 
	"PUBLICATION_YEAR" DATE, 
	"ISBN" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIBRARY
--------------------------------------------------------

  CREATE TABLE "HR"."LIBRARY" 
   (	"LIBRARY_NUMBER" VARCHAR2(20 BYTE), 
	"LIBRARY_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOAN
--------------------------------------------------------

  CREATE TABLE "HR"."LOAN" 
   (	"LOAN_NUMBER" VARCHAR2(20 BYTE), 
	"LOAN_DATE" DATE, 
	"RETURN_DATE" DATE, 
	"MEMBER_NUMBER" VARCHAR2(20 BYTE), 
	"OVERDUE_DATE" DATE, 
	"EXTENTION_DATE" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LOAN_BOOK
--------------------------------------------------------

  CREATE TABLE "HR"."LOAN_BOOK" 
   (	"REGISTRAITON_NUMBER" VARCHAR2(20 BYTE), 
	"LIBRARY_NUMBER" VARCHAR2(20 BYTE), 
	"LOAN_NUMBER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "HR"."MEMBER" 
   (	"MEMBER_NUMBER" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"PASSWORD" VARCHAR2(20 BYTE), 
	"LIBRARY_NUMBER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVATION
--------------------------------------------------------

  CREATE TABLE "HR"."RESERVATION" 
   (	"RESERVATION_NUMBER" VARCHAR2(20 BYTE), 
	"RESERVATION_DATE" DATE, 
	"MEMBER_NUMBER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESERVATION_BOOK
--------------------------------------------------------

  CREATE TABLE "HR"."RESERVATION_BOOK" 
   (	"REGISTRAITON_NUMBER" VARCHAR2(20 BYTE), 
	"LIBRARY_NUMBER" VARCHAR2(20 BYTE), 
	"RESERVATION_NUMBER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into HR.BOOK
SET DEFINE OFF;
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('826509','1','8990317045:','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('1401665','2','9788963394848:','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('1401666','2','9788963394848:','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('826510','2','8990317045:','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('1407380','2','9791195058792:','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('1407381','2','9791195058792:','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('941398','2','893748076X','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('941399','2','893748076X','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('1349972','1','9791195567805:','1');
Insert into HR.BOOK (REGISTRAITON_NUMBER,LIBRARY_NUMBER,ISBN,BOOK_STATUS) values ('1349973','1','9791195567805:','1');
REM INSERTING into HR.BOOKINFORMATION
SET DEFINE OFF;
Insert into HR.BOOKINFORMATION (AUTHOR,TITLE,PUBLISHER,PUBLICATION_YEAR,ISBN) values ('ABC','창이','asd',to_date('95/06/01','RR/MM/DD'),'123456789:');
Insert into HR.BOOKINFORMATION (AUTHOR,TITLE,PUBLISHER,PUBLICATION_YEAR,ISBN) values ('호세 카를로스','이데아의 동굴','민음사',to_date('05/06/01','RR/MM/DD'),'893748076X');
Insert into HR.BOOKINFORMATION (AUTHOR,TITLE,PUBLISHER,PUBLICATION_YEAR,ISBN) values ('호세 리살','꽃중의 꽃 호세','동안',to_date('17/06/01','RR/MM/DD'),'9791195058792:');
Insert into HR.BOOKINFORMATION (AUTHOR,TITLE,PUBLISHER,PUBLICATION_YEAR,ISBN) values ('호세 마리아 아','호세 마리아','HBM협동조합',to_date('16/06/01','RR/MM/DD'),'9791195567805:');
Insert into HR.BOOKINFORMATION (AUTHOR,TITLE,PUBLISHER,PUBLICATION_YEAR,ISBN) values ('[동행 동인]','꽃, 피다','책나무',to_date('16/06/01','RR/MM/DD'),'9788963394848:');
Insert into HR.BOOKINFORMATION (AUTHOR,TITLE,PUBLISHER,PUBLICATION_YEAR,ISBN) values ('경허 스님','마음 꽃','고요아침',to_date('02/06/01','RR/MM/DD'),'8990317045:');
REM INSERTING into HR.LIBRARY
SET DEFINE OFF;
Insert into HR.LIBRARY (LIBRARY_NUMBER,LIBRARY_NAME) values ('1','x도서관');
Insert into HR.LIBRARY (LIBRARY_NUMBER,LIBRARY_NAME) values ('2','x도서관');
Insert into HR.LIBRARY (LIBRARY_NUMBER,LIBRARY_NAME) values ('3','x도서관');
Insert into HR.LIBRARY (LIBRARY_NUMBER,LIBRARY_NAME) values ('4','x도서관');
REM INSERTING into HR.LOAN
SET DEFINE OFF;
REM INSERTING into HR.LOAN_BOOK
SET DEFINE OFF;
REM INSERTING into HR.MEMBER
SET DEFINE OFF;
REM INSERTING into HR.RESERVATION
SET DEFINE OFF;
REM INSERTING into HR.RESERVATION_BOOK
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index XPKBOOK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKBOOK" ON "HR"."BOOK" ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index XPKBOOK_INFORMATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKBOOK_INFORMATION" ON "HR"."BOOKINFORMATION" ("ISBN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index XPKLIBRARY
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKLIBRARY" ON "HR"."LIBRARY" ("LIBRARY_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index XPKLOAN
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKLOAN" ON "HR"."LOAN" ("LOAN_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index XPKLOAN_BOOK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKLOAN_BOOK" ON "HR"."LOAN_BOOK" ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER", "LOAN_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index XPKMEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKMEMBER" ON "HR"."MEMBER" ("MEMBER_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index XPKRESERVATION
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKRESERVATION" ON "HR"."RESERVATION" ("RESERVATION_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index XPKRESERVATION_BOOK
--------------------------------------------------------

  CREATE UNIQUE INDEX "HR"."XPKRESERVATION_BOOK" ON "HR"."RESERVATION_BOOK" ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER", "RESERVATION_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TD_BOOK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TD_BOOK" AFTER DELETE ON Book for each row
-- erwin Builtin Trigger
-- DELETE trigger on Book 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Book  Loan_Book on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00022f29", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Registraiton_Number""Library_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Loan_Book
      WHERE
        /*  %JoinFKPK(Loan_Book,:%Old," = "," AND") */
        Loan_Book.Registraiton_Number = :old.Registraiton_Number AND
        Loan_Book.Library_Number = :old.Library_Number;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Book because Loan_Book exists.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Book  Reservation_Book on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Registraiton_Number""Library_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Reservation_Book
      WHERE
        /*  %JoinFKPK(Reservation_Book,:%Old," = "," AND") */
        Reservation_Book.Registraiton_Number = :old.Registraiton_Number AND
        Reservation_Book.Library_Number = :old.Library_Number;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Book because Reservation_Book exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TD_BOOK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_BOOK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TI_BOOK" BEFORE INSERT ON Book for each row
-- erwin Builtin Trigger
-- INSERT trigger on Book 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* BookInformation  Book on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0001f48c", PARENT_OWNER="", PARENT_TABLE="BookInformation"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ISBN" */
    SELECT count(*) INTO NUMROWS
      FROM BookInformation
      WHERE
        /* %JoinFKPK(:%New,BookInformation," = "," AND") */
        :new.ISBN = BookInformation.ISBN;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Book because BookInformation does not exist.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Library  Book on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Library_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Library
      WHERE
        /* %JoinFKPK(:%New,Library," = "," AND") */
        :new.Library_Number = Library.Library_Number;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Book because Library does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TI_BOOK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_BOOK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_BOOK" AFTER UPDATE ON Book for each row
-- erwin Builtin Trigger
-- UPDATE trigger on Book 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Book  Loan_Book on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0004d715", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Registraiton_Number""Library_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Registraiton_Number <> :new.Registraiton_Number OR 
    :old.Library_Number <> :new.Library_Number
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Loan_Book
      WHERE
        /*  %JoinFKPK(Loan_Book,:%Old," = "," AND") */
        Loan_Book.Registraiton_Number = :old.Registraiton_Number AND
        Loan_Book.Library_Number = :old.Library_Number;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Book because Loan_Book exists.'
      );
    END IF;
  END IF;

  /* erwin Builtin Trigger */
  /* Book  Reservation_Book on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Registraiton_Number""Library_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Registraiton_Number <> :new.Registraiton_Number OR 
    :old.Library_Number <> :new.Library_Number
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Reservation_Book
      WHERE
        /*  %JoinFKPK(Reservation_Book,:%Old," = "," AND") */
        Reservation_Book.Registraiton_Number = :old.Registraiton_Number AND
        Reservation_Book.Library_Number = :old.Library_Number;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Book because Reservation_Book exists.'
      );
    END IF;
  END IF;

  /* erwin Builtin Trigger */
  /* BookInformation  Book on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="BookInformation"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ISBN" */
  SELECT count(*) INTO NUMROWS
    FROM BookInformation
    WHERE
      /* %JoinFKPK(:%New,BookInformation," = "," AND") */
      :new.ISBN = BookInformation.ISBN;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Book because BookInformation does not exist.'
    );
  END IF;

  /* erwin Builtin Trigger */
  /* Library  Book on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Library_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Library
    WHERE
      /* %JoinFKPK(:%New,Library," = "," AND") */
      :new.Library_Number = Library.Library_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Book because Library does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_BOOK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_BOOKINFORMATION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TD_BOOKINFORMATION" AFTER DELETE ON BookInformation for each row
-- erwin Builtin Trigger
-- DELETE trigger on BookInformation 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* BookInformation  Book on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000cac5", PARENT_OWNER="", PARENT_TABLE="BookInformation"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ISBN" */
    SELECT count(*) INTO NUMROWS
      FROM Book
      WHERE
        /*  %JoinFKPK(Book,:%Old," = "," AND") */
        Book.ISBN = :old.ISBN;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete BookInformation because Book exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TD_BOOKINFORMATION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_BOOKINFORMATION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_BOOKINFORMATION" AFTER UPDATE ON BookInformation for each row
-- erwin Builtin Trigger
-- UPDATE trigger on BookInformation 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* BookInformation  Book on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0000eef8", PARENT_OWNER="", PARENT_TABLE="BookInformation"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="ISBN" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.ISBN <> :new.ISBN
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Book
      WHERE
        /*  %JoinFKPK(Book,:%Old," = "," AND") */
        Book.ISBN = :old.ISBN;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update BookInformation because Book exists.'
      );
    END IF;
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_BOOKINFORMATION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_LIBRARY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TD_LIBRARY" AFTER DELETE ON Library for each row
-- erwin Builtin Trigger
-- DELETE trigger on Library 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Library  Book on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00019bdb", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Library_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Book
      WHERE
        /*  %JoinFKPK(Book,:%Old," = "," AND") */
        Book.Library_Number = :old.Library_Number;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Library because Book exists.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Library  Member on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="Library_Number" */
    UPDATE Member
      SET
        /* %SetFK(Member,NULL) */
        Member.Library_Number = NULL
      WHERE
        /* %JoinFKPK(Member,:%Old," = "," AND") */
        Member.Library_Number = :old.Library_Number;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TD_LIBRARY" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_LIBRARY
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_LIBRARY" AFTER UPDATE ON Library for each row
-- erwin Builtin Trigger
-- UPDATE trigger on Library 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Library  Book on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0001f738", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="Library_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Library_Number <> :new.Library_Number
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Book
      WHERE
        /*  %JoinFKPK(Book,:%Old," = "," AND") */
        Book.Library_Number = :old.Library_Number;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Library because Book exists.'
      );
    END IF;
  END IF;

  /* Library  Member on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="Library_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Library_Number <> :new.Library_Number
  THEN
    UPDATE Member
      SET
        /* %SetFK(Member,NULL) */
        Member.Library_Number = NULL
      WHERE
        /* %JoinFKPK(Member,:%Old," = ",",") */
        Member.Library_Number = :old.Library_Number;
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_LIBRARY" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_LOAN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TD_LOAN" AFTER DELETE ON Loan for each row
-- erwin Builtin Trigger
-- DELETE trigger on Loan 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Loan  Loan_Book on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000da5e", PARENT_OWNER="", PARENT_TABLE="Loan"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Loan_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Loan_Book
      WHERE
        /*  %JoinFKPK(Loan_Book,:%Old," = "," AND") */
        Loan_Book.Loan_Number = :old.Loan_Number;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Loan because Loan_Book exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TD_LOAN" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_LOAN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TI_LOAN" BEFORE INSERT ON Loan for each row
-- erwin Builtin Trigger
-- INSERT trigger on Loan 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Member  Loan on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000e3db", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Loan"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="Member_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Member
      WHERE
        /* %JoinFKPK(:%New,Member," = "," AND") */
        :new.Member_Number = Member.Member_Number;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Loan because Member does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TI_LOAN" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_LOAN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_LOAN" AFTER UPDATE ON Loan for each row
-- erwin Builtin Trigger
-- UPDATE trigger on Loan 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Loan  Loan_Book on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000205d7", PARENT_OWNER="", PARENT_TABLE="Loan"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Loan_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Loan_Number <> :new.Loan_Number
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Loan_Book
      WHERE
        /*  %JoinFKPK(Loan_Book,:%Old," = "," AND") */
        Loan_Book.Loan_Number = :old.Loan_Number;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Loan because Loan_Book exists.'
      );
    END IF;
  END IF;

  /* erwin Builtin Trigger */
  /* Member  Loan on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Loan"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="Member_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Member
    WHERE
      /* %JoinFKPK(:%New,Member," = "," AND") */
      :new.Member_Number = Member.Member_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Loan because Member does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_LOAN" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_LOAN_BOOK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TI_LOAN_BOOK" BEFORE INSERT ON Loan_Book for each row
-- erwin Builtin Trigger
-- INSERT trigger on Loan_Book 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Loan  Loan_Book on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00020ae4", PARENT_OWNER="", PARENT_TABLE="Loan"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Loan_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Loan
      WHERE
        /* %JoinFKPK(:%New,Loan," = "," AND") */
        :new.Loan_Number = Loan.Loan_Number;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Loan_Book because Loan does not exist.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Book  Loan_Book on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Registraiton_Number""Library_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Book
      WHERE
        /* %JoinFKPK(:%New,Book," = "," AND") */
        :new.Registraiton_Number = Book.Registraiton_Number AND
        :new.Library_Number = Book.Library_Number;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Loan_Book because Book does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TI_LOAN_BOOK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_LOAN_BOOK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_LOAN_BOOK" AFTER UPDATE ON Loan_Book for each row
-- erwin Builtin Trigger
-- UPDATE trigger on Loan_Book 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Loan  Loan_Book on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00020656", PARENT_OWNER="", PARENT_TABLE="Loan"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="Loan_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Loan
    WHERE
      /* %JoinFKPK(:%New,Loan," = "," AND") */
      :new.Loan_Number = Loan.Loan_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Loan_Book because Loan does not exist.'
    );
  END IF;

  /* erwin Builtin Trigger */
  /* Book  Loan_Book on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Loan_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="Registraiton_Number""Library_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Book
    WHERE
      /* %JoinFKPK(:%New,Book," = "," AND") */
      :new.Registraiton_Number = Book.Registraiton_Number AND
      :new.Library_Number = Book.Library_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Loan_Book because Book does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_LOAN_BOOK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_MEMBER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TD_MEMBER" AFTER DELETE ON Member for each row
-- erwin Builtin Trigger
-- DELETE trigger on Member 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Member  Reservation on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0001c9f9", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Reservation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Member_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Reservation
      WHERE
        /*  %JoinFKPK(Reservation,:%Old," = "," AND") */
        Reservation.Member_Number = :old.Member_Number;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Member because Reservation exists.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Member  Loan on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Loan"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="Member_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Loan
      WHERE
        /*  %JoinFKPK(Loan,:%Old," = "," AND") */
        Loan.Member_Number = :old.Member_Number;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Member because Loan exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TD_MEMBER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_MEMBER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TI_MEMBER" BEFORE INSERT ON Member for each row
-- erwin Builtin Trigger
-- INSERT trigger on Member 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Library  Member on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0000ea00", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="Library_Number" */
    UPDATE Member
      SET
        /* %SetFK(Member,NULL) */
        Member.Library_Number = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Library
            WHERE
              /* %JoinFKPK(:%New,Library," = "," AND") */
              :new.Library_Number = Library.Library_Number
        ) 
        /* %JoinPKPK(Member,:%New," = "," AND") */
         and Member.Member_Number = :new.Member_Number;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TI_MEMBER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_MEMBER
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_MEMBER" AFTER UPDATE ON Member for each row
-- erwin Builtin Trigger
-- UPDATE trigger on Member 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Member  Reservation on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000339ff", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Reservation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Member_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Member_Number <> :new.Member_Number
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Reservation
      WHERE
        /*  %JoinFKPK(Reservation,:%Old," = "," AND") */
        Reservation.Member_Number = :old.Member_Number;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Member because Reservation exists.'
      );
    END IF;
  END IF;

  /* erwin Builtin Trigger */
  /* Member  Loan on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Loan"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_52", FK_COLUMNS="Member_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Member_Number <> :new.Member_Number
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Loan
      WHERE
        /*  %JoinFKPK(Loan,:%Old," = "," AND") */
        Loan.Member_Number = :old.Member_Number;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Member because Loan exists.'
      );
    END IF;
  END IF;

  /* erwin Builtin Trigger */
  /* Library  Member on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Library"
    CHILD_OWNER="", CHILD_TABLE="Member"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="Library_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Library
    WHERE
      /* %JoinFKPK(:%New,Library," = "," AND") */
      :new.Library_Number = Library.Library_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.Library_Number IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Member because Library does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_MEMBER" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TD_RESERVATION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TD_RESERVATION" AFTER DELETE ON Reservation for each row
-- erwin Builtin Trigger
-- DELETE trigger on Reservation 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Reservation  Reservation_Book on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f990", PARENT_OWNER="", PARENT_TABLE="Reservation"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Reservation_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Reservation_Book
      WHERE
        /*  %JoinFKPK(Reservation_Book,:%Old," = "," AND") */
        Reservation_Book.Reservation_Number = :old.Reservation_Number;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Reservation because Reservation_Book exists.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TD_RESERVATION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_RESERVATION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TI_RESERVATION" BEFORE INSERT ON Reservation for each row
-- erwin Builtin Trigger
-- INSERT trigger on Reservation 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Member  Reservation on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000eba5", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Reservation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Member_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Member
      WHERE
        /* %JoinFKPK(:%New,Member," = "," AND") */
        :new.Member_Number = Member.Member_Number;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Reservation because Member does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TI_RESERVATION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_RESERVATION
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_RESERVATION" AFTER UPDATE ON Reservation for each row
-- erwin Builtin Trigger
-- UPDATE trigger on Reservation 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Reservation  Reservation_Book on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00022863", PARENT_OWNER="", PARENT_TABLE="Reservation"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Reservation_Number" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.Reservation_Number <> :new.Reservation_Number
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Reservation_Book
      WHERE
        /*  %JoinFKPK(Reservation_Book,:%Old," = "," AND") */
        Reservation_Book.Reservation_Number = :old.Reservation_Number;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Reservation because Reservation_Book exists.'
      );
    END IF;
  END IF;

  /* erwin Builtin Trigger */
  /* Member  Reservation on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Member"
    CHILD_OWNER="", CHILD_TABLE="Reservation"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_53", FK_COLUMNS="Member_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Member
    WHERE
      /* %JoinFKPK(:%New,Member," = "," AND") */
      :new.Member_Number = Member.Member_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Reservation because Member does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_RESERVATION" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TI_RESERVATION_BOOK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TI_RESERVATION_BOOK" BEFORE INSERT ON Reservation_Book for each row
-- erwin Builtin Trigger
-- INSERT trigger on Reservation_Book 
DECLARE NUMROWS INTEGER;
BEGIN
    /* erwin Builtin Trigger */
    /* Reservation  Reservation_Book on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="000236a7", PARENT_OWNER="", PARENT_TABLE="Reservation"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Reservation_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Reservation
      WHERE
        /* %JoinFKPK(:%New,Reservation," = "," AND") */
        :new.Reservation_Number = Reservation.Reservation_Number;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Reservation_Book because Reservation does not exist.'
      );
    END IF;

    /* erwin Builtin Trigger */
    /* Book  Reservation_Book on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Registraiton_Number""Library_Number" */
    SELECT count(*) INTO NUMROWS
      FROM Book
      WHERE
        /* %JoinFKPK(:%New,Book," = "," AND") */
        :new.Registraiton_Number = Book.Registraiton_Number AND
        :new.Library_Number = Book.Library_Number;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Reservation_Book because Book does not exist.'
      );
    END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TI_RESERVATION_BOOK" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TU_RESERVATION_BOOK
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "HR"."TU_RESERVATION_BOOK" AFTER UPDATE ON Reservation_Book for each row
-- erwin Builtin Trigger
-- UPDATE trigger on Reservation_Book 
DECLARE NUMROWS INTEGER;
BEGIN
  /* erwin Builtin Trigger */
  /* Reservation  Reservation_Book on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0002310c", PARENT_OWNER="", PARENT_TABLE="Reservation"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="Reservation_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Reservation
    WHERE
      /* %JoinFKPK(:%New,Reservation," = "," AND") */
      :new.Reservation_Number = Reservation.Reservation_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Reservation_Book because Reservation does not exist.'
    );
  END IF;

  /* erwin Builtin Trigger */
  /* Book  Reservation_Book on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Book"
    CHILD_OWNER="", CHILD_TABLE="Reservation_Book"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="Registraiton_Number""Library_Number" */
  SELECT count(*) INTO NUMROWS
    FROM Book
    WHERE
      /* %JoinFKPK(:%New,Book," = "," AND") */
      :new.Registraiton_Number = Book.Registraiton_Number AND
      :new.Library_Number = Book.Library_Number;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Reservation_Book because Book does not exist.'
    );
  END IF;


-- erwin Builtin Trigger
END;

/
ALTER TRIGGER "HR"."TU_RESERVATION_BOOK" ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."BOOK" MODIFY ("REGISTRAITON_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."BOOK" MODIFY ("LIBRARY_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."BOOK" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "XPKBOOK" PRIMARY KEY ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOOKINFORMATION
--------------------------------------------------------

  ALTER TABLE "HR"."BOOKINFORMATION" MODIFY ("ISBN" NOT NULL ENABLE);
  ALTER TABLE "HR"."BOOKINFORMATION" ADD CONSTRAINT "XPKBOOK_INFORMATION" PRIMARY KEY ("ISBN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LIBRARY
--------------------------------------------------------

  ALTER TABLE "HR"."LIBRARY" MODIFY ("LIBRARY_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."LIBRARY" ADD CONSTRAINT "XPKLIBRARY" PRIMARY KEY ("LIBRARY_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOAN
--------------------------------------------------------

  ALTER TABLE "HR"."LOAN" MODIFY ("LOAN_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOAN" MODIFY ("MEMBER_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOAN" ADD CONSTRAINT "XPKLOAN" PRIMARY KEY ("LOAN_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LOAN_BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."LOAN_BOOK" MODIFY ("REGISTRAITON_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOAN_BOOK" MODIFY ("LIBRARY_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOAN_BOOK" MODIFY ("LOAN_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."LOAN_BOOK" ADD CONSTRAINT "XPKLOAN_BOOK" PRIMARY KEY ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER", "LOAN_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBER" MODIFY ("MEMBER_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."MEMBER" ADD CONSTRAINT "XPKMEMBER" PRIMARY KEY ("MEMBER_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION" MODIFY ("RESERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION" MODIFY ("MEMBER_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION" ADD CONSTRAINT "XPKRESERVATION" PRIMARY KEY ("RESERVATION_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table RESERVATION_BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION_BOOK" MODIFY ("REGISTRAITON_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_BOOK" MODIFY ("LIBRARY_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_BOOK" MODIFY ("RESERVATION_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "HR"."RESERVATION_BOOK" ADD CONSTRAINT "XPKRESERVATION_BOOK" PRIMARY KEY ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER", "RESERVATION_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "R_50" FOREIGN KEY ("LIBRARY_NUMBER")
	  REFERENCES "HR"."LIBRARY" ("LIBRARY_NUMBER") ENABLE;
  ALTER TABLE "HR"."BOOK" ADD CONSTRAINT "R_51" FOREIGN KEY ("ISBN")
	  REFERENCES "HR"."BOOKINFORMATION" ("ISBN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOAN
--------------------------------------------------------

  ALTER TABLE "HR"."LOAN" ADD CONSTRAINT "R_52" FOREIGN KEY ("MEMBER_NUMBER")
	  REFERENCES "HR"."MEMBER" ("MEMBER_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LOAN_BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."LOAN_BOOK" ADD CONSTRAINT "R_55" FOREIGN KEY ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER")
	  REFERENCES "HR"."BOOK" ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER") ENABLE;
  ALTER TABLE "HR"."LOAN_BOOK" ADD CONSTRAINT "R_56" FOREIGN KEY ("LOAN_NUMBER")
	  REFERENCES "HR"."LOAN" ("LOAN_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "HR"."MEMBER" ADD CONSTRAINT "R_49" FOREIGN KEY ("LIBRARY_NUMBER")
	  REFERENCES "HR"."LIBRARY" ("LIBRARY_NUMBER") ON DELETE SET NULL ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION" ADD CONSTRAINT "R_53" FOREIGN KEY ("MEMBER_NUMBER")
	  REFERENCES "HR"."MEMBER" ("MEMBER_NUMBER") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVATION_BOOK
--------------------------------------------------------

  ALTER TABLE "HR"."RESERVATION_BOOK" ADD CONSTRAINT "R_54" FOREIGN KEY ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER")
	  REFERENCES "HR"."BOOK" ("REGISTRAITON_NUMBER", "LIBRARY_NUMBER") ENABLE;
  ALTER TABLE "HR"."RESERVATION_BOOK" ADD CONSTRAINT "R_57" FOREIGN KEY ("RESERVATION_NUMBER")
	  REFERENCES "HR"."RESERVATION" ("RESERVATION_NUMBER") ENABLE;

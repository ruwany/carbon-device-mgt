CREATE TABLE IF NOT EXISTS APPM_APPLICATION_TYPE (
             ID INTEGER AUTO_INCREMENT,
             NAME VARCHAR (255),
			DESCRIPTION TEXT,
             CODE VARCHAR (255),
             PARAMTERS LONGTEXT,
             PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS APPM_APPLICATION_CATEGORY (
             ID INTEGER AUTO_INCREMENT,
             NAME VARCHAR (255),
             DESCRIPTION TEXT,
             PRIMARY KEY (ID)
);


CREATE TABLE IF NOT EXISTS APPM_APPLICATION (
             ID INTEGER AUTO_INCREMENT,
             NAME VARCHAR (255),
             UUID VARCHAR (255),
             DESCRIPTION MEDIUMTEXT,
             ICON_NAME VARCHAR (255),
             BANNER_NAME VARCHAR (255),
             VIDEO_NAME VARCHAR (255),
             SCREENSHOTS TEXT,
             TAGS TEXT,
             APPLICATION_TYPE_ID INTEGER,
             CATEGORY_ID INTEGER,
             CREATED_AT DATETIME,
             MODIFIED_AT DATETIME,
             PRIMARY KEY (ID),
             FOREIGN KEY (CATEGORY_ID) REFERENCES APPM_APPLICATION_CATEGORY(ID),
             FOREIGN KEY (APPLICATION_TYPE_ID) REFERENCES APPM_APPLICATION_TYPE(ID)
);


CREATE TABLE IF NOT EXISTS APPM_APPLICATION_PROPERTIES (
             PROP_KEY VARCHAR (255),
             PROP_VAL MEDIUMTEXT,
             APPLICATION_ID INTEGER,
             PRIMARY KEY (APPLICATION_ID, PROP_KEY),
             FOREIGN KEY (APPLICATION_ID) REFERENCES APPM_APPLICATION(ID)
);
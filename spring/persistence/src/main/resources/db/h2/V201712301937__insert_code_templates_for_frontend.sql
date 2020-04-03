-- all templates for category FRONTEND
INSERT INTO CATEGORY (NAME) VALUES ('FRONTEND');
INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'.all.html', 'webclient/all.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/viewcomponents/', true, false, true, 'DOMAIN', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

-- DOMAIN
INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'AllCtrl.js', 'webclient/AllCtrl.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/viewcomponents/', true, false, true, 'DOMAIN', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);	
	
INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'.single.html', 'webclient/single.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/viewcomponents/', true, false, true, 'DOMAIN', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'SingleCtrl.js', 'webclient/SingleCtrl.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/viewcomponents/', true, false, true, 'DOMAIN', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'.routes.js', 'webclient/routes.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/viewcomponents/', true, false, true, 'DOMAIN', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'.module.js', 'webclient/module.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/viewcomponents/', true, false, true, 'DOMAIN', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'.connector.factory.js', 'webclient/connector.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/shared/restfacade/', false, false, true, 'DOMAIN', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

-- ADDITIONAL_CONTENT
INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'index.html', 'webclient/scripts.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/', false, false, false, 'ADDITIONAL_CONTENT', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'app.module.js', 'webclient/app.module.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/', false, false, false, 'ADDITIONAL_CONTENT', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'menu.html', 'webclient/menu.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/', false, false, false, 'ADDITIONAL_CONTENT', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'translations-de-DE.json', 'webclient/translations-de-DE.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/localization/', false, false, false, 'ADDITIONAL_CONTENT', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE (
	FILE_NAME_SUFFIX, TEMPLATE_PATH, TARGET_PATH, CREATE_DOMAIN_DIR, FIRST_UPPER, LOWER_CASE, TEMPLATE_TYPE, CATEGORY_ID
	) VALUES (
	'translations-en-US.json', 'webclient/translations-en-US.ftl', '${projecthome}/${project.targetPath}/${project.title}/webclient/src/main/webapp/localization/', false, false, false, 'ADDITIONAL_CONTENT', 
	SELECT ID FROM CATEGORY WHERE NAME LIKE 'FRONTEND'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE '.all.html',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE 'AllCtrl.js',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE '.single.html',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE 'SingleCtrl.js',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE '.routes.js',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE '.module.js',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE '.connector.factory.js',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE 'index.html',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE 'app.module.js',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE 'menu.html',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE 'translations-de-DE.json',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);

INSERT INTO CODETEMPLATE_PROJECT (
	CODETEMPLATE_ID, PROJECT_ID
) VALUES (
	SELECT ID FROM CODETEMPLATE WHERE FILE_NAME_SUFFIX LIKE 'translations-en-US.json',
	SELECT ID FROM PROJECT WHERE TITLE LIKE 'CompetencyMatrix'
);


TABLE_ (USERS_ALLOWED)
   INT_    (ID_USER) PRIMARY_KEY AUTO_INCREMENT
   STRING_ (LOGIN, 30) SQLDEFAULT("") NOT_NULL UNIQUE
   STRING_ (PASS ,200) SQLDEFAULT("") NOT_NULL
   INT_    (RIGHT) SQLDEFAULT(0)
END_TABLE

TABLE_ (FILES_UPLOADED)
	INT_	(ID_FILE) PRIMARY_KEY AUTO_INCREMENT
	INT_	(FILE_OWNER) REFERENCES_CASCADE_ (USERS_ALLOWED,ID_USER)
	DOUBLE_ (FILE_SIZE) SQLDEFAULT(0)
	STRING_ (PATH, 200) SQLDEFAULT("") NOT_NULL UNIQUE
	STRING_	(NAME, 70) SQLDEFAULT("") NOT_NULL
END_TABLE

TABLE_ (FILES_URL)
	INT_ (ID_URL) PRIMARY_KEY AUTO_INCREMENT
	
	INT_ (FILE)    REFERENCES_CASCADE_ (FILES_UPLOADED,ID_FILE)
	INT_ (CREATOR) REFERENCES_CASCADE_ (USER_ALLOWED,ID_USER)
	
	STRING_ (URL,40) SQLDEFAULT("") NOT_NULL UNIQUE
	INT_ (DOWNLOAD_NUMBER) SQLDEFAULT(1)
END_TABLE
	
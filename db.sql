DROP TABLE IF EXISTS document;
DROP TABLE IF EXISTS tag;
DROP TABLE IF EXISTS document_tag;

CREATE TABLE document (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    name CHAR(64) NOT NULL,
    path CHAR(64),
    description TEXT
);

CREATE TABLE tag (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name CHAR(64) NOT NULL,
    description TEXT
);

CREATE TABLE document_tag (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    document_id INTEGER NOT NULL,
    tag_id INTEGER NOT NULL,
    FOREIGN KEY(document_id) REFERENCES document(id),
    FOREIGN KEY(tag_id) REFERENCES tag(id)
);

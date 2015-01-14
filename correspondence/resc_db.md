
# On the need for a resource database

## Resources

### Types

### Location

## Dispatch Location

### Location

## Who owns what?

## Simple implementation

    CREATE TABLE agency(pkid INTEGER NOT NULL AUTOINCREMENT,
                        name TEXT NOT NULL);
    INSERT INTO agency VALUES("BIA");
    INSERT INTO agency VALUES("BLM");
    INSERT INTO agency VALUES("FWS");
    INSERT INTO agency VALUES("NPS");
    INSERT INTO agency VALUES("FS");

    CREATE TABLE resctype(pkid INTEGER NOT NULL AUTOINCREMENT,
                          name TEXT,
                          kind TEXT NOT NULL, category TEXT,
                          type INTEGER);
    CREATE TABLE station(pkid INTEGER NOT NULL AUTOINCREMENT,
                         name TEXT, agency TEXT NOT NULL,
                         X REAL NOT NULL, Y REAL NOT NULL);
    CREATE TABLE resource(pkid INTEGER NOT NULL AUTOINCREMENT,
                          name TEXT, agency TEXT NOT NULL,
                          kind TEXT NOT NULL, category TEXT,
                          type INTEGER);
    CREATE TABLE etype(pkid INTEGER NOT NULL AUTOINCREMENT,
                       event TEXT NOT NULL);
    INSERT INTO etype VALUES("arrival"),("departure"),("available"),
                            ("unavailale");
    CREATE TABLE event(pkid INTEGER NOT NULL AUTOINCREMENT,
                       timestamp TEXT NOT NULL, resource INTEGER NOT NULL,
                       station INTEGER NOT NULL, etype INTEGER NOT NULL);





-- https://www.w3schools.com/sql/sql_datatypes.asp
-- https://learn.microsoft.com/en-us/sql/connect/jdbc/using-basic-data-types?view=sql-server-ver16
CREATE TABLE all_char_types_table (
    varcharColumn VARCHAR(255),
    charColumn CHAR(10),
    textColumn TEXT, -- large variable-length character or binary data.
);

CREATE TABLE all_unicode_types_table (
    nvarcharColumn NVARCHAR(100), -- variable-length Unicode character
    ncharColumn NCHAR(5), -- fixed-length Unicode character data type
    ntextColumn NTEXT --  large variable-length Unicode character data.
);

CREATE TABLE integer_types_table (
    tinyint_column TINYINT,
    smallint_column SMALLINT,
    int_column INT,
    bigint_column BIGINT
);

CREATE TABLE bit_types_table (
    bit_column BIT
);

CREATE TABLE all_numeric_types_table (
    decimal_column DECIMAL(18, 2),
    numeric_column NUMERIC(18, 2),
    float_column FLOAT,
    real_column REAL,
    smallmoney_column SMALLMONEY,
    money_column MONEY
);


CREATE TABLE datetime_types_table (
    -- Only the date without the time. From January 1, 0001 to December 31, 9999
    -- java.sql.date
    date_column DATE,

    -- Only the time without the date with an accuracy of 100 nanoseconds
    -- java.sql.Time
    -- To use java.sql.Time with the time SQL Server type, you must set the sendTimeAsDatetime connection property to false.
    time_column TIME,

    -- Both date and time. From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds
    -- https://stackoverflow.com/a/72440951/4463900
    -- that type is akin to the SQL standard type TIMESTAMP WITHOUT TIME ZONE, and maps to the Java class LocalDateTime
    datetime_column DATETIME,

    -- Both date and time. From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute
    -- https://stackoverflow.com/a/72440951/4463900
    -- that type is akin to the SQL standard type TIMESTAMP WITHOUT TIME ZONE, and maps to the Java class LocalDateTime
    smalldatetime_column SMALLDATETIME,

    -- From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds
    -- https://stackoverflow.com/a/72440951/4463900
    -- that type is akin to the SQL standard type TIMESTAMP WITHOUT TIME ZONE, and maps to the Java class LocalDateTime.
    -- DATETIME2(3) means up to three digits of fractional seconds precision.
    -- Default precision is 7
    datetime2_column DATETIME2,

    -- The same as datetime2 with the addition of a time zone offset
    -- JDBC driver reads back as microsoft.sql.DateTimeOffset.
    -- DATETIMEOFFSET(3) means up to three digits of fractional seconds precision.
    -- Default precision is 7
    datetimeoffset_column DATETIMEOFFSET(3),
    -- Stores a unique number that gets updated every time a row gets created or modified.
    -- The timestamp value is based upon an internal clock and does not correspond to real time.
    -- Each table may have only one timestamp variable
    -- byte[]
    timestamp_column TIMESTAMP
);
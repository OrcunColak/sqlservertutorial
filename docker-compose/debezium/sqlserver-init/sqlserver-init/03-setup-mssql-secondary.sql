CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Password!';
CREATE LOGIN mirror WITH PASSWORD = 'Password!';
CREATE USER mirror FOR LOGIN mirror;
CREATE CERTIFICATE mirror
    AUTHORIZATION mirror
    FROM FILE = '/etc/sqlserver/debezium.cer'
    WITH PRIVATE KEY (
    FILE = '/etc/sqlserver/debezium.key',
    DECRYPTION BY PASSWORD = 'Password!'
);
CREATE ENDPOINT mirror
	STATE = STARTED
	AS TCP (LISTENER_IP = (0.0.0.0), LISTENER_PORT = 5022)
	FOR DATA_MIRRORING (
                AUTHENTICATION = CERTIFICATE mirror,
		ROLE = ALL,
		ENCRYPTION = REQUIRED ALGORITHM AES
        );
GRANT CONNECT ON ENDPOINT::mirror TO mirror;
ALTER AVAILABILITY GROUP dbz JOIN WITH (CLUSTER_TYPE = NONE);
ALTER AVAILABILITY GROUP dbz GRANT CREATE ANY DATABASE;
GO
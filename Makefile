dc=docker-compose
dbs=postgres
dump-file=*.sql

docker-up:
	docker compose up

docker-down:
	docker compose down

docker-psql-pg_restore:
	docker compose exec $(dbs) pg_restore -U postgres -d postgres -1 /docker-entrypoint-initdb.d/dump.sql -v --clean --if-exists --no-owner --no-privileges

init:
	docker compose up -d
	make docker-psql-pg_restore
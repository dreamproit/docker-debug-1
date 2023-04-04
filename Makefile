define include_dot_env_file
    $(eval include ${PWD}/.env)
endef

env_setup:
	cp ./.env.example ./.env
build:
	@docker compose -f ${PWD}/docker-compose.yaml build
up:
	@docker compose -f ${PWD}/docker-compose.yaml up -d
restart:
	@docker compose -f ${PWD}/docker-compose.yaml restart
stop:
	@docker compose -f ${PWD}/docker-compose.yaml stop
down:
	@docker compose -f ${PWD}/docker-compose.yaml down

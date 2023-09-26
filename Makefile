SHELL := /usr/bin/env bash

prep:
	bash ./scripts/prep-data.sh

up:
	sudo chown -R 30000:30000 ./{config,data}
	docker compose up -d
	docker compose logs -f

down:
	docker compose down
	sudo chown -R "$$(id -u):$$(id -g)" ./{config,data}

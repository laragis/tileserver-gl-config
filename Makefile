up:
	docker compose up -d

down-v:
	docker compose down -v

up-service:
	docker stack deploy -c docker-stack.yml tileserver


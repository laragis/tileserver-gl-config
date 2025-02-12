up:
	docker compose up -d

down-v:
	docker compose down -v

up-service:
	docker stack deploy -c docker-stack.yml tileserver

backup-service-data:
	mkdir -p ./backup
	docker run --rm \
		-v tileserver-gl-config_tileserver_gl_data:/data \
		-v $(shell pwd)/backup:/backup \
		busybox \
		tar -czvf /backup/tileserver_gl_data_backup.tar.gz -C /data .



run:
	docker run -d -p 8080:4200 -v logs:/app/data --env-file ./config/.env --rm --name logsapp logsapp
stop:
	docker stop logsapp
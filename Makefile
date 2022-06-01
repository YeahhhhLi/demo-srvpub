build-image:
	docker build -t demo-srvpub .

deploy-service: build-image
	docker-compose up -d
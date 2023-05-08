COMPOSE_PROJECT_NAME := application

prod:
	docker-compose --env-file=./src/.env \
 		-f infrastructure/docker-compose.yml \
		up -d --build --remove-orphans
	docker exec -it application_php81 mkdir -p "../infrastructure/db"
	docker exec -it application_php81 chmod -R 777 .
	docker exec -it application_php81 composer install
	docker exec -it application_php81 bash -c 'php artisan key:generate'
	docker exec -it application_php81 bash -c 'php artisan migrate'
	docker exec -it application_php81 bash -c 'php artisan db:seed'

test:
	docker-compose --env-file=./src/.env \
		-f infrastructure/docker-compose-test.yml \
		up -d --build --remove-orphans
	docker exec -it application_php81test mkdir -p "../infrastructure/dbtest"
	docker exec -it application_php81test chmod -R 777 .
	docker exec -it application_php81test composer install
	docker exec -it application_php81test bash -c 'php artisan key:generate'
	docker exec -it application_php81test bash -c 'php artisan migrate'
	docker exec -it application_php81test bash -c 'php artisan db:seed'
	docker exec -it application_php81test bash -c 'php artisan test'

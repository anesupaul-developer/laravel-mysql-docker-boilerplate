COMPOSE_PROJECT_NAME := application

local:
	docker-compose -f infrastructure/docker-compose.yml \
		up -d --build --remove-orphans
	#docker exec -it php81 composer install
	docker exec -it application_php81 mkdir -p "../infrastructure/mysql"
	docker exec -it application_php81 chmod -R 777 .
	docker exec -it application_php81 composer install
#	docker exec -it php81 bash -c 'php artisan migrate'
#	docker exec -it php81 bash -c 'php artisan db:seed'
#	docker exec -it php81 bash -c 'php artisan key:generate'

test:
	docker-compose -f infrastructure/docker-compose-test.yml \
		up -d --build --remove-orphans
	#docker exec -it php81test composer install
	docker exec -it application_php81test mkdir -p "../infrastructure/mysqltest"
	docker exec -it application_php81test chmod -R 777 .
	docker exec -it application_php81test composer install
#	docker exec -it php81test bash -c 'php artisan migrate:fresh'
#	docker exec -it php81test bash -c 'php artisan db:seed'

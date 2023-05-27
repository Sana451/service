startproject:
	docker-compose run --rm web-app sh -c "django-admin startproject my_service ."
startapp:
	#docker-compose run --rm web-app sh -c "python manage.py startapp clients"
	docker-compose run --rm web-app sh -c "python manage.py startapp services"
makemigrations:
	docker-compose run --rm web-app sh -c "python manage.py makemigrations"
migrate:
	docker-compose run --rm web-app sh -c "python manage.py migrate"
superuser:
	docker-compose run --rm web-app sh -c "python manage.py createsuperuser"
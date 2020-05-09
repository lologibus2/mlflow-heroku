APP_NAME=mlflow-wagon-heroku

login:
	heroku login

create_app:
	heroku create ${APP_NAME}

set_container:
	heroku stack:set container -a ${APP_NAME}

build_push:
	heroku container:push web -a ${APP_NAME}

deploy:
	heroku container:release web -a ${APP_NAME}

docker_login:
	heroku container:login

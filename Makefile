APP_NAME=mlflow-wagon-heroku

set_container:
	heroku stack:set container

push_heroku_master:
	git push heroku master

docker_login:
	heroku container:login

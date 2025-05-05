LOG_LEVEL := INFO
# LOG_LEVEL := DEBUG


BACKEND_REPO := ../moeflow-backend
FRONTEND_REPO = ../moeflow-frontend

dev-deps:
	exec docker-compose -f docker-compose.yml -f docker-compose.dev.yml up moeflow-mongodb moeflow-rabbitmq mongo-gui

frontend-dev:
	cd $(FRONTEND_REPO) && npm run build:locale && exec npm start

backend-dev:
	cd $(BACKEND_REPO) && make babel-update-mo && exec venv/bin/gunicorn -t 120 -w 4 --reload -b 127.0.0.1:5200 --log-level=${LOG_LEVEL} "app:create_app()"

backend-worker:
	cd $(BACKEND_REPO) && exec venv/bin/celery --app app.celery worker --queues default,output --hostname celery.default --loglevel=${LOG_LEVEL}

run:
	@docker-compose up

stop:
	@docker-compose down

test:
	@poetry run py.test

build: stop
	@docker-compose build app

clean:
	@rm -rf `find . -iname __pycache__`
	@rm -rf `find . -iname .pytest_cache`

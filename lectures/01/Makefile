.PHONY: run-notebook get-url build-image

IMAGE = "01_lecture"
NAME  = $(IMAGE)_$(shell id -u)

build-image:
	docker build -t $(IMAGE) .

run-notebook: run-notebook.sh build-image stop-notebook
	IMAGE=$(IMAGE) ./$<

get-url:
	docker exec $(NAME) jupyter notebook list | sed 's/0\.0\.0\.0/localhost/'

stop-notebook:
	docker stop $(NAME) || echo "Already stopped."

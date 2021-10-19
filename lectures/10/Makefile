.PHONY: run-notebook get-url build-image

IMAGE    = "10_lecture"
NAME     = $(IMAGE)_$(shell id -u)
NAME_LAB = $(IMAGE)_$(shell id -u)_lab

build-image:
	docker build -t $(IMAGE) .

run-notebook: run-notebook.sh build-image stop-notebook
	IMAGE=$(IMAGE) ./$<

run-lab: run-lab.sh build-image stop-lab
	IMAGE=$(IMAGE) ./$<

get-url:
	docker exec $(NAME) jupyter notebook list

get-url-lab:
	docker exec $(NAME_LAB) jupyter lab list

stop-notebook:
	docker stop $(NAME) || echo "Already stopped."

stop-lab:
	docker stop $(NAME_LAB) || echo "Already stopped."

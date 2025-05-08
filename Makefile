build:
	docker build -t course-website .

run:
	docker run -p 4000:4000 -p 35729:35729 -v ./app course-website
stop:
	docker stop $(docker ps -q --filter ancestor=course-website)


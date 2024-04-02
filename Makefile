all:
	sudo docker-compose ./srcs/docker-compose.yml up

clean:
	sudo docker-compose ./srcs/docker-compose.yml down

re:	clean all

.PHONY:	all clean re
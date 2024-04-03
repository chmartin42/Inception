all:
	sudo docker-compose -f ./srcs/docker-compose.yml up

clean:
	sudo docker-compose -f ./srcs/docker-compose.yml down

fclean: clean
	sudo docker system prune -af --volumes
	sudo docker volume rm $$(docker volume ls -q) || echo "No volume detected"
	sudo rm -rf /home/chmartin/data

re:	fclean all

.PHONY:	all clean re

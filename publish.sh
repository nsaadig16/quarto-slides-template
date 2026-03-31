#!/bin/bash

docker compose down

if [[ ! -e "${HOME}/.gitconfig" ]]; then
    echo -e "\033[31mGit configuration doesn't exist or can't be read\033[0m"
    exit 1
fi

if [[ ! -e "${HOME}/.ssh" ]]; then
    echo -e "\033[31mSSH credentials doesn't exist!\033[0m"
    exit 1
fi

docker compose --file "publish-context/publish.docker-compose.yml" up --build --detach
docker compose exec publish sh -c "quarto publish gh-pages"
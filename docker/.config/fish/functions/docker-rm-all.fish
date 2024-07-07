function docker-rm-all
  echo "──→ Removing all containers"
  command docker container list --all --quiet | xargs docker container remove --force
  echo "──→ Removing unused volumes"
  command docker volume prune --force
  echo "──→ Removing unused networks"
  command docker network prune --force
end

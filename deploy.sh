#!/bin/bash
#deployer script v1.0
if [ $# == 0 ]
then
        echo "Please set arguments prod or dev" && exit 1
fi

function git_commit () {

git commit -m "deploy.sh script commit"
}


for args in "$@"
do
        case $args in
                prod) git checkout master && npm run build  deployer@papik-prod:/var/www/papik.conf && git_commit;;
                dev) git checkout development && npm run build-dev  deployer@papik-prod:/var/www/dev.papik.conf && git_commit;;
        esac
done


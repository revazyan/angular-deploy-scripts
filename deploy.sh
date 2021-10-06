#!/bin/bash
#deployer script v1.0
if [ $# == 0 ]
then 
	echo "Please set arguments prod or dev" && exit 1
fi

function prod_building () {
git checkout master
deployer@papik-prod:/var/www/papik.conf


}


for args in "$@"
do
        case $args in
                --prod) npm run build  deployer@papik-prod:/var/www/papik.conf ;;
		--dev)  npm run build-dev  deployer@papik-prod:/var/www/dev.papik.conf ;;
        esac
done



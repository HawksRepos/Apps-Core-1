#/bin/bash
rev="/opt/coreapps/apps/templates/rutorrent/rev/remove_plugins.sh"
container=rutorrent
bash="bash remove.sh "
pre="apk add wget php7-ctype "

precmd="docker exec $container $pre"
final_cmd="docker cp -a $rev  $container:remove.sh"
second_cmd="docker exec $container $bash"

eval $pre_cmd
eval $final_cmd
eval $second_cmd

exit 0

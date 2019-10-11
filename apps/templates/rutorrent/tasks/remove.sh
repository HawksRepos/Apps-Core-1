#/bin/bash
##remove troublemaker plugins

1=docker exec rutorrent
dir=app/rutorrent/plugins

$1 apk update -y
$1 apk upgrade

$1 apk install git -y

$1 rm -rf $dir/_cloudflare/
$1 rm -rf $dir/ipad/
$1 rm -rf $dir/rssurlrewrite/
$1 rm -rf $dir/extsearch/
$1 rm -rf $dir/spectrogram/
$1 rm -rf $dir/retrackers/
$1 rm -rf $dir/geoip/
$1 rm -rf $dir/lookat/
$1 rm -rf $dir/cookies/
$1 rm -rf $dir/loginmgr/
$1 rm -rf $dir/screenshots/
$1 rm -rf $dir/rutracker_check/
$1 rm -rf $dir/mobile/

##clone mobile new
$1 git clone https://github.com/xombiemp/rutorrentMobile.git $dir/mobile

echo "done"

exit 0

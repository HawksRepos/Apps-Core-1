#/bin/bash
##remove troublemaker plugins

dir=app/rutorrent/plugins

apk update -y
apk upgrade

apk install git -y

rm -rf $dir/_cloudflare/
rm -rf $dir/ipad/
rm -rf $dir/rssurlrewrite/
rm -rf $dir/extsearch/
rm -rf $dir/spectrogram/
rm -rf $dir/retrackers/
rm -rf $dir/geoip/
rm -rf $dir/lookat/
rm -rf $dir/cookies/
rm -rf $dir/loginmgr/
rm -rf $dir/screenshots/
rm -rf $dir/rutracker_check/
rm -rf $dir/mobile/

##clone mobile new
git clone https://github.com/xombiemp/rutorrentMobile.git $dir/mobile

exit 0

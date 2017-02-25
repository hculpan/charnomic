!#/bin/sh

pushd .
cd _site
zip -r9 site.zip *
echo "Copying to culpan.net..."
scp site.zip root@culpan.net:/root
#scp rdeploy.sh root@culpan.net:/root

echo "Excuting deploy on culpan.net"
ssh root@culpan.net 'bash -s' < ../rdeploy.sh

popd 

#!/bin/sh

jekyll build

pushd .
cd _site
zip -r9 site.zip *
echo "Copying to charnomic.com..."
scp site.zip root@charnomic.com:/root

echo "Excuting deploy on charnomic.com"
ssh root@charnomic.com 'bash -s' < ../rdeploy.sh

popd

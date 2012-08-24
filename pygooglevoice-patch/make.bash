#!/bin/bash -e

echo "This will download pygooglevoice-0.5, patch the service URL, and attempt"
echo "to install it with the python on your path."
echo ""
echo -n "Is that ok? (Y/n): "

read ok

if [[ $ok == "n" || $ok == "N" ]]; then
    exit
fi

echo ""
echo "==> Downloading pygooglevoice-0.5"
wget http://pygooglevoice.googlecode.com/files/pygooglevoice-0.5.tar.gz

echo ""
echo "==> Extracting source"
tar xvf ./pygooglevoice-0.5.tar.gz

pushd pygooglevoice-0.5

echo ""
echo "==> Patching source"
patch -p1 < ../auth-fix.patch

echo ""
echo "==> Installing library"
sudo python ./setup.py install

popd

echo "Done!"

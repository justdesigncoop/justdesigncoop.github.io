#! /bin/sh

rm -rf node_modules package-lock.json
npm install

rm -rf _sass/bootstrap
mkdir -p _sass/bootstrap
cp -r node_modules/bootstrap/scss/* _sass/bootstrap

mkdir -p assets/js

rm assets/js/jquery.min.js
cp node_modules/jquery/dist/jquery.min.js assets/js
cp node_modules/jquery/dist/jquery.min.map assets/js

rm assets/js/popper.min.js
cp node_modules/popper.js/dist/umd/popper.min.js assets/js
cp node_modules/popper.js/dist/umd/popper.min.map assets/js

rm assets/js/bootstrap.bundle.min.js
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.js assets/js
cp node_modules/bootstrap/dist/js/bootstrap.bundle.min.map assets/js

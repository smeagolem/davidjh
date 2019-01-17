#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
echo 'davidjh.com' > CNAME

git init
git add -A
git commit -m ':rocket: deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:smeagolem/davidjh.git master:gh-pages

cd -

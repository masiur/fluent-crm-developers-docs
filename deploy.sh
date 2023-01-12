#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd src/.vuepress/dist

# create new git repo from scratch with a single commit containing the generated files
git init
git add -A
git commit -m 'deploy'

# Force push to the "publishing source" of your GitHub pages site
# in this case, the gh-pages branch
git push -f git@github.com:masiur/fluent-crm-developers-docs.git master:gh-pages

# Back to previous directory (the root of your repo)
cd -

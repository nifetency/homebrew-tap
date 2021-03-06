#!/bin/bash

set -ex

mkdir -p ./tmp

curl "https://docs.nife.io/releases/darwin-x64" > tmp/manifest.json
URL=$(node -p "require('./tmp/manifest.json').gz")
SHA=$(node -p "require('./tmp/manifest.json').sha256gz")
VERSION=$(node -p "require('./tmp/manifest.json').version")
CHANNEL=$(node -p "require('./tmp/manifest.json').channel")

echo "Updating $VERSION on $CHANNEL"
echo "  URL: $URL"
echo "  SHA: $SHA"

sed -i "s~url \".*\"~url \"${URL}\"~" "Formula/nifejs.rb"
sed -i "s~sha256 \".*\"~sha256 \"${SHA}\"~" "Formula/nifejs.rb"
sed -i "s~version \".*\"~version \"${VERSION}\"~" "Formula/nifejs.rb"

if [[ -n $(git status -s) ]]; then
  git add Formula/nifejs.rb

  sh -c "git remote add github 'https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/$GITHUB_REPOSITORY.git' \
        && git config --global user.name 'nida' \
        && git config --global user.email 'nida.sahar@gmail.com' \
        && git commit -m 'nife v$VERSION' \
        && git push github HEAD:${GITHUB_REF}"
else 
  echo 'latest version already released, done'
fi

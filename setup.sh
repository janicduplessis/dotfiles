printenv

if [ -n "$NPM_ACCESS_TOKEN" ]; then
  echo "//registry.npmjs.org/:_authToken=$NPM_ACCESS_TOKEN" > ~/.npmrc
fi

git config --global push.default current

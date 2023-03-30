
echo "Fetch Submodules"
git clone --depth 1 https://github.com/Think-Yoruba-First/omf-ui ui
git clone --depth 1 https://github.com/Think-Yoruba-First/omf-api api

echo "UI ref is"
git --git-dir=ui/.git rev-parse HEAD
echo "API ref is"
git --git-dir=api/.git rev-parse HEAD

echo "Install UI"
yarn --cwd ui install --frozen-lockfile

echo "Install API"
yarn --cwd api install --frozen-lockfile
yarn global add @nestjs/cli

echo "FINISHED prebuild"

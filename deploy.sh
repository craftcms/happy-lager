if [ -z "$GIT_BRANCH" ]
then
  GIT_BRANCH=master
fi

if [ -z "PHP_VERSION" ]
then
  PHP_VERSION=7.2
fi

git fetch --all
git reset --hard "origin/$GIT_BRANCH"
git pull origin $GIT_BRANCH

composer install --no-interaction --prefer-dist --optimize-autoloader

npm ci
npm run build

./craft migrate/all
./craft project-config/sync
./craft clear-caches/all

sudo /bin/systemctl reload "php${PHP_VERSION}-fpm.service"

if [ -z "$SITE_DIR" ]
then
  SITE_DIR=.
fi

if [ -z "$GIT_BRANCH" ]
then
  GIT_BRANCH=master
fi

if [ -z "PHP_VERSION" ]
then
  PHP_VERSION=7.2
fi

cd $SITE_DIR
git fetch --all
git reset --hard "origin/$GIT_BRANCH"
git pull origin $GIT_BRANCH

composer install --no-interaction --prefer-dist --optimize-autoloader

npm ci
npm run build

./craft migrate/all
./craft project-config/sync
./craft clear-caches/all

echo "" | sudo -S service "php${PHP_VERSION}-fpm" reload

#!/bin/sh
#export COMPOSER_HOME="$OPENSHIFT_DATA_DIR/.composer"

# if [ ! -f "$OPENSHIFT_DATA_DIR/composer.phar" ]; then
#     curl -s https://getcomposer.org/installer | php -- --install-dir=$OPENSHIFT_DATA_DIR
# else
#     	php $OPENSHIFT_DATA_DIR\composer.phar self-update
# fi
cd /home/carot/repo/php
pwd
# git clone https://github.com/nyeholt/silverstripe-webservices

# php framework/cli-script.php dev/build flush=1
php framework/cli-script.php rabbit flush=1

php $OPENSHIFT_REPO_DIR/php/framework/cli-script.php dev/tasks/SiteTreeFullBuildEngine urls=/carot/home,/carot/our-team/leaders/index.html,/carot/our-team/team/index.html
php $OPENSHIFT_REPO_DIR/php/framework/cli-script.php dev/tasks/BuildStaticCacheFromQueue

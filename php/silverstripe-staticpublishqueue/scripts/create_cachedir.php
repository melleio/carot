<?php
if (!file_exists('web_docs')) {
	mkdir('web_docs'); //create a new cache dir
}
chmod('web_docs',0777);    //make sure it is readable by the web-server user
echo "Success: created 'cache' folder that contains the statically published files\n";
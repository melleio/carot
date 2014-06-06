<?php

     	#doc
	#	classname:	TwitterTask
        #	scope:          PUBLIC
        #
	#/This task checks twitter ever hour for the latest updates

class SimpleTask extends Controller {

    /**
     * cold call number
     * cronjobs.
     *
     * @var boolean
     */
    protected $toCall = false;

    /**
     * cold call number
     * cronjobs.
     *
     * @var boolean
     */
    protected $enabled = true;

    private static $allowed_actions = array(
        'index',
        //'import',
        //'runFirst',
        'clean',
        'flickr',
        //'clearData',
        //'relatives'
    );

    public function clean($arguments){
        $cat = StaticPagesQueue::get();
        foreach ($cat as $c) {
            # code...
            $c->delete();
            var_dump($c->Link);
        }
        exit;
    }

    public function index($arguments){
        $vars = $arguments->requestVars();
        $cat = SiteTree::get();
        foreach ($cat as $c) {
            # code...
            var_dump($c->Link());
        }
        exit;
    }

    public function flickr(){
        $params = array(
            'api_key'   => '24f9fae4021eea5df09c027552c807d7',
            'method'    => 'flickr.people.getPhotos',
            'user_id'   => 'phillypolice',
            'format'    => 'php_serial',
        );

        $yt = new RestfulService('https://api.flickr.com/services/rest/', 3000);
        $h = array();
        $response = $yt->request($subURL = '', $method = "POST", $data = $params, $h, $curlOptions = array());
        $status = $response->getStatusCode();
        if ($status != 200){
            user_error($status.": ".$response->getStatusDescription(), E_USER_ERROR);
            $dataarray = "fail";
        }else{
            $data = $response->getBody();
            $d = unserialize($data);
            $page = DigitalPage::get()->First();
            foreach ($d['photos']['photo'] as $p) {
                $i = ImageItem::get()->filter(array('flickrId'=>(int) $p['id']))->First();
                if(!$i){
                    $i = new ImageItem();
                    var_dump('New Image!');
                }else{
                    var_dump('image update');
                }
                
                $i->flickrId = $p['id'];
                $i->owner = $p['owner'];
                $i->secret = $p['secret'];
                $i->server = $p['server'];
                $i->farm = $p['farm'];
                $i->Title = (is_numeric($p['title'])) ? 'Untitled' : $p['title'];
                $i->isPublic = $p['ispublic'];
                $i->write();
                //Write to digital page
                $page->Flickr()->add($i);
                print_r('Flickr Item wrote: '.$i->flickrId.PHP_EOL);
            }
        }
    }
}
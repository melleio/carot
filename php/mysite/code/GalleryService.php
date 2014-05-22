<?php

     	#doc
	#	classname:	TwitterTask
        #	scope:          PUBLIC
        #
	#/This task checks twitter ever hour for the latest updates

class GalleryService implements WebServiceable {

    public function __construct() {
        
    }
    
    public function publicWebMethods() {
        return array(
            'photos'      => 'GET',
        );
    }

    public function myMethod($param) {
        return array(
            'SomeParam'         => 'Goes here',
            'Boolean'           => true,
            'Return'            => $param,
        );
    }
       

    public function photos($pageID){
        $d = ResearchPage::get()->filter(array('ID'=>$pageID))->First();
        $a = array();
        foreach ($d->GalleryImages() as $images) {
            # code...
            $t = array('url'=>$images->Image()->AbsoluteURL);
            array_push($a,$t);
        }
        return array(
            'photos' => $a);
    }
}
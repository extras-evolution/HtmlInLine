//<?php
/** 
 * HtmlInLine 
 * 
 * HtmlInLine plugin for MODX Evo
 *
 * @category    plugin 
 * @version     1.1 
 * @license     http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL) 
 * @internal    @properties 
 * @internal    @events OnWebPagePrerender 
 * @internal    @modx_category Content 
 * @internal    @legacy_names HtmlInLine
 * @internal    @installset base
 */
//author Borisov Evgeniy aka Agel Nash (agel-nash@xaker.ru)

$e =&$modx->event;
switch ($e->name) {
    case "OnWebPagePrerender":{
        if($modx->documentObject['searchable']==1){
            $content = $modx->documentOutput;
            $content= preg_replace('|\s+|', ' ', $content);
            $modx->documentOutput = $content;
        }
        break;
    }
}

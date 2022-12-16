<?php
 
 session_start();
 unset($info["id"]);
 unset($info['username']);
 session_destroy();
 
?>
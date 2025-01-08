<?php
if (isset($_REQUEST["q"])) {
    echo $_REQUEST["q"];
    die();
}

phpinfo();

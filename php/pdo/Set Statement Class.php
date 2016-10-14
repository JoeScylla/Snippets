<?php
$connectiopn = new \PDO("...dsn..");
$connectiopn->setAttribute(\PDO::ATTR_STATEMENT_CLASS, ["Fully\\Qualified\\Class\\Name", [$connectiopn]]);
?>
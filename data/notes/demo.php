<!-- An example php script for demonstrating GET vs POST
  
  In order to use this script, it must reside on a web server with PHP
  support. The details of writing PHP code are beyond the scope of this
  course, but note that the name-value pairs from an HTML form are passed 
  to the PHP script for server-side processing.
-->

<?php

$txt = "";

if($_GET["txt"])
{       
        $txt= $_GET["txt"];
        echo ("<h2>Get request detected</h2>");

} else if($_POST["txt"]) {

        $txt= $_POST["txt"];
        echo "<h2>Post request detected<br></h2>";

}

echo "You entered the following: ". $txt. "<br>";

?>




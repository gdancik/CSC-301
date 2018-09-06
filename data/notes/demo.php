<!-- An example php script for demonstrating GET vs POST -->

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




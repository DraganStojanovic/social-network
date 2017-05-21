//Skripta za ucitavanje samo liste prijatelja jer korisnici nisu mogli, json fajl nije dobar
<?php
ini_set("display_errors", "1");
error_reporting(E_ALL);
$conn = mysqli_connect("localhost", 'root', 'lukicluke') or die(mysql_error());
mysqli_select_db($conn, "social") or die(mysql_error());

$url = 'http://dev.30hills.com/data.json';
$JSON = file_get_contents($url);

$data = json_decode($JSON, true);

foreach ($data as $record) {
$id = $record['id'];

    foreach ($record['friends'] as $f) {
      $upit = "INSERT INTO connected (userId,friendId)
                VALUES($id,$f);";
      $result = mysqli_query($conn,$upit) or die (mysqli_error($conn));
    }
}

<?php
$conn = new mysqli('localhost', 'root', '');

if (!$conn) {
    die('Neuspesno');
}

if (!mysqli_select_db($conn, 'itehdomaci1')) {
    echo 'pogresna baza';
}
?>
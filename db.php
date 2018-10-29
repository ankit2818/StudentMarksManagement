<?php

    function createConnection() {
        $dbUsername = 'root';
        $dbPassword = '';
        $dbHost = 'localhost';
        $dbDatabaseName = 'markmanagement';
        return mysqli_connect($dbHost, $dbUsername, $dbPassword, $dbDatabaseName);
    }

    function closeConnection($conn) {
        $conn->close();
    }

?>

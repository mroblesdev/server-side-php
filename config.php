<?php

/**
 * Conexión a base de datos de MySQL con PHP
 *
 * @author mroblesdev
 * @link https://github.com/mroblesdev/server-side-php
 * @license: MIT
 */


// Creando una nueva conexión a la base de datos.
$conn = new mysqli("127.0.0.1", "root", "password", "almacen");

// Comprobando si hay un error de conexión.
if ($conn->connect_error) {
    echo 'Error de conexion ' . $conn->connect_error;
    exit;
}

<?php
/*
* Script: Conexión a base de datos de MySQL con PHP
* Autor: Marco Robles
* Team: Códigos de Programación
*/


/* Creando una nueva conexión a la base de datos. */
$conn = new mysqli("127.0.0.1", "root", "password", "almacen");

/* Comprobando si hay un error de conexión. */
if ($conn->connect_error) {
    die('Error de conexion ' . $conn->connect_error);
}

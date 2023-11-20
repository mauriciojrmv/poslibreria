<?php

putenv('GOOGLE_APPLICATION_CREDENTIALS=C:\xampp\htdocs\poslibreria-bbdc-120f4c51.json');

class Conexion{

	static public function conectar(){

		$link = new PDO("mysql:host=localhost;dbname=pos",
			            "root",
			            "");

		$link->exec("set names utf8");

		return $link;

	}

}
<?php
include_once 'config.php';

$request_method = $_SERVER["REQUEST_METHOD"];

switch ($request_method) {
    case 'GET':
        if (!empty($_GET["id"])) {
            $id = intval($_GET["id"]);
            get_item($id);
        } else {
            get_items();
        }
        break;
    case 'POST':
        insert_item();
        break;
    case 'PUT':
        if (!empty($_GET["id"])) {
            $id = intval($_GET["id"]);
            update_item($id);
        } else {
            header("HTTP/1.1 400 Bad Request");
            echo json_encode(array("message" => "Falta el parámetro 'id'"));
        }
        break;
    case 'DELETE':
        if (!empty($_GET["id"])) {
            $id = intval($_GET["id"]);
            delete_item($id);
        } else {
            header("HTTP/1.1 400 Bad Request");
            echo json_encode(array("message" => "Falta el parámetro 'id'"));
        }
        break;
    default:
        header("HTTP/1.1 405 Method Not Allowed");
        echo json_encode(array("message" => "Método no permitido"));
        break;
}

function get_items()
{
    global $conn;
    $query = "SELECT * FROM items";
    $response = array();
    $result = $conn->query($query);
    while ($row = $result->fetch_assoc()) {
        $response[] = $row;
    }
    header('Content-Type: application/json');
    echo json_encode($response);
}

function get_item($id)
{
    global $conn;
    $query = "SELECT * FROM items WHERE id = $id";
    $result = $conn->query($query);
    if ($result->num_rows == 1) {
        $row = $result->fetch_assoc();
        header('Content-Type: application/json');
        echo json_encode($row);
    } else {
        header("HTTP/1.1 404 Not Found");
        echo json_encode(array("message" => "Elemento no encontrado"));
    }
}

function insert_item()
{
    global $conn;
    $data = json_decode(file_get_contents('php://input'), true);
    $name = $data['name'];
    $description = $data['description'];
    $query = "INSERT INTO items (name, description) VALUES ('$name', '$description')";
    if ($conn->query($query) === TRUE) {
        header("HTTP/1.1 201 Created");
        echo json_encode(array("message" => "Elemento creado con éxito"));
    } else {
        header("HTTP/1.1 500 Internal Server Error");
        echo json_encode(array("message" => "Error al crear el elemento: " . $conn->error));
    }
}

function update_item($id)
{
    global $conn;
    $data = json_decode(file_get_contents('php://input'), true);
    $name = $data['name'];
    $description = $data['description'];
    $query = "UPDATE items SET name = '$name', description = '$description' WHERE id = $id";
    if ($conn->query($query) === TRUE) {
        header("HTTP/1.1 200 OK");
        echo json_encode(array("message" => "Elemento actualizado con éxito"));
    } else {
        header("HTTP/1.1 500 Internal Server Error");
        echo json_encode(array("message" => "Error al actualizar el elemento: " . $conn->error));
    }
}

function delete_item($id)
{
    global $conn;
    $query = "DELETE FROM items WHERE id = $id";
    if ($conn->query($query) === TRUE) {
        header("HTTP/1.1 200 OK");
        echo json_encode(array("message" => "Elemento eliminado con éxito"));
    } else {
        header("HTTP/1.1 500 Internal Server Error");
        echo json_encode(array("message" => "Error al eliminar el elemento: " . $conn->error));
    }
}

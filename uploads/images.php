if ($action === 'delete') {
    $id = $_POST['id'];

    $sql = "SELECT image FROM inventory WHERE id = $id";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (file_exists($row['image'])) {
            unlink($row['image']); // Hapus file gambar
        }
    }

    $sql = "DELETE FROM inventory WHERE id = $id";
    if ($conn->query($sql) === TRUE) {
        echo json_encode(['message' => 'Item deleted successfully']);
    } else {
        echo json_encode(['message' => 'Error: ' . $conn->error]);
    }
}

<?php
$server = 'localhost';
$user = 'root';
$pass = '';
$database = 'giaysneaker';

$conn = new mysqli($server, $user, $pass, $database);
if ($conn->connect_error) {
    die('Kết nối thất bại: ' . $conn->connect_error);
} else {
    echo 'Đã kết nối thành công<br>';
}
$sql = "SELECT * FROM sanpham";
$result = $conn->query($sql);


$sanpham_data = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $sanpham_data[] = $row;
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title>Danh sách sản phẩm</title>
</head>

<body>
    <div class="container my-4">
        <h1 class="text-center mb-4">Danh sách sản phẩm</h1>
        <div class="row">
            <?php
            if (!empty($sanpham_data)) {
                foreach ($sanpham_data as $sanpham) {
                    echo '<div class="col-md-4 col-sm-6 mb-4">';
                    echo '<div class="card h-100">';
                    echo '<img src="' . $sanpham['hinh'] . '" class="card-img-top" alt="' . htmlspecialchars($sanpham['tensp']) . '">';
                    echo '<div class="card-body">';
                    echo '<h5 class="card-title">' . htmlspecialchars($sanpham['tensp']) . '</h5>';
                    echo '<p class="card-text">Giá: ' . number_format($sanpham['gia'], 0, ',', '.') . ' VND</p>';
                    echo '</div>';
                    echo '<div class="card-footer text-center">';
                    echo '<a href="#" class="btn btn-primary">Xem chi tiết</a>';
                    echo '</div>';
                    echo '</div>';
                    echo '</div>';
                }
            } else {
                echo '<p class="text-center">Không có sản phẩm nào để hiển thị.</p>';
            }
            ?>
        </div>
    </div>
</body>

</html>
